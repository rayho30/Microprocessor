.model small          ; memory model
.stack 100h           ; Reserve 256 bytes for the stack

.data                 
    num1 db 25        ; First number (in decimal 25
    num2 db 7         ; Second number (in decimal 7)

.code                 
start:                
    mov ax, @data     ; Load address of data segment into AX
    mov ds, ax        ; Initialize DS register (data segment)

    mov al, num1      ;Move first number into AL
    sub al, num2      ; Subtract num2 from num1 → AL = num1 - num2

    add al, '0'       ; convert to ASCII
    mov dl, al        ; move to DL
    mov ah, 02h       ; print char
    int 21h           

    mov ah, 4Ch       ; exit program
    int 21h           ;Call DOS interrupt to print the result


end start             ;End of program
