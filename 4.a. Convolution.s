.text
LDR r0, = A
LDR r1, = B
MOV r4, #5
MOV r5, #0
LOOP:
	LDR r2, [r0]
	LDR r3, [r1]
	ADD r0,r0,#4
	ADD r1,r1,#4
	MUL r6,r2,r3
	ADD r5, r5,r6
	SUB r4,r4,#1
	CMP r4, #0
	BNE LOOP
.data
	A: .word 7,2,1,2,2
	B: .word 4,1,4,6,2

.end
