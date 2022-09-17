	JMP start

start: 
	MOV A, 73d
	MOV B, A
	DIV 10d
	MOV C, A
	MUL 10d
	SUB B, A
	MOV D, B