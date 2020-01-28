.text
mov r0, #3
mov r1, #12
gcd: 
	cmp r0, r1
	beq close
	blt less
	subs r0,r0,r1
	b gcd
less:
	subs r1, r1, r0
	b gcd
close:
.end
