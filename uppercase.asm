.model small
.stack 32
.data

maxchar db 255
no_of_char db ?
str db 20 dup('$')


.code 
newline macro 
    push ax
    mov ah,02h
    mov dl,0ah
    int 21H
    mov dl,0dh
    int 21H
    pop ax
endm

main proc far
mov ax,@data
mov ds,ax

mov ah,0ah
lea dx,maxchar
int 21h

mov si,0
mov cx,0
mov cl,no_of_char

lea si,str

loops:

cmp byte ptr[si],'a'
jb skip
cmp byte ptr[si],'z'
ja skip
sub byte ptr[si],20h

skip:
inc si
loop loops

newline
mov ah,09H
lea dx,str
int 21h

mov ax,4c00h
int 21H
main endp
end main