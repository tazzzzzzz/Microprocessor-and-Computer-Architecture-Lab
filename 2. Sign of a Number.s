
;2.Number: Based on the value of the number in R0 :
	;Store 1 in R1 if R0 is zero
	;Store 2 in R1 if R0 is positive
	;Store 3 in R1 if R0 is negative
.text
mov r0, #5
cmp r0, #0
beq Zero
bgt Positive
blt Negative

Zero:
mov r1, #1
swi 0x6b
swi 0x11

Positive:
mov r1, #2
swi 0x6b
swi 0x11

Negative:
mov r1, #3
swi 0x6b
swi 0x11
.end
