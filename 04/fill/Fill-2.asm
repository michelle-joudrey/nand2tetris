(START)

@SCREEN
D=A

@addr
M=D

@KBD
D=M

@OFF_LOOP
D;JEQ

// (on)
(ON_LOOP)
// turn on pixel
@addr
A=M
M=-1

// increment addr
@addr
M=M+1

// check if addr == KBD
D=M // D = addr
@KBD
D=D-A // D = addr - KBD

@START
D;JEQ

@ON_LOOP
0;JMP

(OFF_LOOP)
// turn off pixel
@addr
A=M
M=0

// increment addr
@addr
M=M+1

// check if addr == KBD
D=M // D = addr
@KBD
D=D-A // D = addr - KBD

@START
D;JEQ

@OFF_LOOP
0;JMP