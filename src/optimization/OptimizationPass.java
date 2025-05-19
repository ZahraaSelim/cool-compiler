package optimization;

import intermediate.*;
import java.util.*;

public interface OptimizationPass {
    List<TACInstruction> optimize(List<TACInstruction> instructions);
}