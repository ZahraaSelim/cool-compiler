lexer grammar CoolLexer;

// KEYWORDS (case-insensitive)
CLASS    : C L A S S;
ELSE     : E L S E;
FI       : F I;
IF       : I F;
IN       : I N;
INHERITS : I N H E R I T S;
ISVOID   : I S V O I D;
LET      : L E T;
LOOP     : L O O P;
POOL     : P O O L;
THEN     : T H E N;
WHILE    : W H I L E;
CASE     : C A S E;
ESAC     : E S A C;
NEW      : N E W;
OF       : O F;
NOT      : N O T;

// CASE-SENSITIVE KEYWORDS
TRUE  : 't' R U E;
FALSE : 'f' A L S E;

// IDENTIFIERS & SPECIAL TOKENS
INT       : [0-9]+;
ID        : [a-z][a-zA-Z0-9_]*;
TYPE      : [A-Z][a-zA-Z0-9_]*;
SELF      : 'self';
SELF_TYPE : 'SELF_TYPE';

// STRINGS
STRING : '"' (STRING_CONTENT | ESCAPE_SEQUENCE)* '"';

fragment STRING_CONTENT : ~["\\\n\r\u0000];
fragment ESCAPE_SEQUENCE : '\\' (['"\\] | 'b' | 't' | 'n' | 'f');

UNTERMINATED_STRING : '"' (STRING_CONTENT | ESCAPE_SEQUENCE)*  ('\n' | EOF) {
    System.err.println("Error: Unterminated string detected!");
};

// COMMENTS
SINGLECOMMENT : '--' ~[\r\n]* -> skip;
MULTICOMMENT  : '(*' .*? '*)' -> skip;

// OPERATORS & SPECIAL SYMBOLS
PLUS      : '+' ;
MINUS     : '-' ;
TIMES     : '*' ;
DIVIDE    : '/' ;
TILDE     : '~' ;
LT        : '<' ;
LEQ       : '<=';
EQ        : '=' ;
LPAREN    : '(' ;
RPAREN    : ')' ;
LBRACE    : '{' ;
RBRACE    : '}' ;
COLON     : ':' ;
COMMA     : ',' ;
ARROW     : '<-';
DOT       : '.' ;
SEMICOLON : ';' ;
AT        : '@' ;
CASEASSIGN: '=>';

// WHITESPACE
WS : [ \t\r\n\f\u000B]+ -> skip;

// FRAGMENTS (FOR CASE-INSENSITIVITY)
fragment A : [aA];
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment L : [lL];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
