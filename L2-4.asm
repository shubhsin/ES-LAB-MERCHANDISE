MOV 08,#47h
MOV 09,#13h
MOV 0Ah,#36h
MOV 0Bh,#78h
MOV 0Ch,#69h
MOV 0Dh,#34h
MOV 0Eh,#34h
MOV 0Fh,#12h

MOV 10h,#52h
MOV 11h,#46h
MOV 12h,#69h
MOV 13h,#13h
MOV 14h,#13h
MOV 15h,#12h
MOV 16h,#38h
MOV 17h,#49h


MOV R0,#08h
MOV R1,#10h
MOV SP,#17h
MOV R2,#8
CLR C
UP: MOV A,@R0
    ADDC A,@R1
    DA A
    PUSH 0E0H
    INC R0
    INC R1
    DJNZ R2,UP