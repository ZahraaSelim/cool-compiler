package ast;

import parser.CoolParser;
import parser.CoolParserBaseVisitor;

import java.util.*;

public class ASTBuilder extends CoolParserBaseVisitor<ASTNode> {
    @Override
    public ProgramNode visitProgram(CoolParser.ProgramContext ctx) {
        List<ClassNode> classes = new ArrayList<>();
        for (CoolParser.ClassContext classCtx : ctx.class_()) {
            classes.add((ClassNode) visit(classCtx));
        }
        int lineNumber = ctx.start.getLine();
        return new ProgramNode(classes, lineNumber);
    }

    @Override
    public ClassNode visitClass(CoolParser.ClassContext ctx) {
        String name = ctx.TYPE(0).getText();
        String parent = ctx.INHERITS() != null ? ctx.TYPE(1).getText() : null;
        List<FeatureNode> features = new ArrayList<>();
        for (CoolParser.FeatureContext featureCtx : ctx.feature()) {
            features.add((FeatureNode) visit(featureCtx));
        }
        int lineNumber = ctx.start.getLine();
        return new ClassNode(name, parent, features, lineNumber);
    }

    @Override
    public FeatureNode visitMethod(CoolParser.MethodContext ctx) {
        String name = ctx.ID().getText();
        List<FormalNode> formals = new ArrayList<>();
        if (ctx.formal() != null) {
            for (CoolParser.FormalContext formalCtx : ctx.formal()) {
                formals.add((FormalNode) visit(formalCtx));
            }
        }
        String returnType = ctx.TYPE() != null ? ctx.TYPE().getText() : ctx.SELF_TYPE().getText();
        ExpressionNode body = (ExpressionNode) visit(ctx.expr());
        int lineNumber = ctx.start.getLine();
        return new MethodNode(name, formals, returnType, body, lineNumber);
    }

    @Override
    public FeatureNode visitAttribute(CoolParser.AttributeContext ctx) {
        String name = ctx.ID().getText();
        String type = ctx.TYPE() != null ? ctx.TYPE().getText() : ctx.SELF_TYPE().getText();
        ExpressionNode init = ctx.expr() != null ? (ExpressionNode) visit(ctx.expr()) : null;
        int lineNumber = ctx.start.getLine();
        return new AttributeNode(name, type, init, lineNumber);
    }

    @Override
    public FormalNode visitFormal(CoolParser.FormalContext ctx) {
        String name = ctx.ID().getText();
        String type = ctx.TYPE() != null ? ctx.TYPE().getText() : ctx.SELF_TYPE().getText();
        int lineNumber = ctx.start.getLine();
        return new FormalNode(name, type, lineNumber);
    }

    @Override
    public ExpressionNode visitDispatch(CoolParser.DispatchContext ctx) {
        ExpressionNode receiver = (ExpressionNode) visit(ctx.expr());
        String type = ctx.TYPE() != null ? ctx.TYPE().getText() : null;
        String method = ctx.ID().getText();
        List<ExpressionNode> args = new ArrayList<>();
        if (ctx.exprList() != null) {
            for (CoolParser.ExprContext exprCtx : ctx.exprList().expr()) {
                args.add((ExpressionNode) visit(exprCtx));
            }
        }
        int lineNumber = ctx.start.getLine();
        return new DispatchNode(receiver, type, method, args, lineNumber);
    }

    @Override
    public ExpressionNode visitMethodCall(CoolParser.MethodCallContext ctx) {
        String method = ctx.ID().getText();
        List<ExpressionNode> args = new ArrayList<>();
        if (ctx.exprList() != null) {
            for (CoolParser.ExprContext exprCtx : ctx.exprList().expr()) {
                args.add((ExpressionNode) visit(exprCtx));
            }
        }
        int lineNumber = ctx.start.getLine();
        return new MethodCallNode(method, args, lineNumber);
    }

    @Override
    public ExpressionNode visitIfElse(CoolParser.IfElseContext ctx) {
        ExpressionNode condition = (ExpressionNode) visit(ctx.expr(0));
        ExpressionNode thenBranch = (ExpressionNode) visit(ctx.expr(1));
        ExpressionNode elseBranch = (ExpressionNode) visit(ctx.expr(2));
        int lineNumber = ctx.start.getLine();
        return new IfElseNode(condition, thenBranch, elseBranch, lineNumber);
    }

    @Override
    public ExpressionNode visitWhile(CoolParser.WhileContext ctx) {
        ExpressionNode condition = (ExpressionNode) visit(ctx.expr(0));
        ExpressionNode body = (ExpressionNode) visit(ctx.expr(1));
        int lineNumber = ctx.start.getLine();
        return new WhileNode(condition, body, lineNumber);
    }

    @Override
    public ExpressionNode visitBlock(CoolParser.BlockContext ctx) {
        List<ExpressionNode> expressions = new ArrayList<>();
        for (CoolParser.ExprContext exprCtx : ctx.expr()) {
            expressions.add((ExpressionNode) visit(exprCtx));
        }
        int lineNumber = ctx.start.getLine();
        return new BlockNode(expressions, lineNumber);
    }

    @Override
    public ExpressionNode visitLet(CoolParser.LetContext ctx) {
        List<LetDeclNode> declarations = new ArrayList<>();
        for (CoolParser.LetDeclContext declCtx : ctx.letDecl()) {
            declarations.add((LetDeclNode) visit(declCtx));
        }
        ExpressionNode body = (ExpressionNode) visit(ctx.expr());
        int lineNumber = ctx.start.getLine();
        return new LetNode(declarations, body, lineNumber);
    }

    @Override
    public LetDeclNode visitLetDecl(CoolParser.LetDeclContext ctx) {
        String name = ctx.ID().getText();
        String type = ctx.TYPE() != null ? ctx.TYPE().getText() : ctx.SELF_TYPE().getText();
        ExpressionNode init = ctx.expr() != null ? (ExpressionNode) visit(ctx.expr()) : null;
        int lineNumber = ctx.start.getLine();
        return new LetDeclNode(name, type, init, lineNumber);
    }

    @Override
    public ExpressionNode visitCase(CoolParser.CaseContext ctx) {
        ExpressionNode expression = (ExpressionNode) visit(ctx.expr());
        List<CaseBranchNode> branches = new ArrayList<>();
        for (CoolParser.CaseBranchContext branchCtx : ctx.caseBranch()) {
            branches.add((CaseBranchNode) visit(branchCtx));
        }
        int lineNumber = ctx.start.getLine();
        return new CaseNode(expression, branches, lineNumber);
    }

    @Override
    public CaseBranchNode visitCaseBranch(CoolParser.CaseBranchContext ctx) {
        String name = ctx.ID().getText();
        String type = ctx.TYPE() != null ? ctx.TYPE().getText() : ctx.SELF_TYPE().getText();
        ExpressionNode body = (ExpressionNode) visit(ctx.expr());
        int lineNumber = ctx.start.getLine();
        return new CaseBranchNode(name, type, body, lineNumber);
    }

    @Override
    public ExpressionNode visitNew(CoolParser.NewContext ctx) {
        String type = ctx.TYPE() != null ? ctx.TYPE().getText() : ctx.SELF_TYPE().getText();
        int lineNumber = ctx.start.getLine();
        return new NewNode(type, lineNumber);
    }

    @Override
    public ExpressionNode visitNegation(CoolParser.NegationContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new UnaryOpNode("~", (ExpressionNode) visit(ctx.expr()), lineNumber);
    }

    @Override
    public ExpressionNode visitIsvoid(CoolParser.IsvoidContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new UnaryOpNode("isvoid", (ExpressionNode) visit(ctx.expr()), lineNumber);
    }

    @Override
    public ExpressionNode visitMultiplication(CoolParser.MultiplicationContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("*", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitDivision(CoolParser.DivisionContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("/", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitAddition(CoolParser.AdditionContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("+", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitSubtraction(CoolParser.SubtractionContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("-", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitLessThan(CoolParser.LessThanContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("<", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitLessThanEqual(CoolParser.LessThanEqualContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("<=", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitEqual(CoolParser.EqualContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BinaryOpNode("=", (ExpressionNode) visit(ctx.expr(0)), (ExpressionNode) visit(ctx.expr(1)), lineNumber);
    }

    @Override
    public ExpressionNode visitNot(CoolParser.NotContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new UnaryOpNode("not", (ExpressionNode) visit(ctx.expr()), lineNumber);
    }

    @Override
    public ExpressionNode visitAssignment(CoolParser.AssignmentContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new AssignmentNode(ctx.ID().getText(), (ExpressionNode) visit(ctx.expr()), lineNumber);
    }

    @Override
    public ExpressionNode visitParentheses(CoolParser.ParenthesesContext ctx) {
        return (ExpressionNode) visit(ctx.expr());
    }

    @Override
    public ExpressionNode visitIdentifier(CoolParser.IdentifierContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new IdNode(ctx.ID().getText(), lineNumber);
    }

    @Override
    public ExpressionNode visitInteger(CoolParser.IntegerContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new IntNode(Integer.parseInt(ctx.INT().getText()), lineNumber);
    }

    @Override
    public ExpressionNode visitString(CoolParser.StringContext ctx) {
        String text = ctx.STRING().getText();
        int lineNumber = ctx.start.getLine();
        return new StringNode(text.substring(1, text.length() - 1), lineNumber);
    }

    @Override
    public ExpressionNode visitTrue(CoolParser.TrueContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BoolNode(true, lineNumber);
    }

    @Override
    public ExpressionNode visitFalse(CoolParser.FalseContext ctx) {
        int lineNumber = ctx.start.getLine();
        return new BoolNode(false, lineNumber);
    }
}