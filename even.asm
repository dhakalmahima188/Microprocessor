.model small
.stack 32
.data
 ten dw 10
.code 
main proc far
 mov ax,@data
mov ds,ax

mov dx,00
mov cx,100
mov ax,00

start:
add dl,2
add al,dl
jnc skip
inc ah
skip:
loop start
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