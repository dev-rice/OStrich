; Set the ds register to 0x7c0, for real computer compatibility
; This gets mutliplied by 16, so it ends up that the lowest address of the memory is at 0x7c00, right where BIOS loaded it to
mov bx, 0x7c0
mov ds, bx

; Print the banner
mov bx, banner
call print_string

; Do nothing
jmp $

%include "src/print_string.asm"

banner:
    db "Loading OStrich...", 0

; Padding and magic BIOS number.
times 510-($-$$) db 0
dw 0xaa55
