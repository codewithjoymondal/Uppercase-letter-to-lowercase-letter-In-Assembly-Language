.MODEL SMALL
.STACK 100H
.DATA
 
    JOYMONDAL0 DB 'INPUT ONE UPPERCAE LATTER :- $$'
    JOYMONDAL1 DB ?
    JOYMONDAL2 DB 0AH,0DH,'YOUR  LOWERCASE LATER :- '
    JOYMONDAL3 DB ?
    FINISH DB '$$'
 
.CODE

MAIN PROC
 
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,9
    LEA DX,JOYMONDAL0
    INT 21H
 
    MOV AH,1
    INT 21H
    MOV JOYMONDAL1,AL
 
    ADD AL,20H
    MOV JOYMONDAL3,AL
 
    MOV AH,9
    LEA DX,JOYMONDAL2
    INT 21H
 
    MOV AH,4CH
    INT 21H

    MAIN ENDP
END MAIN