; Write an assembly language program to add all the elements of a table, which are between 50 and 150 only.
; Display the result as the decimal value.

.model small
.stack 32
.data

.code 
main proc far
 mov ax,@data
mov ds,ax

mov ax,4c00h
int 21H
main endp
end main