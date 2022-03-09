.model small
.stack 32
.data
	max_char db 15
	no_of_char db ?
	str db 20 dup('$')
	.code
	main proc far
		mov ax, @data
		mov ds, ax
		
		mov ah, 0ah
		lea dx, max_char
		int 21h

		mov ax, 03h
		int 10h

		mov dl, 20    ;coloumn 
		mov dh, 10     ;row
		mov bh, 0      ;page no
		mov ah, 02     ;set curser
		int 10h

		mov ah, 09h
		lea dx, str
		int 21h

		mov ax, 4c00h
		int 21h
	main endp
end main
