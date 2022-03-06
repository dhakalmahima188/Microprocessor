.model
.stack 32
.data

.code 
mov ax,@data
mov ds,ax

mov ah , 0
mov al , 13h
INT 10h

mov ax , 0
mov bx , 0
mov cx , 0
mov dx , 0

mov cx , 0Fh
mov dx , 4240h
mov ah , 86h
INT 15h
end