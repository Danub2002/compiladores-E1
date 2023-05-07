/* 
 * Example 1-4. Calculator scanner fb1-4.l, from Levine book, p. 7-8.
 * Scanner recognizes tokens for the calculator and prints them out.
 *  - yylval is the variable that stores the token value, an integer;
*/
%option noyywrap nodefault yylineno

%{
#include "calc.tab.h"

void yyerror(char *s);

%}

DIGIT ([0-9]+\.[0-9][0-9]?|[0-9]+)                   
%%

"+"     { return ADD; }
"-"     { return SUB; }
"*"	{ return MUL; }
"/"	{ return DIV; }
"(" { return RPAR;}
")" { return LPAR; }

{DIGIT} { return NUMBER; }

[ \t]   { /* ignore whitespace */ }

\n      { return EOL; } 
.   	{ return ERROR; }
%%

