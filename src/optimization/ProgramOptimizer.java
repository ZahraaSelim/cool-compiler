package optimization;

import intermediate.*;
import java.util.*;

public class ProgramOptimizer {
    private List<OptimizationPass> passes;

    public ProgramOptimizer() {
        passes = new ArrayList<>();
        passes.add(new ConstantFolder());
        passes.add(new LoopOptimizer());
        passes.add(new ConstantFolder()); // Run again after loop optimizations
    }

    public TACProgram optimize(TACProgram program) {
        TACProgram optimizedProgram = new TACProgram();
        Map<String, Map<String, List<TACInstruction>>> classMethods = program.getClassMethods();

        for (String className : classMethods.keySet()) {
            Map<String, List<TACInstruction>> methods = classMethods.get(className);
            for (Map.Entry<String, List<TACInstruction>> entry : methods.entrySet()) {
                String methodName = entry.getKey();
                List<TACInstruction> instructions = entry.getValue();
                List<TACInstruction> optimizedInstructions = instructions;

                for (OptimizationPass pass : passes) {
                    optimizedInstructions = pass.optimize(optimizedInstructions);
                }

                optimizedProgram.addMethod(className, methodName, optimizedInstructions);
            }
        }

        return optimizedProgram;
    }
}