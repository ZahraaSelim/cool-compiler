package intermediate;

public class IfTAC extends TACInstruction {
    private String condition;

    public IfTAC(String condition, String label, int lineNumber) {
        super(Opcode.IF, label, lineNumber);
        this.condition = condition;
    }

    public String getCondition() {
        return condition;
    }

    @Override
    public String toString() {
        return "if " + condition + " goto " + result;
    }
}