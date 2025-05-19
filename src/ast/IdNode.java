package ast;

public class IdNode extends ExpressionNode {
    public String name;

    public IdNode(String name, int lineNumber) {
        super(lineNumber);
        this.name = name;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
