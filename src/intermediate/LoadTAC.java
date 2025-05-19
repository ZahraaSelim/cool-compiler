package intermediate;

public class LoadTAC extends TACInstruction {
    private String attribute;

    public LoadTAC(String result, String attribute, int lineNumber) {
        super(Opcode.LOAD, result, lineNumber);
        this.attribute = attribute;
    }

    public String getAttribute() {
        return attribute;
    }

    @Override
    public String toString() {
        return result + " = load " + attribute;
    }
}