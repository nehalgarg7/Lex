/*Valid Parenthesis*/ 
%{
#include<stdio.h>
int a=0, b=0,c=0;
%}

%%
[()] {a++;}
[{}] {b++;}
\n ;
 .* {c++;}
%%

int main()
{
 yylex();
 if(a%2==0 && b%2==0)
 {
 printf("valid");
 }
 else
 {
  printf("Invalid");
 }
 return 0;
}

int yywrap()
{
return -1;
}
