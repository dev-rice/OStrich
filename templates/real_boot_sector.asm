; Tell the computer that this program starts at memory location 0x7c00 (where BIOS always puts it)
[org 0x7c00]

; Set the ds register to 0, for real computer compatibility. This makes sure that all of our memory access is related to 0x0000, instead of whatever ds was before.
mov bx, 0
mov ds, bx

; DO THINGS HERE!

; Do nothing
jmp $

; Padding and magic BIOS number.
times 510-($-$$) db 0
dw 0xaa55
