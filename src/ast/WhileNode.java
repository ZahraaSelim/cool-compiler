package ast;

public class WhileNode extends ExpressionNode {
    public ExpressionNode condition;
    public ExpressionNode body;

    public WhileNode(ExpressionNode condition, ExpressionNode body, int lineNumber) {
        super(lineNumber);
        this.condition = condition;
        this.body = body;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
