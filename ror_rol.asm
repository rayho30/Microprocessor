.model small
.stack 100h

.data
    num db 09h
    msg1 db "ROL result = $"
    msg2 db 13,10,"ROR result = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; ----- ROL -----
    mov al, num
    rol al, 1            ; 09h ? 12h
    add al, 30h          ; convert to ASCII (simple)
    mov bl, al

    mov ah, 09h
    lea dx, msg1
    int 21h

    mov dl, bl
    mov ah, 02h
    int 21h

    ; ----- ROR -----
    mov al, num
    ror al, 1            ; 09h ? 84h
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
