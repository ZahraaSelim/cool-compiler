package codegen;

public class JumpInst extends Instruction {
    private String target;

    public JumpInst(String target, int lineNumber) {
        super("j", lineNumber);
        this.target = target;
    }

    @Override
    public String toString() {
        return opcode + " " + target;
    }
}