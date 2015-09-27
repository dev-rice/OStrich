; Print the first letter of hello
mov ah, 0x0e

mov bx, 0x7c0
mov ds, bx
mov al, [the_secret]
int 0x10

mov bx, 0x7c1
mov ds, bx
mov al, [the_secret]
int 0x10

mov bx, 0x7c2
mov ds, bx
mov al, [the_secret]
int 0x10

; This works
;mov bx, 0x7c0
;mov ds, bx
;mov al, [the_secret]
;int 0x10

; Also works!
;mov bx, 0x7c0
;mov es, bx
;mov al, [es:the_secret]
;int 0x10

; Loop forever
jmp $

; Make a label the_secret
the_secret:
    db 'Hello, World!',0

times 510-($-$$) db 0
dw 0xaa55
