package ast;

public class FormalNode extends ASTNode {
    public String name;
    public String type;

    public FormalNode(String name, String type, int lineNumber) {
        super(lineNumber);
        this.name = name;
        this.type = type;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}