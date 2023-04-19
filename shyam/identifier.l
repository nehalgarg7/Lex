%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
[a-zA-Z_][0-9a-zA-Z_]* {printf("%s is a valid identifer",yytext);}
.* {printf("Not a valid identifier");}
%%

int main()
{
 yylex();
 return 0;
}

int yywrap()
{
return -1;
}
