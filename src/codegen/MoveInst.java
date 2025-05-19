package codegen;

public class MoveInst extends Instruction {
    private String dest;
    private String src;

    public MoveInst(String dest, String src, int lineNumber) {
        super("mov", lineNumber);
        this.dest = dest;
        this.src = src;
    }

    @Override
    public String toString() {
        return opcode + " " + dest + ", " + src;
    }
}