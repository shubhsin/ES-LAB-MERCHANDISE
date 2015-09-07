
BLINK: 	CLR P1.0
	ACALL delay
	SETB P1.0
	ACALL delay
	JMP BLINK

delay:	MOV R2,#10H
here:	DJNZ R2,here
	RET