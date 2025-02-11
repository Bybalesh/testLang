```antlr4
grammar MiniCalc;

// Parser rules
expression
  : term (('+' | '-') term)*
  ;

term
  : factor (('' | '/') factor)
  ;

factor
  : INTEGER
  | '(' expression ')'
  ;

// Lexer rules (tokens)
INTEGER : [0-9]+ ;
ID   : [a-zA-Z]+ ;
WS   : [ \t\r\n]+ -> skip ; // skip whitespace

```