.model
.stack 32
.data
sum 
.code 
main proc far

    mov ax,@data
    mov ds,ax
    

    mov ax,4c00h
    int 21H
main endp
end main