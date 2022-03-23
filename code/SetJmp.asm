	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary773 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary773
	mov [rbp + 32], {operand2}

 setjmp$2:
	; Dereference £temporary775 £temporary774 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 setjmp$3:
	; Dereference £temporary777 £temporary776 0
	mov rdi, [{operand1}{WithSign(operand2)}]

 setjmp$4:
	; Assign £temporary775 £temporary777
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 setjmp$5:
	; Dereference £temporary779 £temporary778 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 setjmp$6:
	; Dereference £temporary781 £temporary780 0
	mov rdi, [{operand1}{WithSign(operand2)}]

 setjmp$7:
	; Assign £temporary779 £temporary781
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi + 8], {operand2}

 setjmp$8:
	; Dereference £temporary783 £temporary782 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 setjmp$9:
	; Dereference £temporary785 £temporary784 0
	mov rdi, [{operand1}{WithSign(operand2)}]

 setjmp$10:
	; Assign £temporary783 £temporary785
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi + 16], {operand2}

 setjmp$11:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 setjmp$12:
	; FunctionEnd setjmp

section .text

 longjmp:
	; AssignRegister ebx return_value
	mov ebx, [{operand1}{WithSign(operand2)}]

 longjmp$1:
	; Dereference £temporary789 £temporary788 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 longjmp$2:
	; AssignRegister rcx £temporary789
	mov rcx, [{operand1}{WithSign(operand2)}]

 longjmp$3:
	; Dereference £temporary792 £temporary791 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 longjmp$4:
	; AssignRegister rdi £temporary792
	mov rdi, [{operand1}{WithSign(operand2)}]

 longjmp$5:
	; Dereference £temporary795 £temporary794 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 longjmp$6:
	; AssignRegister rbp £temporary795
	mov rbp, [{operand1}{WithSign(operand2)}]

 longjmp$7:
	; JumpRegister rcx
	jmp rcx

 longjmp$8:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 longjmp$9:
	; FunctionEnd longjmp
