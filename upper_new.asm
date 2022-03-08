.model small
.stack 32
.data

count_msg db "Total count: $"
msg db "Enter string : $"
maxchar db 255
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
mov bl,1

lea si,str

loops:

mov ah,01H
int 21H
mov dl,al
cmp al,'a'
jb skip
cmp al,'z'
ja skip

sub dl,20h
skip:
mov [si],dl

jne down
inc bl
down:
inc si
cmp al,13
jnz loops
; mov byte ptr[si-1],'$'


mov ah,09H
lea dx,str
int 21h
newline

lea si,str
newline



mov ah,09H
lea dx,count_msg
int 21h
mov ah,02H
mov dl,bl
add dl,30h
int 21h

mov ax,4c00h
int 21H
main endp
end main