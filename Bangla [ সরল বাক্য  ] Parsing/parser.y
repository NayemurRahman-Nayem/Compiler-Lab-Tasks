%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror( char *);
%}

%token   BEKTI BOSTHU KRIA OSOMAPIKA SORBONAME PUNCTUATION
%start start

%%
start:statement { printf("Sentence is valid\n");};
statement:BEKTI X| SORBONAME X| BEKTI Y| SORBONAME Y ;
X:BOSTHU Z|BOSTHU Y ;
Z:OSOMAPIKA BOSTHU Y ;
Y:KRIA PUNCTUATION ;  
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