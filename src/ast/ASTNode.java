package ast;

public abstract class ASTNode {
    public int lineNumber;

    public ASTNode(int lineNumber) {
        this.lineNumber = lineNumber;
    }

    public int getLineNumber() {
        return lineNumber;
    }

    public abstract <T> T accept(ASTVisitor<T> visitor);
}
