MOV P1,#0FFH
MOV 70H,P1
CLR P2.0
CLR P2.1
JNB P2.0,D_0
JB P2.1,D_11
SJMP D_10

D_0:	JNB P2.1,D_00
SJMP D_01

D_00:
MOV A,#0FFH
SUBB A,P1
MOV P1,A
SJMP ENDL

D_01:
MOV P1,P0
SJMP ENDL

D_10:
MOV A,P1
RRC A
JB P1.0,LSB
MOV P1,A
SJMP ENDL
LSB:MOV P1,A
SETB P1.7
SJMP ENDL

D_11:
MOV A,P1
RLC A
JB P1.7,MSB 
MOV P1,A
SJMP ENDL
MSB:MOV P1,A
SETB P1.0
SJMP ENDL

ENDL:
