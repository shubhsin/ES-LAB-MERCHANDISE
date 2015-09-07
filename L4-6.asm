; 2 digit BCD downcounter
ORG 0
MOV DPTR,#TABLE
MOV A,#99H
UP:
MOV R0,A
SWAP A
ANL A,#0FH
MOVC A,@A+DPTR
MOV P1,A
MOV A,R0
ANL A,#0FH
MOVC A,@A+DPTR
MOV P2,A
ACALL delay
MOV A,R0
DEC A
MOV PSW,#0H
DA A
CJNE A,#50H,UP
MOV A,#0H
SJMP UP


delay: MOV R2, #01H
here:	DJNZ R2,here
	RET

ORG 0200H
TABLE:db 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH

