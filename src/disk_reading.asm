; Set the ds register to 0x7c0, for real computer compatibility
; This gets mutliplied by 16, so it ends up that the lowest address of the memory is at 0x7c00, right where BIOS loaded it to
mov bx, 0x7c0
mov ds, bx

mov [BOOT_DRIVE], dl

mov bp, 0x8000
mov sp, bp

mov bx, 0x9000
mov dh, 5
mov dl, [BOOT_DRIVE]
call disk_load

mov dx, [0x9000]
call print_hex

mov dx, [0x9000 + 512]
call print_hex

jmp $

%include "src/print_string.asm"
%include "src/print_hex.asm"
%include "src/disk_load.asm"

BOOT_DRIVE:
    db 0

OTHER_DRIVE:
    db 1

; Padding and magic BIOS number.
times 510-($-$$) db 0
dw 0xaa55

times 256 dw 0xdada
times 256 dw 0xface
