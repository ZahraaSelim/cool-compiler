package intermediate;

import java.util.List;

public class CallTAC extends TACInstruction {
    private String method;
    private List<String> args;

    public CallTAC(String result, String method, List<String> args, int lineNumber) {
        super(Opcode.CALL, result, lineNumber);
        this.method = method;
        this.args = args;
    }

    public String getMethod() {
        return method;
    }

    public List<String> getArgs() {
        return args;
    }

    @Override
    public String toString() {
        return (result != null ? result + " = " : "") + "call " + method + "(" + String.join(", ", args) + ")";
    }
}