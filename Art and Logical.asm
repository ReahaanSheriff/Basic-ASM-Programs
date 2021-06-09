Mov A, #47H
ADD A, #06H
Mov 30H, A

Mov A, #23H
SUBB A, #12H
Mov 31H, A

Mov A, #12H
Mov B, #43H
MUL AB
Mov 32H, B

Mov A, #24H
Mov B, #06H
DIV AB
Mov 33H , A

MOV A, #55H
ANL A, #0FH
Mov 34H, A

MOV A, #14H
ORL A, #40H
Mov 35H, A

MOV A, #64H
XRL A, #18H
Mov 36H, A

stop: JMP stop
