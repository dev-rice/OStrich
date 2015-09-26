print_string:
    mov ah, 0x0e
    mov al, 'a'
    int 0x10
    ret
