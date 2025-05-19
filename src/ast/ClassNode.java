package ast;

import java.util.List;

public class ClassNode extends ASTNode {
    public String name;
    public String parent;
    public List<FeatureNode> features;

    public ClassNode(String name, String parent, List<FeatureNode> features, int lineNumber) {
        super(lineNumber);
        this.name = name;
        this.parent = parent;
        this.features = features;
    }

    @Override
    public <T> T accept(ASTVisitor<T> visitor) {
        return visitor.visit(this);
    }
}