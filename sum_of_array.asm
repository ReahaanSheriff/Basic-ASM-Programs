mov r1, #50h
mov r2, #05
mov a, #0
repeat: ADD a, @r1
INC r1
DJNZ r2, repeat
mov r5, a
stop:SJMP stop