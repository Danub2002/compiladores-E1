#include <stdio.h>
#include "calc.tab.h"

int main() {
    int parse_result = yyparse();
    if (parse_result == 0) {
        printf("programa sem erros sintáticos\n");
    } else {
        printf("programa com erros sintáticos\n");
    }
    return 0;
}