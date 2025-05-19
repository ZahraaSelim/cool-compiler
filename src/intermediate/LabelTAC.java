package intermediate;

public class LabelTAC extends TACInstruction {
    public LabelTAC(String label, int lineNumber) {
        super(Opcode.LABEL, label, lineNumber);
    }

    @Override
    public String toString() {
        return result + ":";
    }
}