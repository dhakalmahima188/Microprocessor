.model small
.stack 32
.data
 ten dw 10
 sum dw 0
.code 
main proc far
 mov ax,@data
mov ds,ax

mov ah,01h
int 21h

mov ah,02h
mov ah,0ah
int 21H
mov ah,0dh
int 21H


sub al,30h
mov ah,0h
push ax

mov dx,00
mov cx,5
mov ax,00

start:
add dx,1
; add al,dl
add sum,dx

jnc skip
inc ah
skip:
loop start

pop ax
mul sum

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