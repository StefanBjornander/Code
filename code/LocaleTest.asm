	global locale_test

	extern $StackTop


section .text

 locale_test:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 locale_test$1:
	; FunctionEnd locale_test
