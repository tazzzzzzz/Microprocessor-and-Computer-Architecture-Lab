.text
mov r0, #5
mov r1, #1
factorial:
	cmp r0,#1
	mul r1, r0, r1
	subs r0, r0, #1
	bne factorial
.end
