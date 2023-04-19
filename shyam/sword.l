/*Shortest word entered*/

%{
#include<stdio.h>
#include<stdlib.h>
int long_length = 1000;
char shortest_Word[100];
int size = 0;
%}

%%
[a-zA-Z]+ {size = yyleng;

if(size<long_length)

{
long_length = size;
strcpy (shortest_Word,yytext);
}
}
%%

int main()
{
 yylex();
 printf("%s",shortest_Word);
 return 0;
}

int yywrap()
{
return -1;
}
