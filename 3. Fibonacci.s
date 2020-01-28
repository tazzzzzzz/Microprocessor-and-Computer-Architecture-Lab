.text
LDR r2, = A
LDR r0, [r2]
LDR r1, [r2, #4]!

MOV r3, #10
LOOP:
	ADD r4,r1,r0
	MOV r0,r1
	MOV r1,r4
	SUB r3, r3, #1
	STR r1, [r2, #4]!
	CMP r3, #0
	BNE LOOP
SWI 0x11

.data
	A: .word 0,1

.end
