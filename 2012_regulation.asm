MOV R1,#50H
MOV R0,#60H
LOOP:
MOV B,#5AH;90
LCALL CHECK
CJNE A,#0H,GRDO
MOV B,#55H;80
LCALL CHECK
CJNE A,#0H,GRDA
MOV B,#46H;70
LCALL CHECK
CJNE A,#0H,GRDB
MOV B,#3CH;60
LCALL CHECK
CJNE A,#0H,GRDC
MOV B,#32H;50
LCALL CHECK
CJNE A,#0H,GRDD
MOV @R0,#0FH
RETURN:
INC R1
INC R0
CJNE R1,#55H,LOOP
SJMP ENDL
CHECK:
MOV A,@R1
DIV AB
RET
GRDO:
MOV @R0,#0H
SJMP RETURN
GRDA:
MOV @R0,#0AH
SJMP RETURN
GRDB:
MOV @R0,#0BH
SJMP RETURN
GRDC:
MOV @R0,#0CH
SJMP RETURN
GRDD:
MOV @R0,#0DH
SJMP RETURN
ENDL:
END
