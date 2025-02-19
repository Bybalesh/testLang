```yacc
%{
#include <stdio.h>
%}

%token NUMBER
%left '+' '-'
%left '*' '/'

%%
expression : expression '+' expression { $$ = $1 + $3; }
           | expression '-' expression { $$ = $1 - $3; }
           | expression '*' expression { $$ = $1 * $3; }
           | expression '/' expression { $$ = $1 / $3; }
           | '(' expression ')' { $$ = $2; }
           | NUMBER { $$ = $1; }
           ;
