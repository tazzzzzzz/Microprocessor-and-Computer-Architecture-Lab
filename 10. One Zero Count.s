.text
MOV R0,#123
MOV R1,#32

label:MOVS R0,R0,LSR #1
      ADDCS R4,R4,#1
      ADDCC R3,R3,#1
      SUB R1,R1,#1
      CMP R1,#00
      BNE label
SWI 0x11
