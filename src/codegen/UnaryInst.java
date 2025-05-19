package codegen;

public class UnaryInst extends Instruction {
    private String dest;
    private String src;

    public UnaryInst(String opcode, String dest, String src, int lineNumber) {
        super(opcode, lineNumber);
        this.dest = dest;
        this.src = src;
    }

    @Override
    public String toString() {
        return opcode + " " + dest + ", " + src;
    }
}