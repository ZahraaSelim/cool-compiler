package ast;

import java.util.List;

public class LetNode extends ExpressionNode {
    public List<LetDeclNode> declarations;
    public ExpressionNode body;

    public LetNode(List<LetDeclNode> declarations, ExpressionNode body, int lineNumber) {
        super(lineNumber);
        this.declarations = declarations;
        this.body = body;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
