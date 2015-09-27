
mov bx, 0x01f0

mov ah, 0x0e
mov al, '.'

mov cx, 0
my_loop:
    mov al, [bx]
    int 0x10
    ; Loop if cx < 100
    add cx, 1
    cmp cx, 16
    jl my_loop


jmp $

hello:
    db "Hello "

times 510-($-$$) db 0
dw 0xaa55
