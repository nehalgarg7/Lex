/*Valid email*/
%{
#include<stdio.h>
%}

%%
([a-zA-Z0-9_]+)("@")(([a-zA-Z]){4,6})(".")("com"|"in"|"gov") {printf("%s is accepted",yytext);}
.* {printf("%s is not accepted",yytext);}
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
