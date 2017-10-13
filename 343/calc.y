%{
	#include <stdio.h>
%}

%union{
	
	int iVal;
	float fVal;	

	float total;

}




%token <iVal> INT
%token <fVal> FLOAT
%token VAR
%token ADD
%token SUB
%token MULT
%token DIV
%token EQ
%token END




%%

program:	statement_list END
statement_list:	statement | statement statement_list
statement:	number operator number			{ total +=   }
	|	assign statement			{  } 
	|	assign var				{  }
	|	assign number				{  }
		;
assign:		VAR EQ
	;


number:		INT
	|	FLOAT
	;

operator:	ADD
	|	SUB
	|	MULT
	|	DIV
	;

VAR:		A
   	|	B
	|	C
	;





%%
