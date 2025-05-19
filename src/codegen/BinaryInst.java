package codegen;

public class BinaryInst extends Instruction {
    private String dest;
    private String left;
    private String right;

    public BinaryInst(String opcode, String dest, String left, String right, int lineNumber) {
        super(opcode, lineNumber);
        this.dest = dest;
        this.left = left;
        this.right = right;
    }

    @Override
    public String toString() {
        return opcode + " " + dest + ", " + left + ", " + right;
    }
}