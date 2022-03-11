.model small
.stack 32
.data
 ten dw 10
 sum dw 1
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


mov dl,al
mov cl,al
mov al,01

start:
mul dl
; mul sum
mov sum,ax

jnc skip
inc ah
skip:
dec dl
loop start

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