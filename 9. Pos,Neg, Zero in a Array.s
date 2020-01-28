.text

ldr r0,=A
mov r3, #7	;r3 contains size of array

traverse:
	ldr r1, [r0], #4	;Each individual Array Element
	cmp r1, #0
	beq Zero		;Zero
	bgt Positive		;+ve
	blt Negative		;-ve
continue:
	subs r3, r3, #1		;As long as array exists
	bne traverse
swi 0x011	
	
Zero:
add r7,r7,#1
b continue

Positive:
add r8,r8,#1
b continue

Negative:
add r9,r9,#1
b continue
.data
	A: .word 10,20,0,-1,5,0,-8
.end
