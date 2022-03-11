.model
.stack 32
.data
str db 50 dup("$")
.code 
main proc far
    mov ax,@data
    mov ds,ax

  
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

    mov ax,00H
    int 10h

   mov ah,03h
   int 10H

   mov ah,02h
   mov bh,00H
   mov dh,10H
   mov dl,20h
   int 10h
   
    mov ah,09H    
    lea dx,str
    int 21h

    mov ax,4c00h
    int 21H
main endp
end main