.model
.stack 32
.data
str db 50 dup("$")
.code 
main proc far
    mov ax,@data
    mov ds,ax
    ; mov si,offset str
    lea si,str
    l2: 
    mov ah,01H
    int 21H
    cmp al,13
    je L1
    mov[si],al
    inc si
    jmp l2
    l1: 
    mov ah,09H
    ; mov dx,offset str
    lea dx,str
    int 21h
    mov ax,4c00h
    int 21H
main endp
end main