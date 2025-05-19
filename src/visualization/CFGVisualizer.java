package visualization;

import intermediate.*;
import java.io.*;
import java.util.*;

public class CFGVisualizer {
    private StringBuilder dot;
    private int nodeCounter;
    private Map<Integer, Integer> instructionToNode;

    public CFGVisualizer() {
        dot = new StringBuilder();
        nodeCounter = 0;
        instructionToNode = new HashMap<>();
    }

    public void visualize(TACProgram program, String outputFile) {
        // Initialize DOT file
        dot.append("digraph CFG {\n");
        dot.append("    node [shape=box, style=filled, fillcolor=lightgrey];\n");

        // Process each class and method
        Map<String, Map<String, List<TACInstruction>>> classMethods = program.getClassMethods();
        for (String className : classMethods.keySet()) {
            for (Map.Entry<String, List<TACInstruction>> entry : classMethods.get(className).entrySet()) {
                String methodName = entry.getKey();
                List<TACInstruction> instructions = entry.getValue();
                dot.append("    subgraph \"cluster_").append(className).append("_").append(methodName).append("\" {\n");
                dot.append("        label=\"").append(className).append(".").append(methodName).append("\";\n");
                dot.append("        color=blue;\n");
                generateCFG(instructions);
                dot.append("    }\n");
            }
        }

        // Close DOT file
        dot.append("}\n");

        // Write to file
        try (PrintWriter writer = new PrintWriter(outputFile)) {
            writer.println(dot.toString());
            System.out.println("CFG visualized in " + outputFile);
        } catch (IOException e) {
            System.err.println("Error writing CFG visualization to " + outputFile + ": " + e.getMessage());
        }
    }

    private void generateCFG(List<TACInstruction> instructions) {
        // Build basic blocks
        List<List<TACInstruction>> basicBlocks = new ArrayList<>();
        List<TACInstruction> currentBlock = new ArrayList<>();
        Map<String, Integer> labelToIndex = new HashMap<>();
        Map<Integer, Set<Integer>> cfgEdges = new HashMap<>();

        // Identify labels
        for (int i = 0; i < instructions.size(); i++) {
            TACInstruction instr = instructions.get(i);
            if (instr instanceof LabelTAC) {
                labelToIndex.put(((LabelTAC) instr).getResult(), i);
            }
        }

        // Create basic blocks
        for (int i = 0; i < instructions.size(); i++) {
            TACInstruction instr = instructions.get(i);
            if (currentBlock.isEmpty() && !(instr instanceof LabelTAC)) {
                currentBlock.add(new LabelTAC("L_auto_" + nodeCounter++, instr.getLineNumber()));
            }
            currentBlock.add(instr);

            boolean endBlock = false;
            if (instr instanceof GotoTAC || instr instanceof IfTAC || instr instanceof ReturnTAC) {
                endBlock = true;
            } else if (i + 1 < instructions.size() && instructions.get(i + 1) instanceof LabelTAC) {
                endBlock = true;
            }

            if (endBlock) {
                basicBlocks.add(currentBlock);
                currentBlock = new ArrayList<>();
            }
        }
        if (!currentBlock.isEmpty()) {
            basicBlocks.add(currentBlock);
        }

        // Build CFG edges
        for (int i = 0; i < instructions.size(); i++) {
            cfgEdges.put(i, new HashSet<>());
            TACInstruction instr = instructions.get(i);
            if (instr instanceof GotoTAC) {
                String target = ((GotoTAC) instr).getResult();
                Integer targetIdx = labelToIndex.get(target);
                if (targetIdx != null) {
                    cfgEdges.get(i).add(targetIdx);
                }
            } else if (instr instanceof IfTAC) {
                String target = ((IfTAC) instr).getResult();
                Integer targetIdx = labelToIndex.get(target);
                if (targetIdx != null) {
                    cfgEdges.get(i).add(targetIdx);
                }
                if (i + 1 < instructions.size()) {
                    cfgEdges.get(i).add(i + 1);
                }
            } else if (!(instr instanceof ReturnTAC) && i + 1 < instructions.size()) {
                cfgEdges.get(i).add(i + 1);
            }
        }

        // Map instructions to basic blocks
        Map<Integer, Integer> instrToBlock = new HashMap<>();
        int currentInstr = 0;
        for (int blockId = 0; blockId < basicBlocks.size(); blockId++) {
            for (TACInstruction instr : basicBlocks.get(blockId)) {
                instrToBlock.put(currentInstr, blockId);
                instructionToNode.put(currentInstr, blockId);
                currentInstr++;
            }
        }

        // Generate DOT nodes for basic blocks
        for (int blockId = 0; blockId < basicBlocks.size(); blockId++) {
            StringBuilder blockLabel = new StringBuilder();
            for (TACInstruction instr : basicBlocks.get(blockId)) {
                blockLabel.append(escape(instr.toString())).append("\\l");
            }
            dot.append("    node").append(blockId).append(" [label=\"").append(blockLabel).append("\"];\n");
        }

        // Generate DOT edges
        Set<String> addedEdges = new HashSet<>();
        for (int i = 0; i < instructions.size(); i++) {
            if (cfgEdges.get(i).isEmpty()) {
                continue;
            }
            int fromBlock = instrToBlock.get(i);
            for (int targetIdx : cfgEdges.get(i)) {
                Integer toBlock = instrToBlock.get(targetIdx);
                if (toBlock != null) {
                    String edge = fromBlock + "->" + toBlock;
                    if (!addedEdges.contains(edge)) {
                        dot.append("    node").append(fromBlock).append(" -> node").append(toBlock).append(";\n");
                        addedEdges.add(edge);
                    }
                }
            }
        }
    }

    private String escape(String s) {
        return s.replace("\"", "\\\"").replace("\n", "\\n").replace("\r", "\\r");
    }
}