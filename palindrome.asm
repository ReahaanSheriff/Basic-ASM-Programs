MOV TMOD, #20H
MOV TH1, #-6
MOV SCON, #50H
SETB TR1
MOV R1,#40H
MOV R0,#40H
MOV R2,#5H
REPEAT:
	REC:JNB RI,REC
	MOV A,SBUF
	MOV @R1,A
	INC R1
	CLR RI
	DEC R2
	CJNE R2,#0H,REPEAT
DEC R1
MOV B,#2
MOV A,#5
DIV AB
MOV R2,A
VERIFY:
	MOV A,@R1
	SUBB A,@R0
	INC R0
	DEC R1
	JNZ NOT_PALINDROME
	DJNZ R2,VERIFY
MOV 60H,#0AAH ;If palaindrome AA will be at 0*60
SJMP STOP
NOT_PALINDROME:
	MOV 60H,#55H ;If not palindrome 55 will be at 0*60
STOP:SJMP STOP
