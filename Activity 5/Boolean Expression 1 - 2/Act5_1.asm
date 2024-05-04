.model small
.stack 100h
.data
.code
main proc
mov ax, 11111011B
mov bx, 10110100B
mov cx, 01010101B
mov dx, 00110001B
sub ah, bh
add ah, al
sub ah, bl
sub ch, dh
add cl, ch
sub cl, dl
xor ah, cl
mov al, ah
mov ah, 02
Int 21h
main endp
end main
