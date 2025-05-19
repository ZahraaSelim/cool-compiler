parser grammar CoolParser;

options { tokenVocab=CoolLexer; }

program
    : class+
    ;

class
    : CLASS TYPE (INHERITS TYPE)? LBRACE feature* RBRACE SEMICOLON
    ;

feature
    : ID LPAREN (formal (COMMA formal)*)? RPAREN COLON (TYPE | SELF_TYPE) LBRACE expr RBRACE SEMICOLON  # Method
    | ID COLON (TYPE | SELF_TYPE) (ARROW expr)? SEMICOLON                                               # Attribute
    ;

formal
    : ID COLON (TYPE | SELF_TYPE)
    ;

expr
    : expr (AT TYPE)? DOT ID LPAREN exprList? RPAREN                 # Dispatch
    | ID LPAREN exprList? RPAREN                                     # MethodCall
    | IF expr THEN expr ELSE expr FI                                 # IfElse
    | WHILE expr LOOP expr POOL                                      # While
    | LBRACE (expr SEMICOLON)+ RBRACE                                # Block
    | LET letDecl (COMMA letDecl)* IN expr                           # Let
    | CASE expr OF caseBranch+ ESAC                                  # Case
    | NEW (TYPE | SELF_TYPE)                                         # New
    | TILDE expr                                                     # Negation
    | ISVOID expr                                                    # Isvoid
    | expr TIMES expr                                                # Multiplication
    | expr DIVIDE expr                                               # Division
    | expr PLUS expr                                                 # Addition
    | expr MINUS expr                                                # Subtraction
    | expr LT expr                                                   # LessThan
    | expr LEQ expr                                                  # LessThanEqual
    | expr EQ expr                                                   # Equal
    | NOT expr                                                       # Not
    | ID ARROW expr                                                  # Assignment
    | LPAREN expr RPAREN                                             # Parentheses
    | ID                                                             # Identifier
    | INT                                                            # Integer
    | STRING                                                         # String
    | TRUE                                                           # True
    | FALSE                                                          # False
    ;

exprList
    : expr (COMMA expr)*
    ;

letDecl
    : ID COLON (TYPE | SELF_TYPE) (ARROW expr)?
    ;

caseBranch
    : ID COLON (TYPE | SELF_TYPE) CASEASSIGN expr SEMICOLON
    ;