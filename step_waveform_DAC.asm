CLR P0.7
AGAIN:MOV P1,#00H
MOV A,#00H
REP:LCALL DELAY
ADD A,#33H
MOV P1,A
CJNE A,#0FFH,REP
REP2:LCALL DELAY
SUBB A,#33H
MOV P1,A
CJNE A,#00H,REP2
SJMP AGAIN
DELAY:MOV R1,#0AH
HERE:DJNZ R1,HERE
RET
