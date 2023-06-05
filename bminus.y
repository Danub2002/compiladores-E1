
program: declaration-list
;

declaration-list
: declaration
|declaration-list declaration
;

var-declaration-list
: /* */
|var-declaration  var-declaration-list
;

declaration
: var-declaration
| function-declaration
;


simple-type
: BOOLEAN
| INTEGER
;

array-type
: ARRAY '[' NUMBER ']' simple-type
;

literals-list
: literal
| literals-list COMMA literal
;

literal
:TRUE
|FALSE
|NUMBER
;

var-declaration
: ID COLON simple-type SEMIC
|ID COLON simple-type ASSIGN literal SEMIC
|ID COLON array-type SEMIC
|ID COLON array-type '{' literal-list '}' SEMIC
;


params
: OPENP CLOSEP
|OPENP param-list CLOSEP
;

params-list
: param
| param-list COMMA param
;

param
: ID COLON simple-type /* falta de parametros
function-declaration
: ID COLON FUNCTION simple-type  params ASSIGN block
;

statement-list
: /* */
|statement statement-list
;
block
: OPENP var-declaration-list statement-list CLOSEP
| OPENP var-declaration-list CLOSEP
| OPENP statement-list CLOSEP
| OPENP CLOSEP
;

statement
: IF OPENP expression CLOSEP statement-list SEMIC
| IF OPENP expression CLOSEP statement-list ELSE statement-list SEMIC
;




