package codegen;

public class BranchInst extends Instruction {
    private String condition;
    private String target;

    public BranchInst(String opcode, String condition, String target, int lineNumber) {
        super(opcode, lineNumber);
        this.condition = condition;
        this.target = target;
    }

    @Override
    public String toString() {
        return opcode + " " + condition + ", " + target;
    }
}