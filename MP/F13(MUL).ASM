DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'ENTER A NUMBER:$'
MSG2 DB 'MULTIPLICATION:$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET MSG1
MOV AH,9
INT 21H
MOV AH,1
INT 21H
MOV BL,AL
SUB BL,48
MOV DX,10
MOV AH,2
INT 21H
MOV DX,OFFSET MSG1
MOV AH,9
INT 21H
MOV AH,1
INT 21H
SUB AL,48
MUL BL
AAM
MOV CH,AH
MOV CL,AL
MOV DX,10
MOV AH,2
INT 21H
MOV DX,OFFSET MSG2
MOV AH,9
INT 21H
MOV DL,CH
ADD DL,48
MOV AH,2
INT 21H
MOV DL,CL
ADD DL,48
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
