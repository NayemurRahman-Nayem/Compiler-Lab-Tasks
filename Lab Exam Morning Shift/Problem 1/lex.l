%{
#include <stdio.h>
%}

%%

"printf"    { printf("Token: KEYWORD_PRINTF, Value: %s\n", yytext); }
"("         { printf("Token: LEFT_PAREN, Value: %s\n", yytext); }
")"         { printf("Token: RIGHT_PAREN, Value: %s\n", yytext); }
\"([^"]*)\" { printf("Token: STRING_LITERAL, Value: %s\n", yytext); }
"%[a-zA-Z]" { printf("Token: FORMAT_SPECIFIER, Value: %s\n", yytext); }
","         { printf("Token: COMMA, Value: %s\n", yytext); }
"&"         { printf("Token: ADDR, Value: %s\n",yytext) ;}
";"          { printf("Token: sEMICOMMA, Value: %s\n", yytext); }
"&[a-zA-Z_][a-zA-Z0-9_]*" { printf("Token: ADDRESS_OPERATOR, Value: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("Token: IDENTIFIER, Value: %s\n", yytext); }
[0-9]+                   { printf("Token: INTEGER_LITERAL, Value: %s\n", yytext); }
[ \t\n]                  ;  // Ignore whitespace
.                        { printf("Error: Unrecognized token: %s\n", yytext); }

%%


int yywrap(void) {
    return 1;
}

int main() {
    yylex();
    return 0;
}
