%{
	int k;
%}


%%

-?[0-9]+					{	k = atoi(yytext);
										printf("%d", k%7==0?k+3:k);
									}
-?[0-9.]+					ECHO;

[A-Za-z][A-Za-z0-9]+		ECHO;

%%

int main(){
	yylex();
	printf("\n");
	return 0;
}
