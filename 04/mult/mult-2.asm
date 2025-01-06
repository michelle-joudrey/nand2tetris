/*
var a = ...
var b = ...
var i = a
var result = 0
while i != 0 {
   result += b
   i -= 1
}
return result
*/

// result = 0
@R2
M=0

// i = R0
@R0
D=M
@i
M=D

(LOOP)
// if i == 0 break
@i
D=M
@LOOPEND
D;JEQ

// result += R1
@R1
D=M
@R2
M=D+M

// i -= 1
@i
M=M-1

@LOOP
0;JMP

(LOOPEND)
0;JMP