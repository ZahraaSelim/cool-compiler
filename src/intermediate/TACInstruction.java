package intermediate;

public abstract class TACInstruction {
    public enum Opcode {
        ASSIGN, // x = y
        BINARY, // x = y op z
        UNARY,  // x = op y
        GOTO,   // goto label
        IF,     // if x goto label
        CALL,   // x = call method(args)
        RETURN, // return x
        LABEL,  // label:
        PARAM,  // param x
        LOAD,   // x = load attr
        STORE   // store x -> attr
    }

    protected Opcode opcode;
    protected String result; // Destination variable or null
    protected int lineNumber;

    public TACInstruction(Opcode opcode, String result, int lineNumber) {
        this.opcode = opcode;
        this.result = result;
        this.lineNumber = lineNumber;
    }

    public Opcode getOpcode() {
        return opcode;
    }

    public String getResult() {
        return result;
    }

    public int getLineNumber() {
        return lineNumber;
    }

    @Override
    public abstract String toString();
}