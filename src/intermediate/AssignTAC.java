package intermediate;

public class AssignTAC extends TACInstruction {
    private String source;

    public AssignTAC(String result, String source, int lineNumber) {
        super(Opcode.ASSIGN, result, lineNumber);
        this.source = source;
    }

    public String getSource() {
        return source;
    }

    @Override
    public String toString() {
        return result + " = " + source;
    }
}