package intermediate;

import ast.*;
import semantic.ClassTable;
import semantic.SymbolTable;
import java.util.*;

public class TACGenerator implements ASTVisitor<String> {
    private TACProgram program;
    private List<TACInstruction> currentInstructions;
    private ClassTable classTable;
    private SymbolTable symbolTable;
    private String currentClass;
    private String currentMethod;
    private int tempCounter;
    private int labelCounter;

    public TACGenerator(ClassTable classTable, SymbolTable symbolTable) {
        this.program = new TACProgram();
        this.classTable = classTable;
        this.symbolTable = symbolTable;
        this.tempCounter = 0;
        this.labelCounter = 0;
    }

    public TACProgram generate(ProgramNode node) {
        node.accept(this);
        return program;
    }

    private String newTemp() {
        return "t" + (tempCounter++);
    }

    private String newLabel() {
        return "L" + (labelCounter++);
    }

    @Override
    public String visit(ProgramNode node) {
        for (ClassNode classNode : node.classes) {
            classNode.accept(this);
        }
        return null;
    }

    @Override
    public String visit(ClassNode node) {
        currentClass = node.name;
        for (FeatureNode feature : node.features) {
            if (feature instanceof MethodNode) {
                feature.accept(this);
            }
            // Attributes are handled during initialization if needed
        }
        return null;
    }

    @Override
    public String visit(MethodNode node) {
        currentMethod = node.name;
        currentInstructions = new ArrayList<>();
        symbolTable.enterScope();

        // Add parameters to symbol table
        for (FormalNode formal : node.formals) {
            symbolTable.put(formal.name, formal.type, formal.lineNumber);
            currentInstructions.add(new ParamTAC(formal.name, formal.lineNumber));
        }

        // Generate TAC for method body
        String result = node.body.accept(this);
        if (result != null) {
            currentInstructions.add(new ReturnTAC(result, node.lineNumber));
        } else {
            currentInstructions.add(new ReturnTAC(null, node.lineNumber));
        }

        program.addMethod(currentClass, currentMethod, currentInstructions);
        symbolTable.exitScope();
        currentInstructions = null;
        currentMethod = null;
        return null;
    }

    @Override
    public String visit(AttributeNode node) {
        if (node.init != null) {
            String initResult = node.init.accept(this);
            if (initResult != null) {
                currentInstructions.add(new StoreTAC(initResult, node.name, node.lineNumber));
            }
        }
        return null;
    }

    @Override
    public String visit(FormalNode node) {
        // Handled in MethodNode
        return null;
    }

    @Override
    public String visit(DispatchNode node) {
        String receiver = node.receiver.accept(this);
        List<String> argResults = new ArrayList<>();
        for (ExpressionNode arg : node.args) {
            String argResult = arg.accept(this);
            if (argResult != null) {
                argResults.add(argResult);
            }
        }
        String result = newTemp();
        String methodName = (node.type != null ? node.type + "." : "") + node.method;
        currentInstructions.add(new CallTAC(result, methodName, argResults, node.lineNumber));
        return result;
    }

    @Override
    public String visit(MethodCallNode node) {
        List<String> argResults = new ArrayList<>();
        for (ExpressionNode arg : node.args) {
            String argResult = arg.accept(this);
            if (argResult != null) {
                argResults.add(argResult);
            }
        }
        String result = newTemp();
        String methodName = currentClass + "." + node.method;
        currentInstructions.add(new CallTAC(result, methodName, argResults, node.lineNumber));
        return result;
    }

    @Override
    public String visit(IfElseNode node) {
        String condition = node.condition.accept(this);
        String thenLabel = newLabel();
        String elseLabel = newLabel();
        String endLabel = newLabel();

        currentInstructions.add(new IfTAC(condition, thenLabel, node.lineNumber));
        currentInstructions.add(new GotoTAC(elseLabel, node.lineNumber));
        currentInstructions.add(new LabelTAC(thenLabel, node.lineNumber));

        String thenResult = node.thenBranch.accept(this);
        String result = thenResult != null ? newTemp() : null;
        if (thenResult != null) {
            currentInstructions.add(new AssignTAC(result, thenResult, node.lineNumber));
        }
        currentInstructions.add(new GotoTAC(endLabel, node.lineNumber));

        currentInstructions.add(new LabelTAC(elseLabel, node.lineNumber));
        String elseResult = node.elseBranch.accept(this);
        if (elseResult != null && result != null) {
            currentInstructions.add(new AssignTAC(result, elseResult, node.lineNumber));
        }
        currentInstructions.add(new LabelTAC(endLabel, node.lineNumber));

        return result;
    }

    @Override
    public String visit(WhileNode node) {
        String startLabel = newLabel();
        String bodyLabel = newLabel();
        String endLabel = newLabel();

        currentInstructions.add(new LabelTAC(startLabel, node.lineNumber));
        String condition = node.condition.accept(this);
        currentInstructions.add(new IfTAC(condition, bodyLabel, node.lineNumber));
        currentInstructions.add(new GotoTAC(endLabel, node.lineNumber));
        currentInstructions.add(new LabelTAC(bodyLabel, node.lineNumber));

        node.body.accept(this);
        currentInstructions.add(new GotoTAC(startLabel, node.lineNumber));
        currentInstructions.add(new LabelTAC(endLabel, node.lineNumber));

        return null; // While loops return void
    }

    @Override
    public String visit(BlockNode node) {
        String lastResult = null;
        for (ExpressionNode expr : node.expressions) {
            lastResult = expr.accept(this);
        }
        return lastResult;
    }

    @Override
    public String visit(LetNode node) {
        symbolTable.enterScope();
        for (LetDeclNode decl : node.declarations) {
            decl.accept(this);
        }
        String bodyResult = node.body.accept(this);
        symbolTable.exitScope();
        return bodyResult;
    }

    @Override
    public String visit(LetDeclNode node) {
        if (node.init != null) {
            String initResult = node.init.accept(this);
            if (initResult != null) {
                currentInstructions.add(new AssignTAC(node.name, initResult, node.lineNumber));
            }
        }
        symbolTable.put(node.name, node.type, node.lineNumber);
        return null;
    }

    @Override
    public String visit(CaseNode node) {
        String exprResult = node.expression.accept(this);
        String result = newTemp();
        String endLabel = newLabel();
        List<String> branchLabels = new ArrayList<>();

        // Generate labels for each branch
        for (int i = 0; i < node.branches.size(); i++) {
            branchLabels.add(newLabel());
        }

        // Type-based dispatch (simplified: check type and jump)
        for (int i = 0; i < node.branches.size(); i++) {
            CaseBranchNode branch = node.branches.get(i);
            // In a real implementation, we'd emit type-checking code
            currentInstructions.add(new IfTAC(exprResult + ".type == " + branch.type, branchLabels.get(i), branch.lineNumber));
        }

        // Branches
        for (int i = 0; i < node.branches.size(); i++) {
            CaseBranchNode branch = node.branches.get(i);
            currentInstructions.add(new LabelTAC(branchLabels.get(i), branch.lineNumber));
            symbolTable.enterScope();
            symbolTable.put(branch.name, branch.type, branch.lineNumber);
            String branchResult = branch.accept(this);
            if (branchResult != null) {
                currentInstructions.add(new AssignTAC(result, branchResult, branch.lineNumber));
            }
            symbolTable.exitScope();
            currentInstructions.add(new GotoTAC(endLabel, branch.lineNumber));
        }

        currentInstructions.add(new LabelTAC(endLabel, node.lineNumber));
        return result;
    }

    @Override
    public String visit(CaseBranchNode node) {
        return node.body.accept(this);
    }

    @Override
    public String visit(NewNode node) {
        String result = newTemp();
        currentInstructions.add(new CallTAC(result, "new " + node.type, new ArrayList<>(), node.lineNumber));
        return result;
    }

    @Override
    public String visit(UnaryOpNode node) {
        String operand = node.operand.accept(this);
        if (operand == null) {
            return null;
        }
        String result = newTemp();
        currentInstructions.add(new UnaryTAC(result, node.operator, operand, node.lineNumber));
        return result;
    }

    @Override
    public String visit(BinaryOpNode node) {
        String left = node.left.accept(this);
        String right = node.right.accept(this);
        if (left == null || right == null) {
            return null;
        }
        String result = newTemp();
        currentInstructions.add(new BinaryTAC(result, left, node.operator, right, node.lineNumber));
        return result;
    }

    @Override
    public String visit(AssignmentNode node) {
        String value = node.value.accept(this);
        if (value == null) {
            return null;
        }
        // Check if it's an attribute or local variable
        if (symbolTable.lookup(node.name) != null) {
            currentInstructions.add(new AssignTAC(node.name, value, node.lineNumber));
        } else {
            currentInstructions.add(new StoreTAC(value, node.name, node.lineNumber));
        }
        return value;
    }

    @Override
    public String visit(IdNode node) {
        if (node.name.equals("self")) {
            return "self";
        }
        String type = symbolTable.lookup(node.name);
        if (type != null) {
            return node.name; // Local variable
        } else {
            String result = newTemp();
            currentInstructions.add(new LoadTAC(result, node.name, node.lineNumber));
            return result; // Attribute
        }
    }

    @Override
    public String visit(IntNode node) {
        String result = newTemp();
        currentInstructions.add(new AssignTAC(result, String.valueOf(node.value), node.lineNumber));
        return result;
    }

    @Override
    public String visit(StringNode node) {
        String result = newTemp();
        currentInstructions.add(new AssignTAC(result, "\"" + node.value + "\"", node.lineNumber));
        return result;
    }

    @Override
    public String visit(BoolNode node) {
        String result = newTemp();
        currentInstructions.add(new AssignTAC(result, String.valueOf(node.value), node.lineNumber));
        return result;
    }
}