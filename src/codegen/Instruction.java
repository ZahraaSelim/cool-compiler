package codegen;

public abstract class Instruction {
    protected String opcode;
    protected int lineNumber;

    public Instruction(String opcode, int lineNumber) {
        this.opcode = opcode;
        this.lineNumber = lineNumber;
    }

    @Override
    public abstract String toString();
}