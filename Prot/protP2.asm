JMP start
hello: DB "Hello World!" ; Variable
       DB 0	; String terminator

start:
	MOV C, hello 
	MOV D, 232
	CALL print
        HLT            

print:	
	PUSH A
	PUSH B
	MOV B, 0
.loop:
	MOV A, [C]
	CMP A, 97d
	JAE upperCase
retUpperCase:	
	MOV [D], A
	INC C
	INC D  
	CMP B, [C]
	JNZ .loop	
	POP B
	POP A
	RET
upperCase:
	SUB A, 32d
	JMP retUpperCase