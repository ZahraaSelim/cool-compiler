package optimization;

import intermediate.*;
import java.util.*;

public class LoopOptimizer implements OptimizationPass {
    private static final int UNROLL_FACTOR = 4;

    @Override
    public List<TACInstruction> optimize(List<TACInstruction> instructions) {
        List<LoopAnalyzer.Loop> loops = LoopAnalyzer.findLoops(instructions);
        List<TACInstruction> optimized = new ArrayList<>(instructions);

        for (LoopAnalyzer.Loop loop : loops) {
            optimized = applyLICM(optimized, loop);
            optimized = applyUnrolling(optimized, loop);
        }

        return optimized;
    }

    private List<TACInstruction> applyLICM(List<TACInstruction> instructions, LoopAnalyzer.Loop loop) {
        Set<String> defined = new HashSet<>();
        for (int idx : loop.bodyIndices) {
            TACInstruction instr = instructions.get(idx);
            if (instr.getResult() != null) {
                defined.add(instr.getResult());
            }
        }

        List<TACInstruction> invariants = new ArrayList<>();
        Set<Integer> invariantIndices = new HashSet<>();
        for (int idx : loop.bodyIndices) {
            TACInstruction instr = instructions.get(idx);
            if (isInvariant(instr, defined)) {
                invariants.add(instr);
                invariantIndices.add(idx);
            }
        }

        if (invariants.isEmpty()) {
            return instructions;
        }

        String preHeaderLabel = "L_preheader_" + UUID.randomUUID().toString().replace("-", "");
        List<TACInstruction> newInstructions = new ArrayList<>();
        int insertPoint = loop.headerIndex;

        for (int i = 0; i < instructions.size(); i++) {
            if (i == insertPoint) {
                newInstructions.add(new LabelTAC(preHeaderLabel, instructions.get(i).getLineNumber()));
                newInstructions.addAll(invariants);
                newInstructions.add(new GotoTAC(loop.headerLabel, instructions.get(i).getLineNumber()));
            }
            if (!invariantIndices.contains(i)) {
                newInstructions.add(instructions.get(i));
            }
        }

        for (int i = 0; i < newInstructions.size(); i++) {
            TACInstruction instr = newInstructions.get(i);
            if (instr instanceof GotoTAC && ((GotoTAC) instr).getResult().equals(loop.headerLabel) &&
                    !loop.bodyIndices.contains(i)) {
                newInstructions.set(i, new GotoTAC(preHeaderLabel, instr.getLineNumber()));
            } else if (instr instanceof IfTAC && ((IfTAC) instr).getResult().equals(loop.headerLabel) &&
                    !loop.bodyIndices.contains(i)) {
                newInstructions.set(i, new IfTAC(((IfTAC) instr).getCondition(), preHeaderLabel, instr.getLineNumber()));
            }
        }

        return newInstructions;
    }

    private List<TACInstruction> applyUnrolling(List<TACInstruction> instructions, LoopAnalyzer.Loop loop) {
        if (loop.exitIndices.size() != 1) {
            return instructions;
        }

        int exitIdx = loop.exitIndices.iterator().next();
        TACInstruction exitInstr = instructions.get(exitIdx);
        if (!(exitInstr instanceof IfTAC)) {
            return instructions;
        }

        List<TACInstruction> body = new ArrayList<>();
        for (int idx : loop.bodyIndices) {
            if (idx != exitIdx) {
                body.add(instructions.get(idx));
            }
        }

        List<TACInstruction> unrolledBody = new ArrayList<>();
        Map<String, String> tempMap = new HashMap<>();
        for (int i = 0; i < UNROLL_FACTOR; i++) {
            for (TACInstruction instr : body) {
                TACInstruction newInstr = renameInstruction(instr, tempMap, i);
                unrolledBody.add(newInstr);
            }
        }

        String newExitLabel = "L_exit_" + UUID.randomUUID().toString().replace("-", "");
        List<TACInstruction> newInstructions = new ArrayList<>();
        int insertPoint = loop.headerIndex;

        for (int i = 0; i < instructions.size(); i++) {
            if (i == insertPoint) {
                newInstructions.add(instructions.get(insertPoint));
                newInstructions.addAll(unrolledBody);
                IfTAC ifTac = (IfTAC) instructions.get(exitIdx);
                newInstructions.add(new IfTAC(ifTac.getCondition(), newExitLabel, ifTac.getLineNumber()));
                newInstructions.add(new GotoTAC(loop.headerLabel, ifTac.getLineNumber()));
                newInstructions.add(new LabelTAC(newExitLabel, ifTac.getLineNumber()));
            } else if (i == exitIdx) {
                continue;
            } else {
                newInstructions.add(instructions.get(i));
            }
        }

        return newInstructions;
    }

    private boolean isInvariant(TACInstruction instr, Set<String> defined) {
        if (instr instanceof AssignTAC) {
            AssignTAC assign = (AssignTAC) instr;
            return !defined.contains(assign.getSource()) || assign.getSource().matches("\\d+|\".*\"|true|false");
        } else if (instr instanceof BinaryTAC) {
            BinaryTAC binary = (BinaryTAC) instr;
            return !defined.contains(binary.getLeft()) && !defined.contains(binary.getRight());
        } else if (instr instanceof UnaryTAC) {
            UnaryTAC unary = (UnaryTAC) instr;
            return !defined.contains(unary.getOperand());
        }
        return false;
    }

    private TACInstruction renameInstruction(TACInstruction instr, Map<String, String> tempMap, int iteration) {
        String newTemp = "t" + UUID.randomUUID().toString().replace("-", "").substring(0, 8) + "_" + iteration;
        if (instr instanceof AssignTAC) {
            AssignTAC assign = (AssignTAC) instr;
            String src = tempMap.getOrDefault(assign.getSource(), assign.getSource());
            tempMap.put(assign.getResult(), newTemp);
            return new AssignTAC(newTemp, src, assign.getLineNumber());
        } else if (instr instanceof BinaryTAC) {
            BinaryTAC binary = (BinaryTAC) instr;
            String left = tempMap.getOrDefault(binary.getLeft(), binary.getLeft());
            String right = tempMap.getOrDefault(binary.getRight(), binary.getRight());
            tempMap.put(binary.getResult(), newTemp);
            return new BinaryTAC(newTemp, left, binary.getOperator(), right, binary.getLineNumber());
        } else if (instr instanceof UnaryTAC) {
            UnaryTAC unary = (UnaryTAC) instr;
            String operand = tempMap.getOrDefault(unary.getOperand(), unary.getOperand());
            tempMap.put(unary.getResult(), newTemp);
            return new UnaryTAC(newTemp, unary.getOperator(), operand, unary.getLineNumber());
        }
        return instr;
    }
}