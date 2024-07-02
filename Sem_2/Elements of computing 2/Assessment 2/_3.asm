@1
D=M
@i
M=D
@2
D=M
@len
M=D

(LOOP)
    @len
    D=M
    @END_LOOP
    D;JLE

    @i
    A=M
    M=-1
    
    @i
    M=M+1
    @len
    M=M-1
    @LOOP
    0;JMP

(END_LOOP)
    @END_LOOP
    0;JMP
