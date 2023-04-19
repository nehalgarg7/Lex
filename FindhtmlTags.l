%{
#include<stdio.h>
%}

%%
("<")([^">"]*)(">") {printf("%s is a html tag",yytext);}
.* ;
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
