
mov bx, 'a'

mov ah, 0x0e

mov cx, 0
my_loop:
    ; Print the contents of bl
    mov al, bl
    int 0x10

    ; Change it to the next letter
    add bl, 1

    ; Loop if cx < 100
    add cx, 1
    cmp cx, 26
    jl my_loop


jmp $

times 510-($-$$) db 0
dw 0xaa55
