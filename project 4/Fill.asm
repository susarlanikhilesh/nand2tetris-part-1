// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(LOOP)
@SCREEN
D=A

@i
M=D //Initialize i

@KBD
D=A

@n
M=D //Initialize n




@KBD
D=M

@FILL
D;JGT

@CLEAR
0;JMP

@LOOP
0;JMP

@CHECK
0;JMP

@LOOP
0;JMP



(CHECK)
@i
D=M

@n
D=M-D //check if n - i > 0

@FILL
D;JGT

(END)
@LOOP
0;JMP

(FILL)
@i
A=M
M=-1

@i
M=M+1

@CHECK
0;JMP


(CLEAR)
@SCREEN
D=A

@i
M=D //Initialize i

@KBD
D=A

@n
M=D //Initialize n


(CHECK1)
@i
D=M

@n
D=M-D //check if n - i > 0

@FILL1
D;JGT

(END)
@LOOP
0;JMP

(FILL1)
@i
A=M
M=0

@i
M=M+1

@CHECK1
0;JMP
