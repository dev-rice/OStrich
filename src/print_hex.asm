print_hex:
    pusha
    ; The hex number to print is in dx

    ; Print the prefix
    mov ah, 0x0e
    mov al, '0'
    int 0x10
    mov ah, 0x0e
    mov al, 'x'
    int 0x10

    ; Shift bx by 12 bits
    mov bx, dx
    shr bx, 12
    and bx, 0x000f
    call print_hex_char

    ; Shift bx by 8 bits
    mov bx, dx
    shr bx, 8
    and bx, 0x000f
    call print_hex_char

    ; Shift bx by 4 bits
    mov bx, dx
    shr bx, 4
    and bx, 0x000f
    call print_hex_char

    ; Shift bx by 0 bits
    mov bx, dx
    shr bx, 0
    and bx, 0x000f
    call print_hex_char

    popa

    ret

print_hex_char:
    pusha

    ; the least significant byte of bx is the hex character to print
    mov ah, 0x0e
    add bx, HEX_TABLE
    mov al, [bx]
    int 0x10

    popa

    ret

HEX_TABLE:
    db "0123456789ABCDEF", 0
