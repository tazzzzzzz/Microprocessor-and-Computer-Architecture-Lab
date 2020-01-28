.text
ldr r1,=A
ldr r0,[r1]	;r0 contains the array
ldr r2, [r1]	;r2 contains minimum element
mov r3, #7	;r3 contains size of array
ldr r5,=B	;memory where minimum element is to be stored
min:
	cmp r0, r2
	blt minimal 
	ldr r0, [r1, #4]!
	subs r3, r3, #1
	bne min
	swi 0x011
minimal:
	ldr r2, [r1]	
	b min

str r5,[r2]	;store minimum element back into memory
.data

	A: .word 8,21,3,5,7,9,76
	B: .word 
.end
