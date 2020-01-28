;Factorial : To find the factorial of a number stored in R0. Store the value in R1.

.text
mov R0, #7
mov R1, #1
fact:
	mul R1, R0, R1
sub R0, R0, #1
cmp R0, #1
bne fact
.end
