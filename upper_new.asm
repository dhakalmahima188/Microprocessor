.model
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

mov ah,09H
lea dx,msg
int 21h


lea si,str

loops:
mov ah,01H
int 21H
mov [si],al
cmp al,20h
jne down
inc bl
down:
inc si
cmp al,13
jnz loops



; mov ah,09H
; lea dx,str
; int 21h
newline


mov si, offset str
display:
mov ah,02H
mov dl,[si]
cmp dl,'$'
je skip
cmp dl,13
je skip
sub dl,20h
skip:
int 21H
inc si
cmp dl,'$'
jne display


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