package ast;

public class NewNode extends ExpressionNode {
    public String type;

    public NewNode(String type, int lineNumber) {
        super(lineNumber);
        this.type = type;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}