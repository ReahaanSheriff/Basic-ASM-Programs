mov r1, #40h
mov r2, #05
mov a, #0
repeat: ADD a, @r1
INC r1
DJNZ r2, repeat
mov b, #05
DIV ab
mov 50h, a
stop:SJMP stop
