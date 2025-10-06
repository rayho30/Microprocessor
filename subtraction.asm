.model small          ; memory model
.stack 100h           ; stack size 256 bytes

.data                 
    num1 db 25        ; first number define byte
    num2 db 7         ; second number define byte

.code                 
start:                
    mov ax, @data     ; load data segment
    mov ds, ax        ; set DS

    mov al, num1      ; AL = num1
    sub al, num2      ; AL = num1 - num2

    add al, '0'       ; convert to ASCII
    mov dl, al        ; move to DL
    mov ah, 02h       ; print char
    int 21h           

    mov ah, 4Ch       ; exit program
    int 21h           

end start             ; end