[org 0x7c00]

mov bx, 0
mov ds, bx

mov dx, banner
call print_hex

mov bx, arrow_string
call print_string

mov dx, [banner]
call print_hex

jmp $

%include "src/print_hex.asm"
%include "src/print_string.asm"


arrow_string:
    db "=>", 0

banner:
    db "Loading OStrich...", 0

; Padding and magic BIOS number.
times 510-($-$$) db 0
dw 0xaa55
