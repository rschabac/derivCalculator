
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
  | MenhirState31
  | MenhirState29
  | MenhirState27
  | MenhirState24
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState9
  | MenhirState7
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Ast

# 71 "parser.ml"

let rec _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | COT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | CSC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LOG10 ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | COT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | CSC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LOG10 ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | COT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | CSC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LOG10 ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | COT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | CSC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LOG10 ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | COT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | CSC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LOG10 ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | REAL _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | SEC ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | SIN ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | SQRT ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TAN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | VAR _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv75 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv73 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 48 "parser.mly"
                                 ( Cos(e) )
# 264 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv74)) : 'freshtv76)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv77 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE | EOF | MINUS | PLUS | RPAREN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv81 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 44 "parser.mly"
                               ( Mul(e1,e2) )
# 292 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv82)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv83 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)) : 'freshtv86)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE | EOF | MINUS | PLUS | RPAREN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 46 "parser.mly"
                               ( Pow(e1,e2) )
# 318 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv93 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 42 "parser.mly"
                              ( Add(e1,e2) )
# 348 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv95 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)) : 'freshtv98)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE | EOF | MINUS | PLUS | RPAREN | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv99 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 45 "parser.mly"
                                ( Div(e1,e2) )
# 374 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv101 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv105 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_expr)), _, (e2 : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr = 
# 43 "parser.mly"
                               ( Sub(e1,e2) )
# 404 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv107 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv113 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 52 "parser.mly"
                                 ( Cot(e) )
# 441 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv112)) : 'freshtv114)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv115 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv121 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv119 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 50 "parser.mly"
                                 ( Csc(e) )
# 480 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)) : 'freshtv122)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 54 "parser.mly"
                              ( Ln(e) )
# 519 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv137 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 55 "parser.mly"
                                 ( Log10(e) )
# 558 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)) : 'freshtv142)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv145 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv143 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 51 "parser.mly"
                                 ( Sec(e) )
# 597 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)) : 'freshtv146)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv147 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)) : 'freshtv150)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv151 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 47 "parser.mly"
                                 ( Sin(e) )
# 636 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv152)) : 'freshtv154)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv161 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv159 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 53 "parser.mly"
                                  ( Sqrt(e) )
# 675 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv163 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv167 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 49 "parser.mly"
                                 ( Tan(e) )
# 714 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CARET ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | DIVIDE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 32 "parser.mly"
       (Ast.expr)
# 746 "parser.ml"
            ) = 
# 37 "parser.mly"
                 ( e )
# 750 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "parser.mly"
       (Ast.expr)
# 758 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 32 "parser.mly"
       (Ast.expr)
# 766 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 32 "parser.mly"
       (Ast.expr)
# 774 "parser.ml"
            )) : (
# 32 "parser.mly"
       (Ast.expr)
# 778 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv176)) : 'freshtv178)) : 'freshtv180)) : 'freshtv182)) : 'freshtv184)
        | MINUS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | TIMES ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv72)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (char)
# 876 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 6 "parser.mly"
       (char)
# 886 "parser.ml"
    )) : (
# 6 "parser.mly"
       (char)
# 890 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 41 "parser.mly"
           ( Var x )
# 895 "parser.ml"
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState3
        | LOG10 ->
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
        | LOG10 ->
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | LOG10 ->
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
        | LOG10 ->
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
# 1086 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((r : (
# 5 "parser.mly"
       (float)
# 1096 "parser.ml"
    )) : (
# 5 "parser.mly"
       (float)
# 1100 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 40 "parser.mly"
            ( Real r )
# 1105 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LOG10 ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | LOG10 ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LOG10 ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LOG10 ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | COT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | CSC ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LOG10 ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | REAL _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | SEC ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SIN ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | SQRT ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TAN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VAR _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv4)
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
# 1354 "parser.ml"
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
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | COT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CSC ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LOG10 ->
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
  

# 1403 "parser.ml"
