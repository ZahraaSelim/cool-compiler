package codegen;

public class StoreInst extends Instruction {
    private String src;
    private String address;

    public StoreInst(String src, String address, int lineNumber) {
        super("sw", lineNumber);
        this.src = src;
        this.address = address;
    }

    @Override
    public String toString() {
        return opcode + " " + src + ", " + address;
    }
}