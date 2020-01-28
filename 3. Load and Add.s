; 3. Load and Add: Add two numbers loaded from memory and store the result in memory.

.text
ldr R0,=a
ldr R1,=b
ldr R2,=c
ldr R3,[R0]
ldr R4,[R1]
add R5, R3, R4
str R5, [R2]
swi 0x011

.data
a: .word 10 
b: .word 20
c: .word 000

.end
