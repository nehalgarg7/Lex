%{
#include<stdio.h>
int sc=0, wc=0, lc=0,ch=0,tc=0;
%}

%%
"\n" {lc++; ch+=yyleng;}
[ \t] {sc++; ch+=yyleng;}
[^\t] {tc++; ch+=yyleng;}
[^\t\n ]+ {wc++; ch+=yyleng;}
%%

int main()
{
printf("Enter:");
yylex();
printf("Number of space count , word count, line count, character count, tab count is %d %d %d %d %d",sc,wc,lc,ch,tc);
return 0;
}

int yywrap()
{
return 1;
}
