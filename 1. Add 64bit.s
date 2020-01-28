.text

ldr r6,=var1
ldr r0,[r6]
add r6,r6,#4
ldr r1,[r6]
ldr r6,=var2
ldr r2,[r6]
add r6,r6,#4
ldr r3,[r6]

ADDS r4, r0, r2
ADC r5, r1, r3

.data
var1: .word 0x1,0x2
var2: .word 0x3,0x4

.end
