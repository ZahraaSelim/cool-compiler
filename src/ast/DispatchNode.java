package ast;

import java.util.List;

public class DispatchNode extends ExpressionNode {
    public ExpressionNode receiver;
    public String type;
    public String method;
    public List<ExpressionNode> args;

    public DispatchNode(ExpressionNode receiver, String type, String method, List<ExpressionNode> args, int lineNumber) {
        super(lineNumber);
        this.receiver = receiver;
        this.type = type;
        this.method = method;
        this.args = args;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
