[org 0x7c00]

mov dx, banner
call print_hex

call print_arrow

mov dx, [banner]
call print_hex

jmp $

%include "src/print_hex.asm"
%include "src/print_string.asm"

print_arrow:
    pusha

    mov ah, 0x0e
    mov al, '='
    int 0x10
    mov ah, 0x0e
    mov al, '>'
    int 0x10

    popa
    ret

banner:
    db "Loading OStrich...", 0

; Padding and magic BIOS number.

times 510-($-$$) db 0
dw 0xaa55
