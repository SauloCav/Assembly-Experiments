JMP start
num1: 	DB "32,4" 
      	DB 0	
start:
	MOV C, num1
	MOV B, 0d
	MOV D, 0d
.loop:
	MOV A, [C]
	CMP A, 44d
	JE virgula
	SUB A, 48d
	PUSH A
virgula:
	INC C
	CMP D, [C]
	JNZ .loop
	POP A
	MUL 9d
	DIV 5d
	DIV 10d
	ADD A, 32
	ADD B, A
	POP A
	MUL 9d
	DIV 5d
	ADD B, A
	POP A
	MUL 18d
	ADD B, A
	HLT
