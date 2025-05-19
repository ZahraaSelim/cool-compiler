package optimization;

import intermediate.*;
import java.util.*;

public class LoopAnalyzer {
    public static class Loop {
        public int headerIndex; // Index of the LabelTAC
        public String headerLabel; // Label name
        public Set<Integer> bodyIndices; // Instructions in the loop
        public Set<Integer> exitIndices; // Instructions that exit the loop

        public Loop(int headerIndex, String headerLabel) {
            this.headerIndex = headerIndex;
            this.headerLabel = headerLabel;
            this.bodyIndices = new HashSet<>();
            this.exitIndices = new HashSet<>();
        }
    }

    public static List<Loop> findLoops(List<TACInstruction> instructions) {
        List<Loop> loops = new ArrayList<>();
        Map<String, Integer> labelToIndex = new HashMap<>();
        Map<Integer, Set<Integer>> cfg = new HashMap<>();

        // Build label map and CFG
        for (int i = 0; i < instructions.size(); i++) {
            TACInstruction instr = instructions.get(i);
            cfg.put(i, new HashSet<>());
            if (instr instanceof LabelTAC) {
                labelToIndex.put(((LabelTAC) instr).getResult(), i);
            }
        }
        for (int i = 0; i < instructions.size(); i++) {
            TACInstruction instr = instructions.get(i);
            if (instr instanceof GotoTAC) {
                String target = ((GotoTAC) instr).getResult();
                Integer targetIdx = labelToIndex.get(target);
                if (targetIdx != null) {
                    cfg.get(i).add(targetIdx);
                }
            } else if (instr instanceof IfTAC) {
                String target = ((IfTAC) instr).getResult();
                Integer targetIdx = labelToIndex.get(target);
                if (targetIdx != null) {
                    cfg.get(i).add(targetIdx);
                }
                if (i + 1 < instructions.size()) {
                    cfg.get(i).add(i + 1);
                }
            } else if (!(instr instanceof ReturnTAC) && i + 1 < instructions.size()) {
                cfg.get(i).add(i + 1);
            }
        }

        // Find back-edges
        for (int i = 0; i < instructions.size(); i++) {
            if (instructions.get(i) instanceof GotoTAC || instructions.get(i) instanceof IfTAC) {
                for (int succ : cfg.get(i)) {
                    if (succ <= i && instructions.get(succ) instanceof LabelTAC) {
                        String headerLabel = ((LabelTAC) instructions.get(succ)).getResult();
                        Loop loop = new Loop(succ, headerLabel);
                        Set<Integer> body = new HashSet<>();
                        Queue<Integer> worklist = new LinkedList<>();
                        worklist.add(i);
                        body.add(i);
                        while (!worklist.isEmpty()) {
                            int curr = worklist.poll();
                            for (int pred : getPredecessors(curr, cfg)) {
                                if (pred >= succ && !body.contains(pred)) {
                                    body.add(pred);
                                    worklist.add(pred);
                                }
                            }
                        }
                        loop.bodyIndices.addAll(body);
                        for (int bodyIdx : body) {
                            for (int succIdx : cfg.get(bodyIdx)) {
                                if (!body.contains(succIdx)) {
                                    loop.exitIndices.add(bodyIdx);
                                }
                            }
                        }
                        loops.add(loop);
                    }
                }
            }
        }

        return loops;
    }

    private static Set<Integer> getPredecessors(int index, Map<Integer, Set<Integer>> cfg) {
        Set<Integer> preds = new HashSet<>();
        for (Map.Entry<Integer, Set<Integer>> entry : cfg.entrySet()) {
            if (entry.getValue().contains(index)) {
                preds.add(entry.getKey());
            }
        }
        return preds;
    }
}