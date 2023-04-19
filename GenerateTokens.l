%{
#include<stdio.h>
int kc=0,tc=0;
%}

%%
"while"|"if"|"else" {printf("%s is a keyword",yytext);kc++;tc++;}
"int"|"float" {printf("%s is a keyword",yytext);kc++;tc++;}
[a-zA-Z][0-9a-zA-Z]* {printf("%s is a identifier",yytext);tc++;}
"="|"<="|"=="|"+"|"++"|"*" {printf("%s is a operator",yytext);tc++;}
[(){}|, ;] {printf("%s is an separator",yytext);tc++;}
\+?([0-9]+) {printf("%s is an integer",yytext);tc++;}
\+?(([0-9]*)(".")([0-9]+)) {printf("%s is a float",yytext);tc++;}
[\n] {int yywrap(){return 0;};}
%%
int main()
{
 yylex();
 printf("Total keywords and tokens are %d %d", kc,tc);
 return 0;
}

int yywrap()
{
return -1;
}
