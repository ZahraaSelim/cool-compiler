package intermediate;

public class UnaryTAC extends TACInstruction {
    private String operand;
    private String operator;

    public UnaryTAC(String result, String operator, String operand, int lineNumber) {
        super(Opcode.UNARY, result, lineNumber);
        this.operator = operator;
        this.operand = operand;
    }

    public String getOperand() {
        return operand;
    }

    public String getOperator() {
        return operator;
    }

    @Override
    public String toString() {
        return result + " = " + operator + " " + operand;
    }
}