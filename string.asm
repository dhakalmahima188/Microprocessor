.model
.stack 32
.data
msg db "YOur string: $"
.code 
mov ax,@data
mov ds,ax


lea dx,msg
;also
; mov dx,offset msg
mov ah,09h

int 21H
end