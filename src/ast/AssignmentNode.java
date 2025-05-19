package ast;

public class AssignmentNode extends ExpressionNode {
    public String name;
    public ExpressionNode value;

    public AssignmentNode(String name, ExpressionNode value, int lineNumber) {
        super(lineNumber);
        this.name = name;
        this.value = value;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
