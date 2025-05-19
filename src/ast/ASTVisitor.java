package ast;

public interface ASTVisitor<T> {
    T visit(ProgramNode node);
    T visit(ClassNode node);
    T visit(MethodNode node);
    T visit(AttributeNode node);
    T visit(FormalNode node);
    T visit(DispatchNode node);
    T visit(MethodCallNode node);
    T visit(IfElseNode node);
    T visit(WhileNode node);
    T visit(BlockNode node);
    T visit(LetNode node);
    T visit(LetDeclNode node);
    T visit(CaseNode node);
    T visit(CaseBranchNode node);
    T visit(NewNode node);
    T visit(UnaryOpNode node);
    T visit(BinaryOpNode node);
    T visit(AssignmentNode node);
    T visit(IdNode node);
    T visit(IntNode node);
    T visit(StringNode node);
    T visit(BoolNode node);
}