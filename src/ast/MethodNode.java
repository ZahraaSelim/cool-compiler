package ast;

import java.util.List;

public class MethodNode extends FeatureNode {
    public String name;
    public List<FormalNode> formals;
    public String returnType;
    public ExpressionNode body;

    public MethodNode(String name, List<FormalNode> formals, String returnType, ExpressionNode body, int lineNumber) {
        super(lineNumber);
        this.name = name;
        this.formals = formals;
        this.returnType = returnType;
        this.body = body;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}