%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror( char *);
%}

%token id multiplication addition openBR closeBR 
%start start 

%%
start:expr          { printf("Parsing Successful !\n") ; }
expr: expr addition term | term ;                     // E -> E + T | T 
term: term multiplication factor | factor ;            // T -> T * F | F 
factor: openBR expr closeBR | id ;                     // F -> ( E ) | id



%%

void yyerror(char *s){
  fprintf(stderr,"error: %s\n",s);
}

int main(){
    freopen ("input.txt", "r", stdin );
    yyparse();
    //printf("parser is finished");
    //return 0;
}