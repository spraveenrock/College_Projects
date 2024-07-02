@1
D = M
@a
M = D
@2
D = M
@b
M = D

@a
D = M
@b
D = D - M

@IF 
D;JGT
@ELSE 
0;JMP

(IF)
    @a
    D = M 
    @3
    M = D
    @END
    0;JMP
(ELSE)
    @b
    D = M
    @3
    M = D
    @END
    0;JMP
(END)
    @END
    0;JMP