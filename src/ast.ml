(*TODO: might need to enhance the Real constructor,
maybe add another type real that is either pi, e of some other real
currently getting by with closeToE and closeToPi
*)
type expr =
| Var of char
| Real of float
| Add of expr * expr
| Sub of expr * expr
| Mul of expr * expr
| Div of expr * expr
| Pow of expr * expr
| Sin of expr
| Cos of expr
| Tan of expr
| Csc of expr
| Sec of expr
| Cot of expr
| Sqrt of expr
| Ln of expr
| Log10 of expr

let e_epsilon = 0.001
let closeToE (f:float) = abs_float (f -. (exp 1.0)) < e_epsilon

let pi_epsilon = 0.001
let closeToPi (f:float) = abs_float (f -. (atan2 0.0 (-1.0))) < pi_epsilon

(*TODO: make string_of_expr use less parentheses
have differernt functions for different precedence levels
string_of_expr Add(a,b) should call a mutually recursive function that handles
printing of things at the next highest precedence level.
in this function, Adds get parentheses around them
*)
let rec string_of_expr e = match e with
| Var c -> String.make 1 c
| Real r when closeToE r -> "e"
| Real r when closeToPi r -> "pi"
| Real r -> Printf.sprintf "%f" r
| Add(a,b) -> Printf.sprintf "(%s)+(%s)" (string_of_expr a) (string_of_expr b)
| Sub(a,b) -> Printf.sprintf "(%s)-(%s)" (string_of_expr a) (string_of_expr b)
| Mul(a,b) -> Printf.sprintf "(%s)*(%s)" (string_of_expr a) (string_of_expr b)
| Div(a,b) -> Printf.sprintf "(%s)/(%s)" (string_of_expr a) (string_of_expr b)
| Pow(a,b) -> Printf.sprintf "(%s)^(%s)" (string_of_expr a) (string_of_expr b)
| Sin(e) -> Printf.sprintf "sin(%s)" (string_of_expr e)
| Cos(e) -> Printf.sprintf "cos(%s)" (string_of_expr e)
| Tan(e) -> Printf.sprintf "tan(%s)" (string_of_expr e)
| Csc(e) -> Printf.sprintf "csc(%s)" (string_of_expr e)
| Sec(e) -> Printf.sprintf "sec(%s)" (string_of_expr e)
| Cot(e) -> Printf.sprintf "cot(%s)" (string_of_expr e)
| Sqrt(e) -> Printf.sprintf "sqrt(%s)" (string_of_expr e)
| Ln(e) -> Printf.sprintf "ln(%s)" (string_of_expr e)
| Log10(e) -> Printf.sprintf "log(%s)" (string_of_expr e)
