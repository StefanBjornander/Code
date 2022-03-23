	global float_test

	extern $StackTop


section .text

 float_test:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 float_test$1:
	; FunctionEnd float_test
