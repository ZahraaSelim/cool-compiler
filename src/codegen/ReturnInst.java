package codegen;

public class ReturnInst extends Instruction {
    private String value;

    public ReturnInst(String value, int lineNumber) {
        super("ret", lineNumber);
        this.value = value;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (value != null) {
            sb.append("mov $r1, ").append(value).append("\n");
        }
        sb.append(opcode);
        return sb.toString();
    }
}