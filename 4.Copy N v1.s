;4. Copy: 4. Copy n numbers from Location A to Location B.
.text
ldr R0,=a
ldr R1,=b
mov R2,#4
Move:
ldr R3,[R0]
str R3,[R1]
add R0,R0,#4
add R1,R1, #4
subs R2, R2, #1
bne Move

.data
a: .word 10,20,30,40
b: .word 00, 00, 00, 00
.end
