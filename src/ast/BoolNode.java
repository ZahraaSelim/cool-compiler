package ast;

public class BoolNode extends ExpressionNode {
    public boolean value;

    public BoolNode(boolean value, int lineNumber) {
        super(lineNumber);
        this.value = value;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
