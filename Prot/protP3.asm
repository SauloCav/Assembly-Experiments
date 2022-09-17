JMP start
num1: 	DB "11,7" ; Variable
      	DB 0	; String terminator
num2: 	DB "02,6" ; Variable
	DB 0	; String terminator
start:
	MOV C, num1
	MOV D, num2
.loop:
	MOV A, [C]
	CMP A, 0
	JE fim
	CMP A, 44d
	JE incremento
	SUB A, 48d
	MOV B, [D]
	SUB B, 48d
	ADD A, B
	PUSH A
incremento:
	INC C
	INC D
	JNZ .loop
fim:
	POP A
	CMP A, 10
	JAE carry
	HLT
carry:
	POP B
	INC B
	SUB A, 10
	PUSH B
	PUSH A