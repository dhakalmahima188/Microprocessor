.model small
.stack 32
.data
arr db 6,5,32,82,70,04
.code 
main proc far
    mov ax,@data
    mov ds,ax
    mov dx,06h
 
start:
    mov si,00h
    mov cx,06h
l1:
    mov al,arr[si]
    cmp al, arr[si+1]
    jc no_swap
    mov bl,arr[si+1]
    mov arr[si+1],al
    mov arr[si],bl
no_swap: 
    inc si
    loop L1
    dec dx
    jnz start
    mov cx , 06
    mov si,00H
    mov cl,06
    mov si, offset arr
display:
    ; mov dl,arr[si]
    ; add dl,30h
    ; mov ah,02h
    ; int 21H
    ; mov dl,' '
    ; mov ah,02h
    ; int 21H
    ; inc si
     mov ah,00h
    mov al,[si] 
    aam
    add ax,3030h
    mov bx,ax
    mov ah,02
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h

    mov dl,32
    int 21h
    inc si
    loop display
 mov ax,4c00h
 int 21H
main endp
end main