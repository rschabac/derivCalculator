open Deriv
open Ast
(* main *)
let _main =
	if Array.length Sys.argv > 2 then
		failwith "Too many arguments" else
	if Array.length Sys.argv < 2 then
		failwith "No expression given" else
	Sys.argv.(1) |> parse |> optimize |> deriv |> optimize |> string_of_expr |> print_endline
