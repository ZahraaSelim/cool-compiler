package ast;

import java.util.List;

public class MethodCallNode extends ExpressionNode {
    public String method;
    public List<ExpressionNode> args;

    public MethodCallNode(String method, List<ExpressionNode> args, int lineNumber) {
        super(lineNumber);
        this.method = method;
        this.args = args;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
