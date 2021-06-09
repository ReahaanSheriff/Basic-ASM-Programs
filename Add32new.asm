CLR C
Mov R0, #8fH
Mov R1, #4eH
Mov R2, #58H
Mov R3, #34H

Mov R4, #19H
Mov R5, #27H
Mov R6, #32H
Mov R7, #71H

Mov A, R3
Add A, R7
Mov 13H, A

Mov A, R2
AddC A, R6
Mov 12H, A

Mov A, R1
AddC A, R5
Mov 11H, A

Mov A, R0
AddC A, R4
Mov 10H, A


stop: JMP stop

