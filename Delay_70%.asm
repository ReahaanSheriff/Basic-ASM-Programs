CLR P0.7
AGAIN :  MOV P1,#0FFH
LCALL DELAY1	;T-ON=700
MOV P1, #33H
LCALL DELAY2	;T-OFF=300
SJMP AGAIN
DELAY1:  MOV R3, #0FFH	;1ms
HERE1: DJNZ R3,HERE1 	; 255*2=510
MOV R3,#5DH		;1
HERE2:DJNZ R3,HERE2		 ;186
RET 		;2ms
DELAY2 : MOV R3,#94H	;1
NOP			;1
HERE3: DJNZ R3,HERE3	;296
RET		;2
