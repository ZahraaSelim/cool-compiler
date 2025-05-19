package intermediate;

public class ParamTAC extends TACInstruction {
    private String param;

    public ParamTAC(String param, int lineNumber) {
        super(Opcode.PARAM, null, lineNumber);
        this.param = param;
    }

    public String getParam() {
        return param;
    }

    @Override
    public String toString() {
        return "param " + param;
    }
}