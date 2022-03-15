	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary773 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary773
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary775 £temporary774 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary777 £temporary776 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary775 £temporary777
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary779 £temporary778 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary781 £temporary780 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary779 £temporary781
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary783 £temporary782 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary785 £temporary784 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary783 £temporary785
	mov rax, [rdi + 16]
	mov [rsi + 16], rax

 setjmp$11:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp$12:
	; FunctionEnd setjmp

section .text

 longjmp:
	; AssignRegister ebx return_value
	mov ebx, [rbp + 32]

 longjmp$1:
	; Dereference £temporary789 £temporary788 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary789
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary792 £temporary791 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary792
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary795 £temporary794 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary795
	mov rbp, [rsi + 8]

 longjmp$7:
	; JumpRegister rcx
	jmp rcx

 longjmp$8:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 longjmp$9:
	; FunctionEnd longjmp
