package ast;

public class AttributeNode extends FeatureNode {
    public String name;
    public String type;
    public ExpressionNode init;

    public AttributeNode(String name, String type, ExpressionNode init, int lineNumber) {
        super(lineNumber);
        this.name = name;
        this.type = type;
        this.init = init;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}