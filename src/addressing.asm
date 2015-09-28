[org 0x7c00]

mov dx, banner
call print_hex

jmp $

%include "src/print_hex.asm"

banner:
    db "Loading OStrich...", 0

; Padding and magic BIOS number.

times 510-($-$$) db 0
dw 0xaa55
