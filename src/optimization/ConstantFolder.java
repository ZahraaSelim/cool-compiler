package optimization;

import intermediate.*;
import java.util.*;

public class ConstantFolder implements OptimizationPass {
    @Override
    public List<TACInstruction> optimize(List<TACInstruction> instructions) {
        List<TACInstruction> optimized = new ArrayList<>();
        Map<String, String> constants = new HashMap<>();

        for (TACInstruction instr : instructions) {
            if (instr instanceof AssignTAC) {
                AssignTAC assign = (AssignTAC) instr;
                if (assign.getSource().matches("\\d+|\".*\"|true|false")) {
                    constants.put(assign.getResult(), assign.getSource());
                    optimized.add(instr);
                } else {
                    String src = constants.getOrDefault(assign.getSource(), assign.getSource());
                    optimized.add(new AssignTAC(assign.getResult(), src, assign.getLineNumber()));
                }
            } else if (instr instanceof BinaryTAC) {
                BinaryTAC binary = (BinaryTAC) instr;
                String left = constants.getOrDefault(binary.getLeft(), binary.getLeft());
                String right = constants.getOrDefault(binary.getRight(), binary.getRight());
                if (left.matches("\\d+") && right.matches("\\d+")) {
                    int result = evaluateBinary(Integer.parseInt(left), binary.getOperator(), Integer.parseInt(right));
                    constants.put(binary.getResult(), String.valueOf(result));
                    optimized.add(new AssignTAC(binary.getResult(), String.valueOf(result), binary.getLineNumber()));
                } else {
                    optimized.add(new BinaryTAC(binary.getResult(), left, binary.getOperator(), right, binary.getLineNumber()));
                }
            } else {
                optimized.add(instr);
            }
        }

        return optimized;
    }

    private int evaluateBinary(int left, String operator, int right) {
        switch (operator) {
            case "+": return left + right;
            case "-": return left - right;
            case "*": return left * right;
            case "/": return right != 0 ? left / right : 0;
            default: return 0;
        }
    }
}