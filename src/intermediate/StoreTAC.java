package intermediate;

public class StoreTAC extends TACInstruction {
    private String source;
    private String attribute;

    public StoreTAC(String source, String attribute, int lineNumber) {
        super(Opcode.STORE, null, lineNumber);
        this.source = source;
        this.attribute = attribute;
    }

    public String getSource() {
        return source;
    }

    public String getAttribute() {
        return attribute;
    }

    @Override
    public String toString() {
        return "store " + source + " -> " + attribute;
    }
}