.model small
.stack 32
.data
    max_char db 15
    no_of_char db ?
    str db 15 dup('$')
    new_line db 0dh, 0ah, '$'
.code
    main proc far
        mov ax, @data
        mov ds, ax
        
        mov ah, 0ah
        lea dx, max_char
        int 21h

        mov si, 0
        mov cx, 0
        mov cl, no_of_char
case:   cmp str[si], 'a'
        jb skip
        cmp str[si], 'z'
        ja skip
        sub str[si], 32
skip:   inc si
        loop case

        mov ah, 09h
        lea dx, new_line
        int 21h

        mov ah, 09h
        lea dx, str
        int 21h

        mov ax, 4c00h
        int 21h
    main endp
end main