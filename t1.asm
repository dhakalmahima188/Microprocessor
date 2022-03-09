; Write an assembly language program to add all the elements of a table, which are between 50 and 150 only.
; Display the result as the decimal value.

.model small
.stack 32
.data
number db 255
table dw 20,130,150,750,20,'$'
count db 0

.code 
    main proc far
    mov ax,@data
    mov ds,ax
    mov cx,5
    lea si, table

again:
    mov bx,[si]
    cmp bx,50
    jb skip
    cmp bx,150
    ja skip
    adc ax,bx
    ; adc ah,0   
    aaa 
skip:
inc si
loop again  
    aam
    add ax,3030h
    mov bx,ax
    mov ah,02   
    mov dl,bl
    int 21H
    mov dl,bh
    int 21h
    mov ax,4c00h
    int 21H
main endp
end main