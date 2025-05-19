package codegen;

import java.util.List;

public class CallInst extends Instruction {
    private String dest;
    private String method;
    private List<String> args;

    public CallInst(String dest, String method, List<String> args, int lineNumber) {
        super("jal", lineNumber);
        this.dest = dest;
        this.method = method;
        this.args = args;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String arg : args) {
            sb.append("push ").append(arg).append("\n");
        }
        sb.append(opcode).append(" ").append(method);
        if (dest != null) {
            sb.append("\nmov ").append(dest).append(", $r1");
        }
        return sb.toString();
    }
}