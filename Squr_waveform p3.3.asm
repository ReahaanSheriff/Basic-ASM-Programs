CYCLE:
SETB P3.3
LCALL DELAY
CLR P3.3
LCALL DELAY
SJMP CYCLE

DELAY:MOV R3, #05H
HERE:DJNZ R3, HERE
	RET