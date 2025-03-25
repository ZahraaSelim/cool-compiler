import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.antlr.v4.gui.TreeViewer;
import java.nio.file.*;
import java.util.*;

public class CoolTester {
    public static void main(String[] args) {
        try {
            String fileName = "test.cool";
            String code = Files.readString(Path.of(fileName));

            CharStream input = CharStreams.fromString(code);

            CoolLexer lexer = new CoolLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);

            CoolParser parser = new CoolParser(tokens);

            ParseTree tree = parser.program();

            System.out.println("Parse Tree:");
            System.out.println(tree.toStringTree(parser));

            List<String> ruleNames = Arrays.asList(parser.getRuleNames());
            TreeViewer viewer = new TreeViewer(ruleNames, tree);
            viewer.open();

            CoolParserBaseVisitor<Void> visitor = new CoolVisitor();
            visitor.visit(tree);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
