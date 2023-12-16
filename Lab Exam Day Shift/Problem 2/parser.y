%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror( char *);
%}

%token id1 id2   
%start start 

%%
start:expr  { printf("Parsing Successful !\n") ; }
expr: id1 B | id2 A ;                                  // S -> aB | bA 
A: id1 | id1 expr | id2 A A ;                          // A -> a  | aS | bAA
B: id2 | id2 expr | id1 B B ;                          // B -> b | bS | aBB
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