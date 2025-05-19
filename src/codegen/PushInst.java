package codegen;

public class PushInst extends Instruction {
    private String value;

    public PushInst(String value, int lineNumber) {
        super("push", lineNumber);
        this.value = value;
    }

    @Override
    public String toString() {
        return opcode + " " + value;
    }
}