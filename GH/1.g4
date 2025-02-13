```antlr4
grammar MiniCalc;

// Parser rules
expression
  : term (('+' | '-') term)*
grammar Calculator;

prog: expr EOF;

expr: expr op=MULT expr     # MultExpr
    | expr op=DIV expr      # DivExpr
    | expr op=ADD expr      # AddExpr
    | expr op=SUB expr      # SubExpr
    | INT                   # IntExpr
    ;

MULT : '*';
DIV : '/';
ADD : '+';
SUB : '-';
INT : [0-9]+;
WS : [ \t\r\n]+ -> skip;
