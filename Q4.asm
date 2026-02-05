ORG 0000H

; Construct first two digits: 27H
MOV A, #20H        ; 0010 0000
ORL A, #07H        ; 0000 0111 -> A = 27H
MOV R1, A          ; Store 27H in R1

; Construct last two digits: 08H
MOV A, #0FFH       ; 1111 1111
ANL A, #08H        ; 0000 1000 -> A = 08H

END
