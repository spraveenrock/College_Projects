// 256* 32 number of 16 bit pixel lines to cover the entire screen/  8192 /16384
(INIT)
    @8192
    D=A
    @i
    M=D

(LOOP)
    @i
    M=M-1
    D=M
    @INIT
    D;JLT
    @KBD 
    D=M
    @WHITE
    D;JEQ
    @BLACK
    0;JMP

(BLACK)
    @SCREEN
    D=A
    @i
    A=D+M
    M=-1  //1111111 ===> black
    @LOOP
    0;JMP

(WHITE)
    @SCREEN//16384
    D=A
    @i
    A=D+M
    M=0 //00000000 ==> white 
    @LOOP
    0;JMP
