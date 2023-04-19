%{
#include<stdio.h>
%}

%%
(aa|bb|(ab|ba)(aa|bb)*(ab|ba))* {printf("Valid\n");}
.* {printf(" not Valid\n");}
%%

int yywrap(){return 1;
}

int main()
{
yylex();
return 0;
}
