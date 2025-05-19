package semantic;

import ast.*;
import java.util.*;

public class SemanticAnalyzer implements ASTVisitor<String> {
    private ClassTable classTable;
    private SymbolTable symbolTable;
    private String currentClass;
    private List<String> errors;

    public SemanticAnalyzer() {
        classTable = new ClassTable();
        symbolTable = new SymbolTable();
        errors = new ArrayList<>();
    }

    public List<String> analyze(ProgramNode program) {
        // Collect class definitions
        for (ClassNode classNode : program.classes) {
            classTable.addClass(classNode);
        }
        classTable.checkInheritance();
        classTable.checkFeatureRedefinition();
        errors.addAll(classTable.getErrors());

        // Populate symbol tables and type-check
        program.accept(this);
        return errors;
    }

    public ClassTable getClassTable() {
        return classTable;
    }

    public SymbolTable getSymbolTable() {
        return symbolTable;
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
        symbolTable.enterScope();
        // Add attributes to symbol table
        for (FeatureNode feature : node.features) {
            if (feature instanceof AttributeNode) {
                AttributeNode attr = (AttributeNode) feature;
                if (attr.name.equals("self")) {
                    errors.add("Error at line " + attr.lineNumber + ": Attribute cannot be named 'self'");
                } else {
                    symbolTable.put(attr.name, attr.type, attr.lineNumber);
                }
            }
        }
        // Visit features
        for (FeatureNode feature : node.features) {
            feature.accept(this);
        }
        symbolTable.exitScope();
        return null;
    }

    @Override
    public String visit(MethodNode node) {
        symbolTable.enterScope();
        for (FormalNode formal : node.formals) {
            formal.accept(this);
        }
        String bodyType = node.body.accept(this);
        if (bodyType != null && !classTable.conforms(bodyType, node.returnType, currentClass)) {
            errors.add("Error at line " + node.lineNumber + ": Method " + node.name + " body type " + bodyType + " does not conform to declared type " + node.returnType);
        }
        symbolTable.exitScope();
        return null;
    }

    @Override
    public String visit(AttributeNode node) {
        if (!classTable.isValidType(node.type)) {
            errors.add("Error at line " + node.lineNumber + ": Undefined type " + node.type + " for attribute " + node.name);
            return null;
        }
        if (node.init != null) {
            String initType = node.init.accept(this);
            if (initType != null && !classTable.conforms(initType, node.type, currentClass)) {
                errors.add("Error at line " + node.lineNumber + ": Initializer type " + initType + " does not conform to attribute type " + node.type);
            }
        } else if (classTable.isClassType(node.type)) {
            // Note: Attribute is initialized to void
        }
        return null;
    }

    @Override
    public String visit(FormalNode node) {
        if (node.name.equals("self")) {
            errors.add("Error at line " + node.lineNumber + ": Formal parameter cannot be named 'self'");
            return null;
        }
        if (!classTable.isValidType(node.type)) {
            errors.add("Error at line " + node.lineNumber + ": Undefined type " + node.type + " for parameter " + node.name);
            return null;
        }
        symbolTable.put(node.name, node.type, node.lineNumber);
        return null;
    }

    @Override
    public String visit(DispatchNode node) {
        String receiverType = node.receiver.accept(this);
        if (receiverType == null) {
            errors.add("Warning at line " + node.lineNumber + ": Dispatch on potentially void receiver may cause runtime error");
            return null;
        }
        String dispatchType = node.type != null ? node.type : receiverType;
        if (node.type != null) {
            // Static dispatch: e@T.m(args)
            if (node.type.equals("SELF_TYPE")) {
                errors.add("Error at line " + node.lineNumber + ": SELF_TYPE cannot be used in static dispatch");
                return null;
            }
            if (!classTable.isValidType(node.type)) {
                errors.add("Error at line " + node.lineNumber + ": Undefined static dispatch type " + node.type);
                return null;
            }
            if (!classTable.conforms(receiverType, node.type, currentClass)) {
                errors.add("Error at line " + node.lineNumber + ": Receiver type " + receiverType + " does not conform to static dispatch type " + node.type);
                return null;
            }
        } else if (dispatchType.equals("SELF_TYPE")) {
            dispatchType = currentClass;
        }
        ClassTable.MethodSignature method = classTable.findMethod(dispatchType, node.method);
        if (method == null) {
            errors.add("Error at line " + node.lineNumber + ": Method " + node.method + " not found in class " + dispatchType);
            return null;
        }
        if (node.args.size() != method.paramTypes.size()) {
            errors.add("Error at line " + node.lineNumber + ": Incorrect number of arguments for method " + node.method + "; expected " + method.paramTypes.size() + ", got " + node.args.size());
            return null;
        }
        for (int i = 0; i < node.args.size(); i++) {
            String argType = node.args.get(i).accept(this);
            if (argType != null && !classTable.conforms(argType, method.paramTypes.get(i), currentClass)) {
                errors.add("Error at line " + node.lineNumber + ": Argument " + (i + 1) + " type " + argType + " does not conform to expected type " + method.paramTypes.get(i));
            }
        }
        return method.returnType.equals("SELF_TYPE") ? receiverType : method.returnType;
    }

    @Override
    public String visit(MethodCallNode node) {
        String dispatchType = currentClass;
        ClassTable.MethodSignature method = classTable.findMethod(dispatchType, node.method);
        if (method == null) {
            errors.add("Error at line " + node.lineNumber + ": Method " + node.method + " not found in class " + currentClass);
            return null;
        }
        if (node.args.size() != method.paramTypes.size()) {
            errors.add("Error at line " + node.lineNumber + ": Incorrect number of arguments for method " + node.method + "; expected " + method.paramTypes.size() + ", got " + node.args.size());
            return null;
        }
        for (int i = 0; i < node.args.size(); i++) {
            String argType = node.args.get(i).accept(this);
            if (argType != null && !classTable.conforms(argType, method.paramTypes.get(i), currentClass)) {
                errors.add("Error at line " + node.lineNumber + ": Argument " + (i + 1) + " type " + argType + " does not conform to expected type " + method.paramTypes.get(i));
            }
        }
        return method.returnType.equals("SELF_TYPE") ? currentClass : method.returnType;
    }

    @Override
    public String visit(IfElseNode node) {
        String condType = node.condition.accept(this);
        if (condType != null && !condType.equals("Bool")) {
            errors.add("Error at line " + node.lineNumber + ": If condition must be Bool, got " + condType);
        }
        String thenType = node.thenBranch.accept(this);
        String elseType = node.elseBranch.accept(this);
        if (thenType == null || elseType == null) {
            return "Object"; // Fallback for void or error cases
        }
        return classTable.join(thenType, elseType, currentClass);
    }

    @Override
    public String visit(WhileNode node) {
        String condType = node.condition.accept(this);
        if (condType != null && !condType.equals("Bool")) {
            errors.add("Error at line " + node.lineNumber + ": While condition must be Bool, got " + condType);
        }
        node.body.accept(this);
        return "Object"; // Represents void
    }

    @Override
    public String visit(BlockNode node) {
        String lastType = null;
        for (ExpressionNode expr : node.expressions) {
            lastType = expr.accept(this);
        }
        return lastType;
    }

    @Override
    public String visit(LetNode node) {
        if (node.declarations.isEmpty()) {
            errors.add("Error at line " + node.lineNumber + ": Let expression must introduce at least one identifier");
            return node.body.accept(this);
        }
        symbolTable.enterScope();
        for (LetDeclNode decl : node.declarations) {
            decl.accept(this);
        }
        String bodyType = node.body.accept(this);
        symbolTable.exitScope();
        return bodyType;
    }

    @Override
    public String visit(LetDeclNode node) {
        if (node.name.equals("self")) {
            errors.add("Error at line " + node.lineNumber + ": Let binding cannot be named 'self'");
            return null;
        }
        if (!classTable.isValidType(node.type)) {
            errors.add("Error at line " + node.lineNumber + ": Undefined type " + node.type + " for let binding " + node.name);
            return null;
        }
        if (node.init != null) {
            String initType = node.init.accept(this);
            if (initType != null && !classTable.conforms(initType, node.type, currentClass)) {
                errors.add("Error at line " + node.lineNumber + ": Initializer type " + initType + " does not conform to let binding type " + node.type);
            }
        } else if (classTable.isClassType(node.type)) {
            // Note: Let binding is initialized to void
        }
        symbolTable.put(node.name, node.type, node.lineNumber);
        return null;
    }

    @Override
    public String visit(CaseNode node) {
        if (node.branches.isEmpty()) {
            errors.add("Error at line " + node.lineNumber + ": Case expression must have at least one branch");
            return null;
        }
        String exprType = node.expression.accept(this);
        if (exprType == null) {
            errors.add("Warning at line " + node.lineNumber + ": Case on potentially void expression may cause runtime error");
        }
        // Check for distinct branch types (CRM Section 7.6)
        Set<String> branchTypes = new HashSet<>();
        for (CaseBranchNode branch : node.branches) {
            if (!branchTypes.add(branch.type)) {
                errors.add("Error at line " + branch.lineNumber + ": Duplicate branch type " + branch.type + " in case expression");
            }
        }
        String resultType = null;
        for (CaseBranchNode branch : node.branches) {
            String branchType = branch.accept(this);
            if (branchType != null) {
                resultType = resultType == null ? branchType : classTable.join(resultType, branchType, currentClass);
            }
        }
        return resultType != null ? resultType : "Object"; // Fallback if all branches fail
    }

    @Override
    public String visit(CaseBranchNode node) {
        if (node.name.equals("self")) {
            errors.add("Error at line " + node.lineNumber + ": Case branch cannot bind 'self'");
            return null;
        }
        if (!classTable.isValidType(node.type)) {
            errors.add("Error at line " + node.lineNumber + ": Undefined type " + node.type + " for case branch");
            return null;
        }
        symbolTable.enterScope();
        symbolTable.put(node.name, node.type, node.lineNumber);
        String bodyType = node.body.accept(this);
        symbolTable.exitScope();
        return bodyType;
    }

    @Override
    public String visit(NewNode node) {
        if (!classTable.isValidType(node.type)) {
            errors.add("Error at line " + node.lineNumber + ": Undefined type " + node.type + " in new expression");
            return null;
        }
        return node.type.equals("SELF_TYPE") ? currentClass : node.type;
    }

    @Override
    public String visit(UnaryOpNode node) {
        String operandType = node.operand.accept(this);
        if (operandType == null && !node.operator.equals("isvoid")) {
            errors.add("Error at line " + node.lineNumber + ": Unary operator " + node.operator + " on potentially void operand");
            return null;
        }
        switch (node.operator) {
            case "~":
                if (operandType != null && !operandType.equals("Int")) {
                    errors.add("Error at line " + node.lineNumber + ": Negation requires Int, got " + (operandType != null ? operandType : "void"));
                    return null;
                }
                return "Int";
            case "isvoid":
                return "Bool";
            case "not":
                if (operandType != null && !operandType.equals("Bool")) {
                    errors.add("Error at line " + node.lineNumber + ": Not requires Bool, got " + (operandType != null ? operandType : "void"));
                    return null;
                }
                return "Bool";
            default:
                errors.add("Error at line " + node.lineNumber + ": Unknown unary operator " + node.operator);
                return null;
        }
    }

    @Override
    public String visit(BinaryOpNode node) {
        String leftType = node.left.accept(this);
        String rightType = node.right.accept(this);
        if (leftType == null || rightType == null) {
            if (node.operator.equals("=")) {
                // Allow void in equality comparison
                return "Bool";
            }
            errors.add("Error at line " + node.lineNumber + ": Binary operator " + node.operator + " on potentially void operand");
            return null;
        }
        switch (node.operator) {
            case "+":
            case "-":
            case "*":
            case "/":
                if (!leftType.equals("Int") || !rightType.equals("Int")) {
                    errors.add("Error at line " + node.lineNumber + ": Arithmetic operator " + node.operator + " requires Int operands, got " + leftType + " and " + rightType);
                    return null;
                }
                return "Int";
            case "<":
            case "<=":
                if (!leftType.equals("Int") || !rightType.equals("Int")) {
                    errors.add("Error at line " + node.lineNumber + ": Comparison operator " + node.operator + " requires Int operands, got " + leftType + " and " + rightType);
                    return null;
                }
                return "Bool";
            case "=":
                if ((leftType.equals("Int") && !rightType.equals("Int")) ||
                        (leftType.equals("Bool") && !rightType.equals("Bool")) ||
                        (leftType.equals("String") && !rightType.equals("String")) ||
                        (rightType.equals("Int") && !leftType.equals("Int")) ||
                        (rightType.equals("Bool") && !leftType.equals("Bool")) ||
                        (rightType.equals("String") && !leftType.equals("String"))) {
                    errors.add("Error at line " + node.lineNumber + ": Equality comparison requires matching types for Int, Bool, or String, got " + leftType + " and " + rightType);
                    return null;
                }
                return "Bool";
            default:
                errors.add("Error at line " + node.lineNumber + ": Unknown binary operator " + node.operator);
                return null;
        }
    }

    @Override
    public String visit(AssignmentNode node) {
        if (node.name.equals("self")) {
            errors.add("Error at line " + node.lineNumber + ": Cannot assign to 'self'");
            return null;
        }
        String varType = symbolTable.lookup(node.name);
        if (varType == null) {
            varType = classTable.findAttribute(currentClass, node.name) != null ? classTable.findAttribute(currentClass, node.name).type : null;
            if (varType == null) {
                errors.add("Error at line " + node.lineNumber + ": Undefined variable " + node.name);
                return null;
            }
        }
        String exprType = node.value.accept(this);
        if (exprType != null && !classTable.conforms(exprType, varType, currentClass)) {
            errors.add("Error at line " + node.lineNumber + ": Assignment type " + exprType + " does not conform to variable type " + varType);
        }
        return exprType;
    }

    @Override
    public String visit(IdNode node) {
        if (node.name.equals("self")) {
            return currentClass;
        }
        String type = symbolTable.lookup(node.name);
        if (type == null) {
            ClassTable.AttributeSignature attr = classTable.findAttribute(currentClass, node.name);
            if (attr != null) {
                type = attr.type;
            } else {
                errors.add("Error at line " + node.lineNumber + ": Undefined identifier " + node.name);
            }
        }
        return type;
    }

    @Override
    public String visit(IntNode node) {
        return "Int";
    }

    @Override
    public String visit(StringNode node) {
        if (node.value.length() > 1024) {
            errors.add("Error at line " + node.lineNumber + ": String constant exceeds 1024 characters");
        }
        return "String";
    }

    @Override
    public String visit(BoolNode node) {
        return "Bool";
    }
}