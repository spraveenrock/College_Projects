@SCREEN
D=A
@pxl
M=D
@12// height//top
D=A
@i
M=D
(WHILE_I)
    @16
    D=A
    @j
    M=D
    (WHILE_J)
        @pxl
        A=M
        M=-1
        @pxl
        M=M+1
        @j
        M=M-1
        @j
        D=M
        @WHILE_J
        D;JGT
        @BACK_TO_WHILE_I
        0;JMP
    (BACK_TO_WHILE_I)
    @16
    D = A
    @pxl
    M=M+D
    @i
    M=M-1
    @i
    D=M
    @WHILE_I
    D;JGT
    @NEXT_TO_SIDE
    0;JMP
(NEXT_TO_SIDE)
    @100
    D = A
    @he 
    M = D
    (LOOP)
        @1
        D = A
        @s
        M = D
        (DAS1)
            @pxl
            A = M
            M = -1
            @pxl 
            M = M + 1
            @s
            M = M - 1
            D = M 
            @DAS1
            D;JGT
            @DAS1_continue
            0;JMP
        (DAS1_continue) 
        @14
        D = A 
        @pxl 
        M = M + D
        @1
        D = A
        @s
        M = D
        (DAS2)
            @pxl
            A = M
            M = -1
            @pxl 
            M = M + 1
            @s
            M = M - 1
            D = M 
            @DAS2
            D;JGT
            @DAS2_continue
            0;JMP
        (DAS2_continue) 
        @16
        D = A 
        @pxl 
        M = M + D
        @he
        M = M - 1
        D = M
        @LOOP
        D;JGT
        @NEXT_TO_BOTTOM
        0;JMP
(NEXT_TO_BOTTOM)
@12
D = A
@k 
M = D
(LINES)
    @16
    D = A
    @l
    M = D
    (LIN)
        @pxl
        A = M
        M = -1
        @pxl
        M = M + 1
        @l
        M = M - 1
        D = M
        @LIN
        D;JGT
        @LINES_CONTINE
        0;JMP
    (LINES_CONTINE)
    @16
    D = A
    @pxl 
    M = M + D
    @k
    M = M - 1
    D = M
    @LINES
    D;JGT
    @END
    0;JMP

(END)
    @END
    0;JMP
// bottom
// 256*32 number of 16-bit pixel lines to cover the entire screen
