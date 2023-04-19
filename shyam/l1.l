%{
#include<stdio.h>
%}

%%
.*("Hi").* {printf("%s",yytext);}
.* {printf("HI NOT FOUND");}
%%

int main()
{
printf("Hello before yylex() calls:");
yylex();
printf("Hello after yylex() calls:");
return 0;
}

int yywrap()
{
return 1;}
