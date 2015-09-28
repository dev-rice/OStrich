print_string:
    pusha
    ; bx contains the address of the string
    mov ah, 0x0e

    my_loop:
        ; Put the byte referenced by bx into al
        mov al, [bx]

        ; If the current byte is 0, exit the loop
        cmp al, 0
        je exit_loop

        ; otherwise, print the current byte
        int 0x10

        ; add 1 to the index and loop again
        add bx, 1
        jmp my_loop

    exit_loop:
        popa
        ret
