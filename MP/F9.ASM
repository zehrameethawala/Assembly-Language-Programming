DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV CX,10           
MOV DX,48          

L1:              ;LOOP DECLARATION
MOV AH,2
INT 21H
INC DX             

LOOP L1          ;CALL FOR LOOP

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

