package intermediate;

import java.util.*;

public class TACProgram {
    private Map<String, Map<String, List<TACInstruction>>> classMethods; // class -> method -> instructions

    public TACProgram() {
        classMethods = new HashMap<>();
    }

    public void addMethod(String className, String methodName, List<TACInstruction> instructions) {
        classMethods.computeIfAbsent(className, k -> new HashMap<>()).put(methodName, instructions);
    }

    public Map<String, Map<String, List<TACInstruction>>> getClassMethods() {
        return classMethods;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String className : classMethods.keySet()) {
            sb.append("class ").append(className).append(":\n");
            for (Map.Entry<String, List<TACInstruction>> entry : classMethods.get(className).entrySet()) {
                sb.append("  method ").append(entry.getKey()).append(":\n");
                for (TACInstruction instr : entry.getValue()) {
                    sb.append("    ").append(instr).append("\n");
                }
            }
        }
        return sb.toString();
    }
}