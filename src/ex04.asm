	JMP inicio
X:	DB 200d
Y:	DB 100d
inicio:
	MOV A,[X]
	MOV B,[Y]
	MOV C, 0d
	MOV D, 0d
loop:
	ADD A,B
	MOV D,A
	JNC exit
	MOV C, 0x01
exit:
	HLT