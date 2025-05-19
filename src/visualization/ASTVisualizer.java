package visualization;

import ast.*;
import java.io.*;
import java.util.*;

public class ASTVisualizer implements ASTVisitor<String> {
    private StringBuilder dot;
    private int nodeCounter;
    private Map<ASTNode, Integer> nodeIds;

    public ASTVisualizer() {
        dot = new StringBuilder();
        nodeCounter = 0;
        nodeIds = new HashMap<>();
    }

    public void visualize(ProgramNode program, String outputFile) {
        // Initialize DOT file
        dot.append("digraph AST {\n");
        dot.append("    node [shape=box];\n");

        // Visit the program node to generate the graph
        program.accept(this);

        // Close DOT file
        dot.append("}\n");

        // Write to file
        try (PrintWriter writer = new PrintWriter(outputFile)) {
            writer.println(dot.toString());
            System.out.println("AST visualized in " + outputFile);
        } catch (IOException e) {
            System.err.println("Error writing AST visualization to " + outputFile + ": " + e.getMessage());
        }
    }

    private String newNodeId(ASTNode node, String label) {
        int id = nodeCounter++;
        nodeIds.put(node, id);
        dot.append("    ").append(id).append(" [label=\"").append(escape(label)).append("\"];\n");
        return Integer.toString(id);
    }

    private void addEdge(String fromId, String toId) {
        dot.append("    ").append(fromId).append(" -> ").append(toId).append(";\n");
    }

    private String escape(String s) {
        return s.replace("\"", "\\\"").replace("\n", "\\n");
    }

    @Override
    public String visit(ProgramNode node) {
        String nodeId = newNodeId(node, "Program\\nLine: " + node.lineNumber);
        for (ClassNode classNode : node.classes) {
            String childId = classNode.accept(this);
            addEdge(nodeId, childId);
        }
        return nodeId;
    }

    @Override
    public String visit(ClassNode node) {
        String label = "Class: " + node.name;
        if (node.parent != null) {
            label += "\\nInherits: " + node.parent;
        }
        label += "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        for (FeatureNode feature : node.features) {
            String childId = feature.accept(this);
            addEdge(nodeId, childId);
        }
        return nodeId;
    }

    @Override
    public String visit(MethodNode node) {
        String label = "Method: " + node.name + "\\nReturn: " + node.returnType + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        for (FormalNode formal : node.formals) {
            String formalId = formal.accept(this);
            addEdge(nodeId, formalId);
        }
        String bodyId = node.body.accept(this);
        addEdge(nodeId, bodyId);
        return nodeId;
    }

    @Override
    public String visit(AttributeNode node) {
        String label = "Attribute: " + node.name + "\\nType: " + node.type + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        if (node.init != null) {
            String initId = node.init.accept(this);
            addEdge(nodeId, initId);
        }
        return nodeId;
    }

    @Override
    public String visit(FormalNode node) {
        String label = "Formal: " + node.name + "\\nType: " + node.type + "\\nLine: " + node.lineNumber;
        return newNodeId(node, label);
    }

    @Override
    public String visit(DispatchNode node) {
        String label = "Dispatch: " + node.method;
        if (node.type != null) {
            label += "\\nType: " + node.type;
        }
        label += "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        String receiverId = node.receiver.accept(this);
        addEdge(nodeId, receiverId);
        for (ExpressionNode arg : node.args) {
            String argId = arg.accept(this);
            addEdge(nodeId, argId);
        }
        return nodeId;
    }

    @Override
    public String visit(MethodCallNode node) {
        String label = "MethodCall: " + node.method + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        for (ExpressionNode arg : node.args) {
            String argId = arg.accept(this);
            addEdge(nodeId, argId);
        }
        return nodeId;
    }

    @Override
    public String visit(IfElseNode node) {
        String nodeId = newNodeId(node, "IfElse\\nLine: " + node.lineNumber);
        String condId = node.condition.accept(this);
        String thenId = node.thenBranch.accept(this);
        String elseId = node.elseBranch.accept(this);
        addEdge(nodeId, condId);
        addEdge(nodeId, thenId);
        addEdge(nodeId, elseId);
        return nodeId;
    }

    @Override
    public String visit(WhileNode node) {
        String nodeId = newNodeId(node, "While\\nLine: " + node.lineNumber);
        String condId = node.condition.accept(this);
        String bodyId = node.body.accept(this);
        addEdge(nodeId, condId);
        addEdge(nodeId, bodyId);
        return nodeId;
    }

    @Override
    public String visit(BlockNode node) {
        String nodeId = newNodeId(node, "Block\\nLine: " + node.lineNumber);
        for (ExpressionNode expr : node.expressions) {
            String exprId = expr.accept(this);
            addEdge(nodeId, exprId);
        }
        return nodeId;
    }

    @Override
    public String visit(LetNode node) {
        String nodeId = newNodeId(node, "Let\\nLine: " + node.lineNumber);
        for (LetDeclNode decl : node.declarations) {
            String declId = decl.accept(this);
            addEdge(nodeId, declId);
        }
        String bodyId = node.body.accept(this);
        addEdge(nodeId, bodyId);
        return nodeId;
    }

    @Override
    public String visit(LetDeclNode node) {
        String label = "LetDecl: " + node.name + "\\nType: " + node.type + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        if (node.init != null) {
            String initId = node.init.accept(this);
            addEdge(nodeId, initId);
        }
        return nodeId;
    }

    @Override
    public String visit(CaseNode node) {
        String nodeId = newNodeId(node, "Case\\nLine: " + node.lineNumber);
        String exprId = node.expression.accept(this);
        addEdge(nodeId, exprId);
        for (CaseBranchNode branch : node.branches) {
            String branchId = branch.accept(this);
            addEdge(nodeId, branchId);
        }
        return nodeId;
    }

    @Override
    public String visit(CaseBranchNode node) {
        String label = "CaseBranch: " + node.name + "\\nType: " + node.type + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        String bodyId = node.body.accept(this);
        addEdge(nodeId, bodyId);
        return nodeId;
    }

    @Override
    public String visit(NewNode node) {
        String label = "New: " + node.type + "\\nLine: " + node.lineNumber;
        return newNodeId(node, label);
    }

    @Override
    public String visit(UnaryOpNode node) {
        String label = "UnaryOp: " + node.operator + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        String operandId = node.operand.accept(this);
        addEdge(nodeId, operandId);
        return nodeId;
    }

    @Override
    public String visit(BinaryOpNode node) {
        String label = "BinaryOp: " + node.operator + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        String leftId = node.left.accept(this);
        String rightId = node.right.accept(this);
        addEdge(nodeId, leftId);
        addEdge(nodeId, rightId);
        return nodeId;
    }

    @Override
    public String visit(AssignmentNode node) {
        String label = "Assignment: " + node.name + "\\nLine: " + node.lineNumber;
        String nodeId = newNodeId(node, label);
        String valueId = node.value.accept(this);
        addEdge(nodeId, valueId);
        return nodeId;
    }

    @Override
    public String visit(IdNode node) {
        String label = "Id: " + node.name + "\\nLine: " + node.lineNumber;
        return newNodeId(node, label);
    }

    @Override
    public String visit(IntNode node) {
        String label = "Int: " + node.value + "\\nLine: " + node.lineNumber;
        return newNodeId(node, label);
    }

    @Override
    public String visit(StringNode node) {
        String label = "String: \"" + escape(node.value) + "\"\\nLine: " + node.lineNumber;
        return newNodeId(node, label);
    }

    @Override
    public String visit(BoolNode node) {
        String label = "Bool: " + node.value + "\\nLine: " + node.lineNumber;
        return newNodeId(node, label);
    }
}