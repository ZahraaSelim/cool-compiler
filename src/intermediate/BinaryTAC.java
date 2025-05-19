package intermediate;

public class BinaryTAC extends TACInstruction {
    private String left;
    private String right;
    private String operator;

    public BinaryTAC(String result, String left, String operator, String right, int lineNumber) {
        super(Opcode.BINARY, result, lineNumber);
        this.left = left;
        this.operator = operator;
        this.right = right;
    }

    public String getLeft() {
        return left;
    }

    public String getRight() {
        return right;
    }

    public String getOperator() {
        return operator;
    }

    @Override
    public String toString() {
        return result + " = " + left + " " + operator + " " + right;
    }
}