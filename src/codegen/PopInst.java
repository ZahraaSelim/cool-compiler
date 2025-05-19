package codegen;

public class PopInst extends Instruction {
    private String dest;

    public PopInst(String dest, int lineNumber) {
        super("pop", lineNumber);
        this.dest = dest;
    }

    @Override
    public String toString() {
        return opcode + " " + dest;
    }
}