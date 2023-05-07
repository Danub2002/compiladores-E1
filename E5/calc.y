%{
#include <stdio.h>

int yylex();

void yyerror(const char* msg) {
      fprintf(stderr, "%s\n", msg);
}

%}

%token NUMBER
%token ADD SUB MUL DIV
%token RPAR LPAR
%token ERROR
%token EOL


%%

calc : expr EOL {return 0;}
      ;
expr : expr ADD expr 
      | expr SUB expr 
      | RPAR expr LPAR
      | NUMBER
      ;
%%
