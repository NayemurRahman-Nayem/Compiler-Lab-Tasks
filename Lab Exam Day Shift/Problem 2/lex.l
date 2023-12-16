%option noyywrap
%{
 #include <string.h>
 #include "parser.tab.h"
%}


ws [ \t\n]
delim ({ws})*

%%
{delim} {}
[a]+         { printf("Token1 : %s\n", yytext); return id1 ; }    
[b]+         { printf("Token2 : %s\n", yytext); return id2 ; }  

%%  




