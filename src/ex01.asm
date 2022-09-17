	JMP inicio
X:	DB 0d
S:	DB 10d
inicio:
	MOV A,[X]
loop:
	INC A
	CMP A,[S]
	JNE loop
	HLT