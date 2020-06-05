
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR of (
# 6 "parser.mly"
       (char)
# 11 "parser.ml"
  )
    | TIMES
    | TAN
    | SQRT
    | SIN
    | SEC
    | RPAREN
    | REAL of (
# 5 "parser.mly"
       (float)
# 22 "parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState15
  | MenhirState13
  | MenhirState11
  | MenhirState9
  | MenhirState7
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Ast

# 72 "parser.ml"

let rec _menhir_run23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv77 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv75 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 48 "parser.mly"
                                 ( Cos(e) )
# 275 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)) : 'freshtv78)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv79 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)) : 'freshtv82)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE | EOF | MINUS | PLUS | RPAREN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv83 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 44 "parser.mly"
                               ( Mul(e1,e2) )
# 303 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv84)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)) : 'freshtv88)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE | EOF | MINUS | PLUS | RPAREN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 46 "parser.mly"
                               ( Pow(e1,e2) )
# 329 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv90)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv95 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 42 "parser.mly"
                              ( Add(e1,e2) )
# 359 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv97 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)) : 'freshtv100)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE | EOF | MINUS | PLUS | RPAREN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 45 "parser.mly"
                                ( Div(e1,e2) )
# 385 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv103 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv107 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 43 "parser.mly"
                               ( Sub(e1,e2) )
# 415 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv115 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv113 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 52 "parser.mly"
                                 ( Cot(e) )
# 452 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv114)) : 'freshtv116)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv117 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)) : 'freshtv120)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 50 "parser.mly"
                                 ( Csc(e) )
# 491 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 54 "parser.mly"
                              ( Ln(e) )
# 530 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)) : 'freshtv132)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv133 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv137 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 55 "parser.mly"
                                 ( Log10(e) )
# 569 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)) : 'freshtv140)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 56 "parser.mly"
                            ( e )
# 607 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 51 "parser.mly"
                                 ( Sec(e) )
# 646 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv161 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 47 "parser.mly"
                                 ( Sin(e) )
# 685 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 53 "parser.mly"
                                  ( Sqrt(e) )
# 724 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv179 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv177 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 49 "parser.mly"
                                 ( Tan(e) )
# 763 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv181 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv191 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 32 "parser.mly"
       (Ast.expr)
# 795 "parser.ml"
            ) = 
# 37 "parser.mly"
                 ( e )
# 799 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "parser.mly"
       (Ast.expr)
# 807 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "parser.mly"
       (Ast.expr)
# 815 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 32 "parser.mly"
       (Ast.expr)
# 823 "parser.ml"
            )) : (
# 32 "parser.mly"
       (Ast.expr)
# 827 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)) : 'freshtv194)
        | MINUS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)) : 'freshtv198)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (char)
# 930 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 6 "parser.mly"
       (char)
# 940 "parser.ml"
    )) : (
# 6 "parser.mly"
       (char)
# 944 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 41 "parser.mly"
           ( Var x )
# 949 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (float)
# 1148 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((r : (
# 5 "parser.mly"
       (float)
# 1158 "parser.ml"
    )) : (
# 5 "parser.mly"
       (float)
# 1162 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 40 "parser.mly"
            ( Real r )
# 1167 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COS ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | COT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | CSC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LN ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LOG10 ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and handleEOF : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 32 "parser.mly"
       (Ast.expr)
# 1461 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | COT ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CSC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LN ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LOG10 ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 233 "/home/rschabac/.opam/4.06.1/lib/menhir/standard.mly"
  

# 1512 "parser.ml"
