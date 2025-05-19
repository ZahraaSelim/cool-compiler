package visualization;

import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;
import parser.CoolParser;
import java.io.*;
import java.util.*;

public class ParseTreeVisualizer {
    private StringBuilder dot;
    private int nodeCounter;
    private Map<ParseTree, Integer> nodeIds;

    public ParseTreeVisualizer() {
        dot = new StringBuilder();
        nodeCounter = 0;
        nodeIds = new HashMap<>();
    }

    public void visualize(ParseTree tree, String outputFile) {
        // Initialize DOT file
        dot.append("digraph ParseTree {\n");
        dot.append("    node [shape=box];\n");

        // Generate the graph
        visit(tree, 0);

        // Close DOT file
        dot.append("}\n");

        // Write to file
        try (PrintWriter writer = new PrintWriter(outputFile)) {
            writer.println(dot.toString());
            System.out.println("Parse tree visualized in " + outputFile);
        } catch (IOException e) {
            System.err.println("Error writing parse tree visualization to " + outputFile + ": " + e.getMessage());
        }
    }

    private String visit(ParseTree node, int depth) {
        if (nodeIds.containsKey(node)) {
            return nodeIds.get(node).toString();
        }

        String nodeId = Integer.toString(nodeCounter++);
        nodeIds.put(node, Integer.parseInt(nodeId));

        String label;
        if (node instanceof RuleNode) {
            RuleNode ruleNode = (RuleNode) node;
            String ruleName = CoolParser.ruleNames[ruleNode.getRuleContext().getRuleIndex()];
            label = ruleName + "\\nLine: " + node.getSourceInterval().a;
        } else if (node instanceof TerminalNode) {
            TerminalNode terminal = (TerminalNode) node;
            String tokenText = escape(terminal.getText());
            String tokenName = CoolParser.VOCABULARY.getSymbolicName(terminal.getSymbol().getType());
            if (tokenName == null) {
                tokenName = tokenText;
            }
            label = tokenName + "\\nText: " + tokenText + "\\nLine: " + terminal.getSymbol().getLine();
        } else {
            label = "Unknown\\nLine: " + node.getSourceInterval().a;
        }

        dot.append("    ").append(nodeId).append(" [label=\"").append(label).append("\"];\n");

        // Visit children
        for (int i = 0; i < node.getChildCount(); i++) {
            String childId = visit(node.getChild(i), depth + 1);
            dot.append("    ").append(nodeId).append(" -> ").append(childId).append(";\n");
        }

        return nodeId;
    }

    private String escape(String s) {
        if (s == null) return "";
        return s.replace("\"", "\\\"").replace("\n", "\\n").replace("\r", "\\r");
    }
}