
(* The type of tokens. *)

type token = 
  | VAR of (char)
  | TIMES
  | TAN
  | SQRT
  | SIN
  | SEC
  | RPAREN
  | REAL of (float)
  | PLUS
  | MINUS
  | LPAREN
  | LOG10
  | LN
  | EOF
  | DIVIDE
  | CSC
  | COT
  | COS
  | CARET

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val handleEOF: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
