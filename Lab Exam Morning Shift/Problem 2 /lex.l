%option noyywrap
%{
 #include <string.h>
 #include "parser.tab.h"
%}


ws [ \t\n]
delim ({ws})*

%%
{delim} {}
[a-z]+          { printf("Value : ");return id; }      
[A-Z]+          {return id ; }
"*"             { return multiplication ; }
"+"             { return addition ; } 
"("        { return openBR ; } 
")"         { return closeBR ; }
%%  




