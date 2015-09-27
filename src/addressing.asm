[org 0x7c00]

mov bx, the_secret
call print_string

jmp $

%include "src/print_string.asm"

the_secret:
    db "Loading OStrich...", 0

; Padding and magic BIOS number.

times 510-($-$$) db 0
dw 0xaa55
