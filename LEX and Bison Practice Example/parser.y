%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror( char *);
%}

%token   T_DET T_NOUN T_VERB 
%start start

%%
start:statement { printf("Sentence is valid\n"); }  
statement:NP VP ;
NP:Det N ; 
VP:V|V NP ; 
N:T_NOUN ; 
V:T_VERB ; 
Det:T_DET ; 
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

