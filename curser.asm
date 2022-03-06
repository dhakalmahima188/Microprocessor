.model
.stack 32
.data
row db 15h
col db 16h
.code 
mov ax,@data
mov ds,ax
mov ah,02   ;set curser
mov bh,00
mov dh,row   ;dh as row
mov dl,col    ;dl as coloumn



; mov ax,4c00h
; int 21H
end