mov ah, 0x0e
mov al, [0x0000]
int 0x10

jmp $

%include "src/print_string.asm"

HELLO_MSG:
    db 'Hello, World!', 0

GOODBYE_MSG:
    db 'Goodbye!', 0

times 510-($-$$) db 0
dw 0xaa55
