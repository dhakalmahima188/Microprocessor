.model small
.stack 32
.data
 ten dw 10
 sum dw 0
.code 
main proc far
 mov ax,@data
mov ds,ax

mov dx,00
mov cx,03
mov ax,01h
mov dx,03


start:

add ax,dx
add sum,ax
jnc skip
inc ah
skip:
loop start
inc sum
mov ax,sum
l2:
mov dx,000h
div ten
inc cx
add dx,30h
push dx
cmp ax,0h
je l3
jmp l2

l3:
pop dx
mov ah,02h
int 21H
loop l3

mov ax,4c00h
int 21H
main endp
end main