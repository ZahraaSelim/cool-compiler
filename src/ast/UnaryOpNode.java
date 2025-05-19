package ast;

public class UnaryOpNode extends ExpressionNode {
    public String operator;
    public ExpressionNode operand;

    public UnaryOpNode(String operator, ExpressionNode operand, int lineNumber) {
        super(lineNumber);
        this.operator = operator;
        this.operand = operand;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
