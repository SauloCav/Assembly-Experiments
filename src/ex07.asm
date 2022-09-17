	JMP start
base: DB 48d

start: 
	MOV A, 80d
	MOV B, A
	DIV 10d
	MOV C, A
	MUL 10d
	SUB B, A
	MOV D, B
	MOV B, 232
	ADD C, [base]
	ADD D, [base]
	MOV [B], C
	INC B
	MOV [B], D