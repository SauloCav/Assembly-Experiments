JMP start
X:	DB 50
start:
	MOV A,0d ; insere 0 ao REG A
	MOV D, 232
loop:
	CALL print
	INC A
	JMP loop
        HLT   
print:
	MOV C, A
	ADD C, 48d
	MOV [D], C
	INC D
	MOV [D], 32d	
	INC D
	RET