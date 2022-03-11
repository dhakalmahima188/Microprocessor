.model
.stack 32
.data
max_char db 225
nchar db ?
str db 20 dup("$")
msg db "YOur string: $"
.code 
main proc far
mov ax,@data
mov ds,ax

mov ah,0ah
lea dx,max_char
int 21h

mov cl,nchar


mov ah,09h
lea dx,msg
int 21H

mov ah,09h
lea dx,str
int 21H

mov ax,4c00h
int 21h

main endp
end main