DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
MSG DB 'ENTER NUMBER:$'
MSG1 DB 'BEFORE SWAPING:$'
MSG2 DB 'AFTER SWAPING:$'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET MSG
MOV AH,9
INT 21H
MOV AH,1                      ;ENTER 1ST NUMBER
INT 21H
MOV BX,AX                     ;MOVE TO BX
MOV DX,10
MOV AH,2
INT 21H
MOV DX,OFFSET MSG
MOV AH,9
INT 21H
MOV AH,1                      ;ENTER 2ND NUMBER
INT 21H
MOV CX,AX                     ;MOVE TO CX
MOV DX,10
MOV AH,2
INT 21H
MOV DX,OFFSET MSG1
MOV AH,9
INT 21H
MOV DX,BX
MOV AH,2
INT 21H
PUSH BX                       ;PUSH BX INTO STACK
MOV DX,CX
MOV AH,2
INT 21H
PUSH CX                       ;PUSH CX INTO STACK
MOV DX,10
MOV AH,2
INT 21H
MOV DX,OFFSET MSG2
MOV AH,9
INT 21H
POP BX                        ;POP LAST VALUE FROM STACK TO BX
MOV DX,BX
MOV AH,2
INT 21H
POP CX                        ;POP FIRST VALUE FROM STACK TO CX
MOV DX,CX
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN








