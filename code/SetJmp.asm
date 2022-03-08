	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary760 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary760
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary762 £temporary761 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary764 £temporary763 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary762 £temporary764
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary766 £temporary765 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary768 £temporary767 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary766 £temporary768
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary770 £temporary769 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary772 £temporary771 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary770 £temporary772
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
	; Dereference £temporary776 £temporary775 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary776
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary779 £temporary778 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary779
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary782 £temporary781 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary782
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
