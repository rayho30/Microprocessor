.model small
.stack 100h

.data
    num db 07h
    evenMsg db "Number is EVEN$"
    oddMsg  db "Number is ODD$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num
    AND al, 01h        ; Check LSB

    cmp al, 00h
    je EVEN            ; If zero ? EVEN

ODD:
    mov ah, 09h
    lea dx, oddMsg
    int 21h
    jmp EXIT

EVEN:
    mov ah, 09h
    lea dx, evenMsg
    int 21h

EXIT:
    mov ax, 4c00h
    int 21h
main endp
end main
