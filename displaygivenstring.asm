.MODEL SMALL
.DATA
MSG   DB  "Enter: ",'$'
.CODE
MOV   AX,@DATA
MOV   DS,AX

;msg print
LEA DX,MSG          
MOV AH,09H
INT 21H

read:               
MOV AH,01
INT 21H
CMP AL,13              ;ascii for "ENTER" key
JE EXIT

MOV DL,0AH         ;moving the content of AH into dl to print it
MOV AH,02          
INT 21H
LOOP read

EXIT:
MOV AH,4CH 
INT 21H
END