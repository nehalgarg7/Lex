/*password checker*/

%{
#include<stdio.h>
int a=0,b=0,n=0,c=0,l=0;
%}

%%
[a-z] {a++;l++;}
[A-Z] {b++;l++;}
[0-9] {n++;l++;}
[!@#$%^&*()_+}{|":>?</*~`] {c++;l++;}
.*;
%%

int main()
{
 yylex();
 if(a>0 && b>0 && c>0 && n>0 && l>=8)
 {
 printf("Accepted");
 }
 return 0;
}

int yywrap()
{
return -1;
}
