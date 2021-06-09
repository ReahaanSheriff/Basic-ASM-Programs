;mode2 auto-reload
MOV TMOD, #20H; timer 1, mode2
MOV TH1, #-6;set 4800 baud rate
MOV SCON, #50H;;8bit, 1stop, REN enabled
SETB TR1;start timer1

;Storing the value recived
MOV R0, #40H


AGAIN:
	;keep on checking RI bit
	CHK:JNB RI, CHK 
	;move sbuf value to accumulator
	MOV A, SBUF
	;clear RI bit
	CLR RI
	;store it in 50H upto
	MOV @R0, A
	LCALL ENCRPT
	;send back to data
	MOV SBUF, A
	CHK_T:JNB TI, CHK_T
	CLR TI
	INC R0
	SJMP AGAIN

ENCRPT:
	ADD A, #3H;encrypt plain to add 3
	CJNE A, #5BH, cont_0;letter X-A
	MOV A, #41H
	cont_0:
	CJNE A, #5CH, cont_1;letter Y-B
	MOV A, #42H
	cont_1:
	CJNE A, #5DH, cont_2;letter Z-C
	MOV A, #43H
	cont_2:
	RET