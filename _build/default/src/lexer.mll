{
open Parser
exception Error of string
}

let white = [' ' '\t' '\n']+
let digit = ['0'-'9']
let realNum = '-'?digit*('.'digit*)?
let letter = ['a'-'z' 'A'-'Z']

rule read =
	parse
	| white		{ read lexbuf }
	| "+"		{ PLUS }
	| "-"		{ MINUS }
	| "*"		{ TIMES }
	| "/"		{ DIVIDE }
	| "^"		{ CARET }
	| "("		{ LPAREN }
	| ")"		{ RPAREN }
	| "sin"		{ SIN }
	| "cos"		{ COS }
	| "tan"		{ TAN }
	| "csc"		{ CSC }
	| "sec"		{ SEC }
	| "cot"		{ COT }
	| "sqrt"	{ SQRT }
	| "ln"		{ LN }
	| "log"		{ LOG10 }
	| "e"		{ REAL (exp 1.0) }
	| "pi"		{ REAL (atan2 0.0 (-1.0)) }
	| realNum	{ REAL (float_of_string (Lexing.lexeme lexbuf)) }
	| letter	{ VAR (
					(* verify that the lexeme is only one char *)
					let rawStr = Lexing.lexeme lexbuf in
					let len = String.length rawStr in
					if len = 0 then
						(*this should not happen*)
						raise (Error "At offset %d: variable has length 0")
					else
					if len <> 1 then
						raise (Error (Printf.sprintf
							"Variable '%s' is more than one letter." rawStr))
						else String.get rawStr 0
					) }
	| eof		{ EOF }
	| _			{ raise (Error (Printf.sprintf "At offset %d: unexpected character." (Lexing.lexeme_start lexbuf))) }
