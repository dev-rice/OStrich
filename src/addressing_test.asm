org 0x7c00

mov ah, 0x0e

mov bx, my_string
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

add bx, 1
mov al, [bx]
int 0x10

jmp $

my_string:
    db "The quick brown fox jumps over the lazy dog"

times 510-($-$$) db 0
dw 0xaa55
