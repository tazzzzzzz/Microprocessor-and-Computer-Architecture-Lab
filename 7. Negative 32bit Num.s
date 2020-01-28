.data
var1: .word -0x25

.text
ldr r1,=var1
ldr r0,[r1]
cmp r0,#0
blt l1
mov r2,#0
swi 0x11

l1:
mov r2,#1
swi 0x11


