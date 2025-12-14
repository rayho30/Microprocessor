.model small
.stack 100h

.data
    num db 08h
    msg1 db "SHL result = $"
    msg2 db 13,10,"SHR result = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; ----- SHL -----
    mov al, num
    shl al, 1         ; 08h ? 10h
    add al, 30h       ; convert to ASCII
    mov bl, al

    mov ah, 09h
    lea dx, msg1
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    ; ----- SHR -----
    mov al, num
    shr al, 1         ; 08h ? 04h
    add al, 30h
    mov bl, al

    mov ah, 09h
    lea dx, msg2
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h
main endp
end main
