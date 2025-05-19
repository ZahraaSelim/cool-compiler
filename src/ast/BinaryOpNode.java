package ast;

public class BinaryOpNode extends ExpressionNode {
    public String operator;
    public ExpressionNode left;
    public ExpressionNode right;

    public BinaryOpNode(String operator, ExpressionNode left, ExpressionNode right, int lineNumber) {
        super(lineNumber);
        this.operator = operator;
        this.left = left;
        this.right = right;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
