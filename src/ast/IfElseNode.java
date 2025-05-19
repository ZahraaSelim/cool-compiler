package ast;

public class IfElseNode extends ExpressionNode {
    public ExpressionNode condition;
    public ExpressionNode thenBranch;
    public ExpressionNode elseBranch;

    public IfElseNode(ExpressionNode condition, ExpressionNode thenBranch, ExpressionNode elseBranch, int lineNumber) {
        super(lineNumber);
        this.condition = condition;
        this.thenBranch = thenBranch;
        this.elseBranch = elseBranch;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
