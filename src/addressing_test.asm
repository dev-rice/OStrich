org 0x7c00

mov ah, 0x0e

mov bx, my_string
mov al, [bx]
int 0x10

jmp $

my_string:
    db 'Booting OS',0

times 510-($-$$) db 0
dw 0xaa55
