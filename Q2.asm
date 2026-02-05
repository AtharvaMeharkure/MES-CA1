ORG 0000H

MOV 60H, #00H      ; Initialize result memory

MOV R0, 50H        ; First number
MOV R1, 51H        ; Second number

L1:
    MOV A, R0
    JZ L2

    MOV A, R1
    JZ L3

    DEC R0
    DEC R1
    SJMP L1

L2:
    MOV A, R1
    JZ L4
    MOV 60H, #0FFH ; A < B
    SJMP L5

L3:
    MOV 60H, #01H  ; A > B
    SJMP L5

L4:
    MOV 60H, #00H  ; A = B

L5:
    SJMP L5        ; Idle loop

END
