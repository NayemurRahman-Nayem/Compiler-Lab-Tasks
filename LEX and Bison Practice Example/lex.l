%option noyywrap
%{
 #include <string.h>
 #include "parser.tab.h"
%}


ws [ \t\n]
nayem ({ws})*

%%
{nayem} {}
"dog"|"cat"|"mouse" { return T_NOUN;}
"sees"|"hates"|"sneezes" {return T_VERB;} 
"the" { return T_DET;} 
%%




