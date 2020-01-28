.text
ldr r0, = A
ldr r1, = B
ldr r2, = C
ldr r8, = ANS
ldr r3,[r0]	;r3 has 12
ldr r4,[r1]	;r4 has 5
ldr r5,[r2]	;r5 has 3
add r6,r3,r4	;r6 = 12+5
mul r7,r6,r5	;r7 = r6*3
str r8,[r7]	;store answer back into memory

.data
	A: .word 12
	B: .word 5
	C: .word 3
	ANS: .word
.end
