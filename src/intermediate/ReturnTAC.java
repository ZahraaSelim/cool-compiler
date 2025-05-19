package intermediate;

public class ReturnTAC extends TACInstruction {
    private String value;

    public ReturnTAC(String value, int lineNumber) {
        super(Opcode.RETURN, null, lineNumber);
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public String toString() {
        return "return" + (value != null ? " " + value : "");
    }
}