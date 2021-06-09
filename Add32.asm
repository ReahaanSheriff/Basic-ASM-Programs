Mov 11H, #0FFH
Mov 12H, #0FFH
Mov 13H, #0FFH
Mov 14H, #0FFH

Mov 21H, #22H
Mov 22H, #22H
Mov 23H, #22H
Mov 24H, #22H

Mov A, 24H
Add A, 14H
Mov R4, A

Mov A, 23H
AddC A, 13H
Mov R3, A

Mov A, 22H
AddC A, 12H
Mov R2, A

Mov A, 21H
AddC A, 11H
Mov R1, A

Mov A, #0H
AddC A,#0H
Mov R0, A

stop: JMP stop

