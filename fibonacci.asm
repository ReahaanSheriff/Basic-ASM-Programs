CLR C 
mov r0,#20h

mov a,#0h
mov r1,#01h
mov r7,#0Ah

fib:
mov @r0,a
mov b,a
add a,r1
da a
mov r1,b
inc r0
djnz r7,fib
stop: sjmp stop

