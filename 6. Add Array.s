;6. Add Array: Add an Array of Integers from Memory

.text
ldr R0,=a
mov R1, #10
mov R3, #0
add:
ldrb R2,[R0]
add R0, R0, #1
add R3, R3, R2
subs R1, R1, #1
bne add
swi 0x011
.data
a:.byte 1,2,3,4,5,6,7,8,9,10
.end

