CLR C
mov r1,#60h
mov r0,#50h
mov r3,#05h
mov a,#0h

repeat: mov b,#05h
mov a,@r1
div ab
mov a,b
jz store
inc r1
djnz r3,repeat

store: mov a,@r1
mov @r0,a
inc r0
inc r1
djnz r3,repeat

STOP : SJMP STOP
