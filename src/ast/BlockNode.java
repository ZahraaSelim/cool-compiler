package ast;

import java.util.List;

public class BlockNode extends ExpressionNode {
    public List<ExpressionNode> expressions;

    public BlockNode(List<ExpressionNode> expressions, int lineNumber) {
        super(lineNumber);
        this.expressions = expressions;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
