;4. Copy: 4. Copy n numbers from Location A to Location B.
.text
ldr R0,=a
ldr R1,=b

ldmia R0, {R2-R5}
stmia R1, {R2-R5}
swi 0x11


.data
a: .word 10,20,30,40
b: .word 00, 00, 00, 00
.end
