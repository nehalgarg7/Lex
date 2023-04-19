%{
#include<stdio.h>
%}

%%
[aeiou][a-zA-Z0-9]* {printf("%s is accepted",yytext);}
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
