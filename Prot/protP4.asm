JMP start
num1: 	DB "1;3;2;6;7;7" ; Variable
      	DB 0	; String terminator
start:
	MOV C, num1
	MOV B, 0d
	MOV D, 0d
.loop:
	MOV A, [C]
	CMP A, 59d
	JE pontoevirgula
	SUB A, 48d
	ADD B, A
pontoevirgula:
	INC C
	CMP D, [C]
	JNZ .loop
	MOV A, B
	MOV D, A
	MOV B, 6
	DIV B
	MUL B
	HLT
