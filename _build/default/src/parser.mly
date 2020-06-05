%{
open Ast
%}

%token <float> REAL
%token <char> VAR
%token PLUS
%token MINUS
%token TIMES
%token DIVIDE
%token CARET
%token LPAREN
%token RPAREN
%token SIN
%token COS
%token TAN
%token CSC
%token SEC
%token COT
%token SQRT
%token LN
%token LOG10
%token EOF

(*I don't think I need any %nonassoc here*)
%left PLUS MINUS
%left TIMES DIVIDE
%right CARET

(*declaration of starting point*)

%start <Ast.expr> handleEOF

%%

handleEOF:
	| e = expr; EOF { e }

expr:
	| r = REAL { Real r }
	| x = VAR { Var x }
	| e1 = expr; PLUS; e2 = expr { Add(e1,e2) }
	| e1 = expr; MINUS; e2 = expr { Sub(e1,e2) }
	| e1 = expr; TIMES; e2 = expr { Mul(e1,e2) }
	| e1 = expr; DIVIDE; e2 = expr { Div(e1,e2) }
	| e1 = expr; CARET; e2 = expr { Pow(e1,e2) }
	| SIN; LPAREN; e = expr; RPAREN { Sin(e) }
	| COS; LPAREN; e = expr; RPAREN { Cos(e) }
	| TAN; LPAREN; e = expr; RPAREN { Tan(e) }
	| CSC; LPAREN; e = expr; RPAREN { Csc(e) }
	| SEC; LPAREN; e = expr; RPAREN { Sec(e) }
	| COT; LPAREN; e = expr; RPAREN { Cot(e) }
	| SQRT; LPAREN; e = expr; RPAREN { Sqrt(e) }
	| LN; LPAREN; e=expr; RPAREN { Ln(e) }
	| LOG10; LPAREN; e=expr; RPAREN { Log10(e) }
