.model small
.stack 32
.data
  srow db 5
  scol db 10
  erow db 10
  ecol db 70

.code 
main proc far
mov ax,@data
mov ds,ax

mov ax,0003h
int 10H

mov ax,0600h
mov bh,17h
mov ch,srow
mov cl,scol
mov dh,erow
mov dl,ecol
int 10h



mov dl,32
mov ah,02h
mov bx,0

row_write:

push dx
mov dh,srow
mov dl,scol

int 10H

pop dx
push cx
mov cx,60

coloumn_write:
int 21H
inc dl
cmp dl,128
jz exit
loop coloumn_write   ;cl<<70
pop cx
inc srow
loop row_write  ;ch<<10


exit:
mov ah,07
int 21h

mov ax,4c00h
int 21H
main endp
end main