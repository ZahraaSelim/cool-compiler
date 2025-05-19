package ast;

import java.util.List;

public class ProgramNode extends ASTNode {
    public List<ClassNode> classes;

    public ProgramNode(List<ClassNode> classes, int lineNumber) {
        super(lineNumber);
        this.classes = classes;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}