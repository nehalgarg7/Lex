/*Remove comments*/

%{
#include<stdio.h>
%}

%%
[ \n\t]+ {fprintf(yyout,"%s","");}
.* {fprintf(yyout,"%s",yytext);}
%%

int main()
{
 extern FILE *yyin,*yyout;
 yyin = fopen("input.txt", "r");
 yyout = fopen("output2.txt", "w");
 yylex(); 
 return 0;
}

int yywrap()
{
return -1;
}
