; load DH sectors to ES:BX from drive DL
disk_load:
    ; Store DX on stack so late we can recall how many sectors were requested to be read, even if it is altered in the meantime.
    push dx

    ; BIOS read sector function
    mov ah, 0x02
    ; Read dh sectors
    mov al, dh
    ; Select cylinder 0
    mov ch, 0x00
    ; Select head 0
    mov dh, 0x00
    ; Start reading from second sector (i.e. after the boot sector)
    mov cl, 0x02

    ; BIOS disk read interrupt
    int 0x13

    jc disk_general_error

    ; Restore dx from the stack
    pop dx
    
    ; If al (sectors read) != dh (sectors expected)
    cmp dh, al
    jne disk_read_error

    ret

disk_general_error:
    mov bx, DISK_GENERAL_ERROR_MSG
    call print_string
    jmp $

disk_read_error:
    mov bx, DISK_READ_ERROR_MSG
    call print_string
    jmp $

DISK_GENERAL_ERROR_MSG:
    db "Disk general error!", 0

DISK_READ_ERROR_MSG:
    db "Disk read error!", 0
