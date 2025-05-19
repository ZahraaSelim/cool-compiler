package ast;

import java.util.List;

public class CaseNode extends ExpressionNode {
    public ExpressionNode expression;
    public List<CaseBranchNode> branches;

    public CaseNode(ExpressionNode expression, List<CaseBranchNode> branches, int lineNumber) {
        super(lineNumber);
        this.expression = expression;
        this.branches = branches;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
