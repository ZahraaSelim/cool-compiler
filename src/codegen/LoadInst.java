package codegen;

public class LoadInst extends Instruction {
    private String dest;
    private String address;

    public LoadInst(String dest, String address, int lineNumber) {
        super("lw", lineNumber);
        this.dest = dest;
        this.address = address;
    }

    @Override
    public String toString() {
        return opcode + " " + dest + ", " + address;
    }
}