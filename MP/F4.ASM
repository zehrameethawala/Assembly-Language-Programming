DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
VAR DB '---'
Q DB ?

.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV BL,010B               
OR BL,010B               ;BINARY NUMBER FOR 2
MOV CL,8                  ;COUNTER
MOV DL,BL
ADD DL,48

L1:
MOV AH,2                  ;PRINT NUMBER
INT 21H
MOV AX,10                 ;DIVIDEND
DIV BL                    ;DIVIDE
MOV Q,AL                  ;MOVING VALUE OF QUOTIENT IN Q

MOV DL,Q                  ;PRINT QUOTIENT
ADD DL,48
MOV AH,2
INT 21H

MOV DX,10                 ;NEWLINE FEED
MOV AH,2
INT 21H
MOV DX,13                 ;CARRIAGE RETURN
MOV AH,2
INT 21H

INC BL                    ;INCREMENT
MOV DL,BL
ADD DL,48


LOOP L1
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN















