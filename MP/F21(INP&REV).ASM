DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'ENTER STRING:$'
MSG2 DB 'REVERSE STRING:$'
STRING DB 100 DUP('$')
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

MOV DX,OFFSET MSG1
MOV AH,9
INT 21H
MOV SI,OFFSET STRING

NAME_LOOP:                     ;LOOP FOR INPUT NAME
MOV AH,1
INT 21H
CMP AL,13                      ;COMPARE STATEMENT
JE NAME_PRINT                  ;CONDITIONAL JUMP 
MOV [SI],AL                    ;MOVE AL VALUE TO SI
INC SI                         ;INCREMENT SI
JMP NAME_LOOP                  ;UNCONDITIONAL JUMP


NAME_PRINT:
MOV DX,OFFSET MSG2
MOV AH,9
INT 21H
MOV BX,'#'
PUSH BX
MOV SI,OFFSET STRING

L1:                            ;LOOP FOR PUSH INTO STACK
MOV BX,[SI]
CMP BL,'$'                     ;COMPARE STATEMENT
JE L2                          ;CONDITIONAL JUMP
PUSH BX
INC SI
JMP L1                         ;UNCONDITIONAL JUMP

L2:                            ;LOOP FOR POP FROM STACK
POP DX
CMP DX,'#'                     ;COMPARE STATEMENT
JE L3                          ;CONDITIONAL JUMP
MOV AH,2
INT 21H
JMP L2                         ;UNCONDITIONAL JUMP


L3:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN







