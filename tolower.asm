.model small
.stack 32
.data
    str db "Its mahIma here !!! $"
    
.code
    main proc far
        mov ax, @data
        mov ds, ax

        mov si, 0
        
loops: 
        cmp str[si], '$'
        je exit  
        cmp str[si], 'A'
        jb skip
        cmp str[si], 'Z'
        ja skip
        add str[si], 32
skip:   inc si
        jmp loops
exit:
        mov ah, 09h
        lea dx, str
        int 21h

        mov ax, 4c00h
        int 21h
    main endp
end main