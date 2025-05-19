package ast;

public class StringNode extends ExpressionNode {
    public String value;

    public StringNode(String value, int lineNumber) {
        super(lineNumber);
        this.value = value;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
