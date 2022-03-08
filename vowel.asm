.model small
.stack 32
.data

    max_char   db 50
    no_of_char db ?
    str        db 50 dup('$')
    vow        db "aeiouAEIOU"
    count      db 0
.code
newline macro
                     mov     ah,02h
                     mov     dl,0ah
                     int     21H
                     mov     dl,0dh
                     int     21h
endm

main proc far
            mov     ax,@data
            mov     ds,ax

            mov     ah, 0ah
            lea     dx, max_char
            int     21h
        
            lea     bx,str
            mov     cx,0
            mov     cl, no_of_char
       
  

            newline
    next:   
            push    cx
            lea     si,vow
            mov     cl,0ah
            mov     al,[bx]
    up:     
            cmp     al,[si]
            jne     down
            inc     count
    down:   
            inc     si
            loop    up
            inc     bx
            pop     cx
            loop    next

            mov     byte ptr[bx],'$'
            
            mov     ah,09
            lea     dx,str
            int     21H
            newline
            mov     ah,00h
            mov     al,count
            aam
            or      ax,3030h
            mov     bx,ax
            mov     ah,02
            mov     dl,bh
            int     21H
            mov     dl,bl
            int     21h
            mov     ax,4c00h
            int     21H
main endp
end main