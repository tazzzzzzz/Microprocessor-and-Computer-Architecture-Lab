.text
mov r0, #12
mov r1, #3
gcd:
	cmp r0, r1
	subgt r0, r0, r1
	sublt r1, r1, r0
	bne gcd
.end
