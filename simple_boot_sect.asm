; Create an endless loop
my_loop:
    jmp my_loop

; Fill the in between with zeros
times 510-($-$$) db 0
; Write the magic number to the 512th byte
dw 0xaa55
