.model
.stack 32
.data
sum db "Hello $"
.code 
mov ax,@data
mov ds,ax

mov ax,4c00h
int 21H
end