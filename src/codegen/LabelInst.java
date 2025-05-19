package codegen;

public class LabelInst extends Instruction {
    private String label;

    public LabelInst(String label, int lineNumber) {
        super("label", lineNumber);
        this.label = label;
    }

    @Override
    public String toString() {
        return label + ":";
    }

    public String getLabel() {
        return label;
    }
}