import org.antlr.v4.runtime.tree.ParseTree;
import java.util.List;

public class CoolVisitor extends CoolParserBaseVisitor<Void> {

    @Override
    public Void visitProgram(CoolParser.ProgramContext ctx) {
        System.out.println("Visiting program...");
        return visitChildren(ctx);
    }

    @Override
    public Void visitClass(CoolParser.ClassContext ctx) {
        System.out.println("Visiting class: " + ctx.TYPE(0).getText());
        if (ctx.INHERITS() != null) {
            System.out.println("Inherits from: " + ctx.TYPE(1).getText());
        }
        return visitChildren(ctx);
    }


    @Override
    public Void visitMethod(CoolParser.MethodContext ctx) {
        System.out.println("Visiting method: " + ctx.ID().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitAttribute(CoolParser.AttributeContext ctx) {
        System.out.println("Visiting attribute: " + ctx.ID().getText() + " of type " + ctx.TYPE().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitFormal(CoolParser.FormalContext ctx) {
        System.out.println("Formal parameter: " + ctx.ID().getText() + " of type " + ctx.TYPE().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitAssignment(CoolParser.AssignmentContext ctx) {
        System.out.println("Assignment: " + ctx.ID().getText() + " <- " + ctx.expr().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitDispatch(CoolParser.DispatchContext ctx) {
        System.out.println("Dispatch method call: " + ctx.ID().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitIfElse(CoolParser.IfElseContext ctx) {
        System.out.println("If-Else condition detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitWhile(CoolParser.WhileContext ctx) {
        System.out.println("While loop detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitCase(CoolParser.CaseContext ctx) {
        System.out.println("Case expression detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitNew(CoolParser.NewContext ctx) {
        System.out.println("Creating new instance of: " + ctx.TYPE().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitNegation(CoolParser.NegationContext ctx) {
        System.out.println("Negation (~) applied to: " + ctx.expr().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitIsvoid(CoolParser.IsvoidContext ctx) {
        System.out.println("Checking if void: " + ctx.expr().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitMultiplication(CoolParser.MultiplicationContext ctx) {
        System.out.println("Multiplication operation detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitDivision(CoolParser.DivisionContext ctx) {
        System.out.println("Division operation detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitAddition(CoolParser.AdditionContext ctx) {
        System.out.println("Addition operation detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitSubtraction(CoolParser.SubtractionContext ctx) {
        System.out.println("Subtraction operation detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitLessThan(CoolParser.LessThanContext ctx) {
        System.out.println("Less than comparison detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitLessThanEqual(CoolParser.LessThanEqualContext ctx) {
        System.out.println("Less than or equal comparison detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitEqual(CoolParser.EqualContext ctx) {
        System.out.println("Equality comparison detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitNot(CoolParser.NotContext ctx) {
        System.out.println("Logical NOT applied to: " + ctx.expr().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitBlock(CoolParser.BlockContext ctx) {
        System.out.println("Block statement detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitLet(CoolParser.LetContext ctx) {
        System.out.println("Let expression detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitString(CoolParser.StringContext ctx) {
        System.out.println("String literal: " + ctx.STRING().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitInteger(CoolParser.IntegerContext ctx) {
        System.out.println("Integer literal: " + ctx.INT().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitTrue(CoolParser.TrueContext ctx) {
        System.out.println("Boolean literal: true");
        return visitChildren(ctx);
    }

    @Override
    public Void visitFalse(CoolParser.FalseContext ctx) {
        System.out.println("Boolean literal: false");
        return visitChildren(ctx);
    }

    @Override
    public Void visitIdentifier(CoolParser.IdentifierContext ctx) {
        System.out.println("Identifier: " + ctx.ID().getText());
        return visitChildren(ctx);
    }

    @Override
    public Void visitParentheses(CoolParser.ParenthesesContext ctx) {
        System.out.println("Parentheses expression detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitExprList(CoolParser.ExprListContext ctx) {
        System.out.println("Expression list detected");
        return visitChildren(ctx);
    }

    @Override
    public Void visitLetDecl(CoolParser.LetDeclContext ctx) {
        System.out.println("Let declaration: " + ctx.ID().getText() + " of type " + ctx.TYPE().getText());
        return visitChildren(ctx);
    }
}
