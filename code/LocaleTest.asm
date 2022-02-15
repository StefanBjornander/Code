	global locale_test

	extern $StackTop


section .text

 locale_test:
	; 1 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 locale_test$1:
	; 2 FunctionEnd locale_test
