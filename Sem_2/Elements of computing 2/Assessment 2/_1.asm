//division

@1
D = M
@a
M = D

@2
D = M
@b
M = D

@i 
M = 0

// while(a-b>0)
//  i++
//  a = a - b

(LOOP)
    @a
    D = M
    @b
    D = D - M
    @TRUE
    D;JGE
    @END
    0;JMP

(TRUE)
    @i
    M = M + 1
    @b 
    D = M
    @a 
    M = M - D
    @LOOP
    0;JMP
(END)
    @i
    D = M
    @3
    M = D // printing the result in 3
    @END
    0;JMP
