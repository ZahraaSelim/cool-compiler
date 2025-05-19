package ast;

public class IntNode extends ExpressionNode {
    public int value;

    public IntNode(int value, int lineNumber) {
        super(lineNumber);
        this.value = value;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
