open Ast

let rec deriv : expr -> expr = function
| Var c ->
	if c = 'x' then Real 1.0
	else Real 0.0
| Real _ -> Real 0.0
| Add (a,b) -> Add(deriv a, deriv b)
| Sub (a,b) -> Sub(deriv a, deriv b)
| Mul (a,b) -> Add(Mul(a,deriv b),Mul(deriv a,b))
| Div (a,b) -> let numerator = Sub(Mul(b,deriv a),Mul(a,deriv b)) in
			   let denominator = Pow(b,Real 2.0) in
			   Div(numerator, denominator)
| Pow (Real a, e) ->
	Mul(
		Mul(
			Ln (Real a),
			Pow(Real a, e)
		),
		deriv e
	)
| Pow(e,Real p) ->
	Mul(
		Mul(
			Real p,
			Pow(
				e,
				Real (p -. 1.0))),
		deriv e)
| Pow _ -> failwith "Either the base or exponent must be a constant"
| Sin e -> Mul(Cos(e),deriv e)
| Cos e -> Mul(Mul(Real(-1.0),Sin(e)),deriv e)
| Tan e -> Mul(Pow(Sec e,Real 2.0),deriv e)
| Csc e ->
	Mul(
		Mul(
			Real (-1.0),
			Csc e
		),
		Mul(
			Cot e,
			deriv e
		)
	)
| Sec e ->
	Mul(
		Mul(
			Sec e,
			Tan e
		),
		deriv e
	)
| Cot e ->
	Mul(
		Real (-1.0),
		Mul(
			Pow(
				Csc e,
				Real 2.0
			),
			deriv e
		)
	)
| Sqrt e ->
	Div(
		deriv e,
		Mul(
			Real 2.0,
			Sqrt(e)
		)
	)
| Ln e -> Div(deriv e,e)
| Log10 e ->
	Div(
		deriv e,
		Mul(
			Real (log 10.0),
			e
		)
	)

(*the bool here represents whether or not an optimization was made*)
let rec optimizePass (e:expr) :expr * bool = match e with
| Var x -> Var x, false
| Real r -> Real r, false
| Add (Real r1, Real r2) -> Real (r1 +. r2), true
| Add (Real 0.0, e1) | Add (e1, Real 0.0) -> fst @@ optimizePass e1, true
| Add (a,b) ->
	let a', optA = optimizePass a in
	let b', optB = optimizePass b in
	Add(a',b'), optA || optB
| Sub (Real r1, Real r2) -> Real (r1 -. r2), true
| Sub (e1, Real 0.0) -> fst @@ optimizePass e1, true
| Sub (Real 0.0, e1) -> Mul(Real (-1.0),fst @@ optimizePass e1), true
| Sub (a,b) ->
	let a', optA = optimizePass a in
	let b', optB = optimizePass b in
	Sub(a',b'), optA || optB
| Mul (Real 0.0, _) | Mul (_, Real 0.0) -> Real 0.0, true
| Mul (Real 1.0, e1) | Mul (e1, Real 1.0) -> fst @@ optimizePass e1, true
| Mul (a,b) ->
	let a', optA = optimizePass a in
	let b', optB = optimizePass b in
	Mul(a',b'), optA || optB
(*ignoring division by zero for now*)
| Div (e1, Real 1.0) -> fst @@ optimizePass e1, true
| Div (a,b) ->
	let a', optA = optimizePass a in
	let b', optB = optimizePass b in
	Div(a',b'), optA || optB
| Pow(e1, Real 1.0) -> fst @@ optimizePass e1, true
| Pow(_, Real 0.0) -> Real 1.0, true
| Pow(a,b) ->
	let a', optA = optimizePass a in
	let b', optB = optimizePass b in
	Pow(a',b'), optA || optB
| Sin a -> let a', optA = optimizePass a in Sin a', optA
| Cos a -> let a', optA = optimizePass a in Cos a', optA
| Tan a -> let a', optA = optimizePass a in Tan a', optA
| Csc a -> let a', optA = optimizePass a in Csc a', optA
| Sec a -> let a', optA = optimizePass a in Sec a', optA
| Cot a -> let a', optA = optimizePass a in Cot a', optA
| Sqrt a-> let a', optA = optimizePass a in Sqrt a',optA
| Ln (Real t) when closeToE t -> Real 1.0, true
| Ln (Real 1.0) -> Real 0.0, true
| Ln a -> let a', optA = optimizePass a in Ln a', optA
| Log10 (Real 10.0) -> Real 1.0, true
| Log10 (Real 1.0) -> Real 0.0, true
| Log10 a -> let a', optA = optimizePass a in Log10 a', optA

let rec optimize (e:expr) =
	let e', optE = optimizePass e in
	if optE then optimize e' else e'


let lex s =
	let lexbuf = Lexing.from_string s in
	Lexer.read lexbuf

let parse s =
	let lexbuf = Lexing.from_string s in
	Parser.handleEOF Lexer.read lexbuf

let read_file (filename:string) : string =
	let lines = ref [] in
	let chan = open_in filename in
	try
		while true do
			lines := input_line chan :: !lines
		done;
		""
	with End_of_file ->
		close_in chan;
		String.concat "" (List.rev !lines)

let parsef (filename: string) : expr =
	let filename = String.trim filename in
	parse @@ read_file filename

