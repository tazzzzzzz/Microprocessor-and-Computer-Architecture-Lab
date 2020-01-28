.text
ldr r1,=A
ldr r0,[r1]	;r0 contains the array
ldr r2,=s		
ldr r4,[r2]	;r4 contains element to be searched
mov r3, #7	;r3 contains size of array
mov r7, #0	;r7 contains position of element, if found.
search:
	cmp r0, r4
	beq end_found
	ldr r0, [r1, #4]!
	add r7, r7, #1
	subs r3, r3, #1
	bne search
	
end:
	mov r7, #0
	mov r6,#-1	
	swi 0x011
end_found: 
	swi 0x011
.data
	A: .word 8,1,3,5,7,9,76
	s: .word 52
.end
