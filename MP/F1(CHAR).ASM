DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV DL,'A'
MOV AH,2
INT 21H             ;PRINT LETTER 'A'

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN






                        
