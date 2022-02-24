	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary769 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary769
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary771 £temporary770 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary773 £temporary772 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary771 £temporary773
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary775 £temporary774 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary777 £temporary776 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary775 £temporary777
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary779 £temporary778 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary781 £temporary780 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary779 £temporary781
	mov rax, [rdi + 16]
	mov [rsi + 16], rax

 setjmp$11:
	; SetReturnValue

 setjmp$12:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp$13:
	; FunctionEnd setjmp

section .text

 longjmp:
	; AssignRegister ebx return_value
	mov ebx, [rbp + 32]

 longjmp$1:
	; Dereference £temporary785 £temporary784 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary785
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary788 £temporary787 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary788
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary791 £temporary790 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary791
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
