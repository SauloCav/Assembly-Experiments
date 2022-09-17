	JMP start
base: DB 48d

start: 
	MOV D, 232
	MOV A, 0d
	ADD A, [base]
	MOV [D], A
	HLT