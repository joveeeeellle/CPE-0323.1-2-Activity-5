.model small
.stack 100h

.data
    number dw ?
    msg_odd db "The number is odd.$"
    msg_even db "The number is even.$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 01h
    int 21h
    sub al, '0'
    mov number, ax

    mov cx, 1
    and number, cx
    jnz odd_number

    mov dx, offset msg_even
    jmp print_message

odd_number:
    mov dx, offset msg_odd

print_message:
    mov ah, 09h
    int 21h

    mov ax, 4C00h
    int 21h

main endp
end main
