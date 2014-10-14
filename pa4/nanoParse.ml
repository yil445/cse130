type token =
  | Id of (string)
  | TRUE
  | FALSE
  | Num of (int)
  | LET
  | REC
  | EQ
  | IN
  | FUN
  | ARROW
  | IF
  | THEN
  | ELSE
  | EOF
  | PLUS
  | MINUS
  | MUL
  | DIV
  | LT
  | LE
  | NE
  | AND
  | OR
  | LPAREN
  | RPAREN
  | LBRAC
  | RBRAC
  | SEMI
  | COLONCOLON

open Parsing;;
# 2 "nanoParse.mly"
(* Daniel Poplawski 
 * A09968967 *)
open Nano 
# 38 "nanoParse.ml"
let yytransl_const = [|
  258 (* TRUE *);
  259 (* FALSE *);
  261 (* LET *);
  262 (* REC *);
  263 (* EQ *);
  264 (* IN *);
  265 (* FUN *);
  266 (* ARROW *);
  267 (* IF *);
  268 (* THEN *);
  269 (* ELSE *);
    0 (* EOF *);
  270 (* PLUS *);
  271 (* MINUS *);
  272 (* MUL *);
  273 (* DIV *);
  274 (* LT *);
  275 (* LE *);
  276 (* NE *);
  277 (* AND *);
  278 (* OR *);
  279 (* LPAREN *);
  280 (* RPAREN *);
  281 (* LBRAC *);
  282 (* RBRAC *);
  283 (* SEMI *);
  284 (* COLONCOLON *);
    0|]

let yytransl_block = [|
  257 (* Id *);
  260 (* Num *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\001\000\002\000\002\000\003\000\
\003\000\004\000\004\000\004\000\004\000\004\000\005\000\005\000\
\005\000\005\000\005\000\006\000\006\000\006\000\007\000\007\000\
\007\000\008\000\008\000\009\000\009\000\009\000\009\000\009\000\
\009\000\000\000"

let yylen = "\002\000\
\006\000\007\000\004\000\006\000\001\000\003\000\001\000\003\000\
\001\000\003\000\003\000\003\000\003\000\001\000\003\000\003\000\
\002\000\002\000\001\000\003\000\003\000\001\000\003\000\003\000\
\001\000\002\000\001\000\001\000\001\000\001\000\001\000\003\000\
\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\029\000\030\000\031\000\028\000\000\000\000\000\
\000\000\000\000\000\000\034\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\027\000\000\000\000\000\000\000\000\000\
\000\000\033\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\017\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\026\000\000\000\000\000\000\000\000\000\032\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\003\000\000\000\000\000\
\000\000\000\000\001\000\000\000\004\000\002\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000"

let yysindex = "\024\000\
\047\255\000\000\000\000\000\000\000\000\000\000\023\255\032\255\
\047\255\047\255\005\255\000\000\013\255\016\255\254\254\027\255\
\054\255\024\255\009\255\000\000\035\255\059\255\045\255\062\255\
\042\255\000\000\027\255\061\255\061\255\061\255\061\255\061\255\
\061\255\000\000\009\255\009\255\061\255\061\255\009\255\009\255\
\049\255\000\000\047\255\064\255\047\255\047\255\000\000\016\255\
\254\254\027\255\027\255\027\255\027\255\024\255\024\255\027\255\
\027\255\009\255\009\255\065\255\047\255\000\000\063\255\047\255\
\069\255\047\255\000\000\047\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\156\000\083\001\046\001\153\000\
\133\000\067\000\001\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\171\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\090\001\
\068\001\189\000\207\000\225\000\243\000\089\000\111\000\005\001\
\024\001\023\000\045\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\249\255\000\000\050\000\051\000\245\255\000\000\235\255\007\000\
\241\255"

let yytablesize = 626
let yytable = "\027\000\
\025\000\024\000\025\000\042\000\030\000\003\000\004\000\005\000\
\006\000\003\000\004\000\005\000\006\000\054\000\055\000\031\000\
\032\000\033\000\050\000\051\000\052\000\053\000\024\000\021\000\
\001\000\056\000\057\000\010\000\022\000\011\000\026\000\010\000\
\023\000\041\000\028\000\060\000\029\000\062\000\063\000\039\000\
\040\000\043\000\042\000\042\000\023\000\058\000\059\000\003\000\
\004\000\005\000\006\000\007\000\034\000\065\000\045\000\008\000\
\067\000\009\000\069\000\044\000\070\000\003\000\004\000\005\000\
\006\000\047\000\022\000\035\000\036\000\010\000\061\000\011\000\
\064\000\046\000\026\000\066\000\068\000\048\000\000\000\049\000\
\037\000\038\000\000\000\010\000\000\000\011\000\000\000\000\000\
\021\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\019\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\014\000\000\000\000\000\005\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\018\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\010\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\012\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\011\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\016\000\000\000\000\000\025\000\
\025\000\000\000\000\000\000\000\025\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\025\000\025\000\025\000\015\000\
\025\000\000\000\025\000\025\000\025\000\024\000\024\000\000\000\
\000\000\000\000\024\000\024\000\024\000\024\000\024\000\024\000\
\024\000\024\000\024\000\024\000\024\000\009\000\024\000\000\000\
\024\000\024\000\024\000\023\000\023\000\000\000\000\000\000\000\
\023\000\023\000\023\000\023\000\023\000\023\000\023\000\023\000\
\023\000\023\000\023\000\008\000\023\000\000\000\023\000\023\000\
\023\000\022\000\022\000\000\000\000\000\000\000\022\000\022\000\
\022\000\022\000\007\000\000\000\022\000\022\000\022\000\022\000\
\022\000\006\000\022\000\000\000\022\000\022\000\022\000\021\000\
\021\000\000\000\000\000\000\000\021\000\021\000\021\000\021\000\
\000\000\000\000\021\000\021\000\021\000\021\000\021\000\000\000\
\021\000\000\000\021\000\021\000\021\000\020\000\020\000\000\000\
\000\000\000\000\020\000\020\000\020\000\020\000\000\000\000\000\
\020\000\020\000\020\000\020\000\020\000\000\000\020\000\000\000\
\020\000\020\000\020\000\019\000\019\000\000\000\000\000\000\000\
\019\000\019\000\000\000\000\000\000\000\000\000\019\000\019\000\
\019\000\019\000\019\000\000\000\019\000\000\000\019\000\014\000\
\014\000\000\000\000\000\005\000\014\000\014\000\000\000\005\000\
\005\000\000\000\014\000\014\000\014\000\014\000\014\000\000\000\
\014\000\018\000\018\000\005\000\000\000\000\000\018\000\018\000\
\000\000\000\000\000\000\000\000\018\000\018\000\018\000\018\000\
\018\000\000\000\018\000\010\000\010\000\000\000\000\000\000\000\
\010\000\010\000\000\000\000\000\000\000\000\000\010\000\010\000\
\010\000\010\000\010\000\000\000\010\000\012\000\012\000\000\000\
\000\000\000\000\012\000\012\000\000\000\000\000\000\000\000\000\
\012\000\012\000\012\000\012\000\012\000\000\000\012\000\011\000\
\011\000\000\000\000\000\000\000\011\000\011\000\000\000\000\000\
\000\000\000\000\011\000\011\000\011\000\011\000\011\000\000\000\
\011\000\013\000\013\000\000\000\000\000\000\000\013\000\013\000\
\000\000\000\000\000\000\000\000\013\000\013\000\013\000\013\000\
\013\000\000\000\013\000\016\000\016\000\000\000\000\000\000\000\
\016\000\016\000\000\000\000\000\000\000\000\000\016\000\016\000\
\016\000\016\000\016\000\000\000\016\000\000\000\015\000\015\000\
\000\000\000\000\000\000\015\000\015\000\000\000\000\000\000\000\
\000\000\015\000\015\000\015\000\015\000\015\000\000\000\015\000\
\000\000\000\000\000\000\000\000\000\000\009\000\000\000\000\000\
\000\000\009\000\009\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\009\000\009\000\000\000\009\000\000\000\000\000\
\000\000\000\000\000\000\008\000\000\000\000\000\000\000\008\000\
\008\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\008\000\008\000\007\000\008\000\000\000\000\000\007\000\007\000\
\000\000\006\000\000\000\000\000\000\000\006\000\006\000\000\000\
\007\000\000\000\007\000\000\000\000\000\000\000\000\000\006\000\
\000\000\006\000"

let yycheck = "\011\000\
\000\000\009\000\010\000\019\000\007\001\001\001\002\001\003\001\
\004\001\001\001\002\001\003\001\004\001\035\000\036\000\018\001\
\019\001\020\001\030\000\031\000\032\000\033\000\000\000\001\001\
\001\000\037\000\038\000\023\001\006\001\025\001\026\001\023\001\
\001\001\025\001\022\001\043\000\021\001\045\000\046\000\016\001\
\017\001\007\001\058\000\059\000\000\000\039\000\040\000\001\001\
\002\001\003\001\004\001\005\001\026\001\061\000\010\001\009\001\
\064\000\011\001\066\000\001\001\068\000\001\001\002\001\003\001\
\004\001\024\001\000\000\014\001\015\001\023\001\007\001\025\001\
\008\001\012\001\026\001\013\001\008\001\028\000\255\255\029\000\
\027\001\028\001\255\255\023\001\255\255\025\001\255\255\255\255\
\000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\000\000\255\255\255\255\000\000\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\021\001\022\001\000\000\
\024\001\255\255\026\001\027\001\028\001\007\001\008\001\255\255\
\255\255\255\255\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\019\001\020\001\021\001\022\001\000\000\024\001\255\255\
\026\001\027\001\028\001\007\001\008\001\255\255\255\255\255\255\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\019\001\
\020\001\021\001\022\001\000\000\024\001\255\255\026\001\027\001\
\028\001\007\001\008\001\255\255\255\255\255\255\012\001\013\001\
\014\001\015\001\000\000\255\255\018\001\019\001\020\001\021\001\
\022\001\000\000\024\001\255\255\026\001\027\001\028\001\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\255\255\255\255\018\001\019\001\020\001\021\001\022\001\255\255\
\024\001\255\255\026\001\027\001\028\001\007\001\008\001\255\255\
\255\255\255\255\012\001\013\001\014\001\015\001\255\255\255\255\
\018\001\019\001\020\001\021\001\022\001\255\255\024\001\255\255\
\026\001\027\001\028\001\007\001\008\001\255\255\255\255\255\255\
\012\001\013\001\255\255\255\255\255\255\255\255\018\001\019\001\
\020\001\021\001\022\001\255\255\024\001\255\255\026\001\007\001\
\008\001\255\255\255\255\008\001\012\001\013\001\255\255\012\001\
\013\001\255\255\018\001\019\001\020\001\021\001\022\001\255\255\
\024\001\007\001\008\001\024\001\255\255\255\255\012\001\013\001\
\255\255\255\255\255\255\255\255\018\001\019\001\020\001\021\001\
\022\001\255\255\024\001\007\001\008\001\255\255\255\255\255\255\
\012\001\013\001\255\255\255\255\255\255\255\255\018\001\019\001\
\020\001\021\001\022\001\255\255\024\001\007\001\008\001\255\255\
\255\255\255\255\012\001\013\001\255\255\255\255\255\255\255\255\
\018\001\019\001\020\001\021\001\022\001\255\255\024\001\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\255\255\255\255\
\255\255\255\255\018\001\019\001\020\001\021\001\022\001\255\255\
\024\001\007\001\008\001\255\255\255\255\255\255\012\001\013\001\
\255\255\255\255\255\255\255\255\018\001\019\001\020\001\021\001\
\022\001\255\255\024\001\007\001\008\001\255\255\255\255\255\255\
\012\001\013\001\255\255\255\255\255\255\255\255\018\001\019\001\
\020\001\021\001\022\001\255\255\024\001\255\255\007\001\008\001\
\255\255\255\255\255\255\012\001\013\001\255\255\255\255\255\255\
\255\255\018\001\019\001\020\001\021\001\022\001\255\255\024\001\
\255\255\255\255\255\255\255\255\255\255\008\001\255\255\255\255\
\255\255\012\001\013\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\021\001\022\001\255\255\024\001\255\255\255\255\
\255\255\255\255\255\255\008\001\255\255\255\255\255\255\012\001\
\013\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\021\001\022\001\008\001\024\001\255\255\255\255\012\001\013\001\
\255\255\008\001\255\255\255\255\255\255\012\001\013\001\255\255\
\022\001\255\255\024\001\255\255\255\255\255\255\255\255\022\001\
\255\255\024\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  LET\000\
  REC\000\
  EQ\000\
  IN\000\
  FUN\000\
  ARROW\000\
  IF\000\
  THEN\000\
  ELSE\000\
  EOF\000\
  PLUS\000\
  MINUS\000\
  MUL\000\
  DIV\000\
  LT\000\
  LE\000\
  NE\000\
  AND\000\
  OR\000\
  LPAREN\000\
  RPAREN\000\
  LBRAC\000\
  RBRAC\000\
  SEMI\000\
  COLONCOLON\000\
  "

let yynames_block = "\
  Id\000\
  Num\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Nano.expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 43 "nanoParse.mly"
                                ( Let(_2,_4,_6) )
# 336 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : Nano.expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 44 "nanoParse.mly"
                                ( Letrec(_3,_5,_7) )
# 345 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 45 "nanoParse.mly"
                                ( Fun(_2,_4) )
# 353 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : Nano.expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : Nano.expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : Nano.expr) in
    Obj.repr(
# 46 "nanoParse.mly"
                                ( If(_2,_4,_6) )
# 362 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 47 "nanoParse.mly"
                                ( _1 )
# 369 "nanoParse.ml"
               : Nano.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp2) in
    Obj.repr(
# 50 "nanoParse.mly"
                    ( Bin( _1, Or, _3 ) )
# 377 "nanoParse.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp2) in
    Obj.repr(
# 51 "nanoParse.mly"
            ( _1 )
# 384 "nanoParse.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp2) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 54 "nanoParse.mly"
                    ( Bin( _1, And, _3 ) )
# 392 "nanoParse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp3) in
    Obj.repr(
# 55 "nanoParse.mly"
            ( _1 )
# 399 "nanoParse.ml"
               : 'exp2))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 58 "nanoParse.mly"
                   ( Bin( _1, Eq, _3) )
# 407 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 59 "nanoParse.mly"
                   ( Bin( _1, Le, _3 ) )
# 415 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 60 "nanoParse.mly"
                   ( Bin( _1, Lt, _3 ) )
# 423 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp3) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 61 "nanoParse.mly"
                   ( Bin( _1, Ne, _3 ) )
# 431 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 62 "nanoParse.mly"
            ( _1 )
# 438 "nanoParse.ml"
               : 'exp3))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp7) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 66 "nanoParse.mly"
                                ( Bin(_1, Cons, _3) )
# 446 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp7) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 67 "nanoParse.mly"
                                ( Bin(_1, Cons, _3) )
# 454 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp4) in
    Obj.repr(
# 68 "nanoParse.mly"
                                ( Bin(_1, Cons, NilExpr) )
# 461 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp4) in
    Obj.repr(
# 69 "nanoParse.mly"
                                ( _2 )
# 468 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp7) in
    Obj.repr(
# 70 "nanoParse.mly"
             ( _1 )
# 475 "nanoParse.ml"
               : 'exp4))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp7) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 73 "nanoParse.mly"
                      ( Bin( _1, Minus, _3 ) )
# 483 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp7) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 74 "nanoParse.mly"
                     ( Bin( _1, Plus, _3 ) )
# 491 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp5) in
    Obj.repr(
# 75 "nanoParse.mly"
            ( _1 )
# 498 "nanoParse.ml"
               : 'exp7))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp5) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 78 "nanoParse.mly"
                    ( Bin( _1, Div, _3 ) )
# 506 "nanoParse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp5) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 79 "nanoParse.mly"
                    ( Bin( _1, Mul, _3 ) )
# 514 "nanoParse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp6) in
    Obj.repr(
# 80 "nanoParse.mly"
             (_1 )
# 521 "nanoParse.ml"
               : 'exp5))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp6) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expEnd) in
    Obj.repr(
# 83 "nanoParse.mly"
                                ( App( _1, _2 ) )
# 529 "nanoParse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expEnd) in
    Obj.repr(
# 84 "nanoParse.mly"
              ( _1 )
# 536 "nanoParse.ml"
               : 'exp6))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 87 "nanoParse.mly"
                                ( Const( _1) )
# 543 "nanoParse.ml"
               : 'expEnd))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 88 "nanoParse.mly"
             ( Var( _1) )
# 550 "nanoParse.ml"
               : 'expEnd))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "nanoParse.mly"
             ( True )
# 556 "nanoParse.ml"
               : 'expEnd))
; (fun __caml_parser_env ->
    Obj.repr(
# 90 "nanoParse.mly"
              ( False )
# 562 "nanoParse.ml"
               : 'expEnd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Nano.expr) in
    Obj.repr(
# 91 "nanoParse.mly"
                         ( _2 )
# 569 "nanoParse.ml"
               : 'expEnd))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "nanoParse.mly"
                   ( NilExpr )
# 575 "nanoParse.ml"
               : 'expEnd))
(* Entry exp *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let exp (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Nano.expr)