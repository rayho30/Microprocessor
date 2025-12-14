.model small
.stack 100h
.data
    num DB 0Fh
.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num
    NOT al           ; Complement

    mov ax, 4c00h
    int 21h
main endp
end main
