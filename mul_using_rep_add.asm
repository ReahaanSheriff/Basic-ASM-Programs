mov r1, #06h
mov r2, #07h
mov a, #0h
repeat: ADD a, r1
da a
DJNZ r2, repeat
mov r5, a
stop:SJMP stop