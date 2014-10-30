CODE    SEGMENT
        ASSUME  DS:CODE,CS:CODE,ES:CODE,SS:CODE
        .186
        ORG 100h

START:
        mov dl,DATA1
        add dl,DATA2
        add dl,'0'

        mov ah,2
        int 21h

        mov ax,4c00h
        int 21h

DATA1 byte  5
DATA2 byte  3

        ENDS
        END START
; 一部のコンパイラでは、
;CODE ENDS
; END START
;と記述しなければいけないようです
