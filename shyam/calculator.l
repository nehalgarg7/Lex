%{
#include<stdio.h>
float a,b,result=0;
int op=0;
int bigit();
%}

digi [0-9]+|([0-9]*)(".")([0-9]+)
add "+"
sub "-"
eq "="
%%
{digi} {bigit();}
{add} {op=1;}
{sub} {op=2;}
[("\=")\n] {printf("%f",result);}
%%

int bigit()
{
if(op==0)
{
a = atof(yytext);
}
else
{
b= atof(yytext);
switch(op)
{
case 1: a = a + b; result=a; break;
case 2: a = a - b; result=a; break;
}
op=0;
}
return -1;
}


int main(int argv, char* argc[])
{
yylex();
return 0;
}

int yywrap()
{
return 1;
}
