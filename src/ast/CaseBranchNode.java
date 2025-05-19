package ast;

public class CaseBranchNode extends ASTNode {
    public String name;
    public String type;
    public ExpressionNode body;

    public CaseBranchNode(String name, String type, ExpressionNode body, int lineNumber) {
        super(lineNumber);
        this.name = name;
        this.type = type;
        this.body = body;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}