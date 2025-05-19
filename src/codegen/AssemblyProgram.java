package codegen;

import java.util.*;

public class AssemblyProgram {
    private Map<String, Map<String, List<Instruction>>> classMethods;

    public AssemblyProgram() {
        classMethods = new HashMap<>();
    }

    public void addMethod(String className, String methodName, List<Instruction> instructions) {
        classMethods.computeIfAbsent(className, k -> new HashMap<>()).put(methodName, instructions);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String className : classMethods.keySet()) {
            sb.append(".class ").append(className).append("\n");
            for (Map.Entry<String, List<Instruction>> entry : classMethods.get(className).entrySet()) {
                sb.append(".method ").append(entry.getKey()).append("\n");
                for (Instruction inst : entry.getValue()) {
                    String instStr = inst.toString();
                    for (String line : instStr.split("\n")) {
                        sb.append("    ").append(line).append("\n");
                    }
                }
                sb.append(".end_method\n");
            }
            sb.append(".end_class\n");
        }
        return sb.toString();
    }
}