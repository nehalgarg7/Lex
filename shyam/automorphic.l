%{
#include<stdio.h>
int a=0,b=0;
void automorphic();
%}

%%
[0-9]+ {a=atoi(yytext); b=yyleng; automorphic();}
%%

void automorphic()
{
int sq = a * a;
int n = 1;
for(int i=0;i<b;i++)
{
n = n*10;
}
if(sq%n==a)
{
printf("Is automorphic");
}
else
{
printf("Is not automorphic");
}
}

int main()
{
 yylex();
 return 0;
}

int yywrap()
{
return -1;
}
