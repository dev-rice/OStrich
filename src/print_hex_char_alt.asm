print_hex_char_alt:
    pusha

    cmp bx, 0x0000
    je print_zero

    cmp bx, 0x0001
    je print_one

    cmp bx, 0x0002
    je print_two

    cmp bx, 0x0003
    je print_three

    cmp bx, 0x0004
    je print_four

    cmp bx, 0x0005
    je print_five

    cmp bx, 0x0006
    je print_six

    cmp bx, 0x0007
    je print_seven

    cmp bx, 0x0008
    je print_eight

    cmp bx, 0x0009
    je print_nine

    cmp bx, 0x000a
    je print_a

    cmp bx, 0x000b
    je print_b

    cmp bx, 0x000c
    je print_c

    cmp bx, 0x000d
    je print_d

    cmp bx, 0x000e
    je print_e

    cmp bx, 0x000f
    je print_f


return:
    popa
    ret

print_zero:
    mov ah, 0x0e
    mov al, '0'
    int 0x10
jmp return

print_one:
    mov ah, 0x0e
    mov al, '1'
    int 0x10
jmp return

print_two:
    mov ah, 0x0e
    mov al, '2'
    int 0x10
jmp return

print_three:
    mov ah, 0x0e
    mov al, '3'
    int 0x10
jmp return

print_four:
    mov ah, 0x0e
    mov al, '4'
    int 0x10
jmp return

print_five:
    mov ah, 0x0e
    mov al, '5'
    int 0x10
jmp return

print_six:
    mov ah, 0x0e
    mov al, '6'
    int 0x10
jmp return

print_seven:
    mov ah, 0x0e
    mov al, '7'
    int 0x10
jmp return

print_eight:
    mov ah, 0x0e
    mov al, '8'
    int 0x10
jmp return

print_nine:
    mov ah, 0x0e
    mov al, '9'
    int 0x10
jmp return

print_a:
    mov ah, 0x0e
    mov al, 'a'
    int 0x10
jmp return

print_b:
    mov ah, 0x0e
    mov al, 'b'
    int 0x10
jmp return

print_c:
    mov ah, 0x0e
    mov al, 'c'
    int 0x10
jmp return

print_d:
    mov ah, 0x0e
    mov al, 'd'
    int 0x10
jmp return

print_e:
    mov ah, 0x0e
    mov al, 'e'
    int 0x10
jmp return

print_f:
    mov ah, 0x0e
    mov al, 'f'
    int 0x10
jmp return
