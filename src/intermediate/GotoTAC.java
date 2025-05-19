package intermediate;

public class GotoTAC extends TACInstruction {
    public GotoTAC(String label, int lineNumber) {
        super(Opcode.GOTO, label, lineNumber);
    }

    @Override
    public String toString() {
        return "goto " + result;
    }
}