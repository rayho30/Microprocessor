.model small
.stack 100h
.data
    num1 DB 0Ah
    num2 DB 05h
.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num1
    AND al, num2

    mov al, num1
    OR  al, num2

    mov al, num1
    XOR al, num2

    mov ax, 4c00h
    int 21h
main endp
end main
