CLR P0.7
REPEAT:
MOV P1, #0FFH;5v
LCALL DELAY
MOV P1, #33H;1V
LCALL DELAY
SJMP REPEAT
DELAY:
MOV R3, #10H
HERE1:
DJNZ R3, HERE1
RET