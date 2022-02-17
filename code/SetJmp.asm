	global setjmp
	global longjmp

	extern $StackTop


section .text

 setjmp:
	; InspectRegister £temporary693 rbp

 setjmp$1:
	; Assign rbp_pointer £temporary693
	mov [rbp + 32], rbp

 setjmp$2:
	; Dereference £temporary695 £temporary694 0
	mov rsi, [rbp + 24]

 setjmp$3:
	; Dereference £temporary697 £temporary696 0
	mov rdi, [rbp + 32]

 setjmp$4:
	; Assign £temporary695 £temporary697
	mov rax, [rdi]
	mov [rsi], rax

 setjmp$5:
	; Dereference £temporary699 £temporary698 0
	mov rsi, [rbp + 24]

 setjmp$6:
	; Dereference £temporary701 £temporary700 0
	mov rdi, [rbp + 32]

 setjmp$7:
	; Assign £temporary699 £temporary701
	mov rax, [rdi + 8]
	mov [rsi + 8], rax

 setjmp$8:
	; Dereference £temporary703 £temporary702 0
	mov rsi, [rbp + 24]

 setjmp$9:
	; Dereference £temporary705 £temporary704 0
	mov rdi, [rbp + 32]

 setjmp$10:
	; Assign £temporary703 £temporary705
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
	; Dereference £temporary709 £temporary708 0
	mov rsi, [rbp + 24]

 longjmp$2:
	; AssignRegister rcx £temporary709
	mov rcx, [rsi]

 longjmp$3:
	; Dereference £temporary712 £temporary711 0
	mov rsi, [rbp + 24]

 longjmp$4:
	; AssignRegister rdi £temporary712
	mov rdi, [rsi + 16]

 longjmp$5:
	; Dereference £temporary715 £temporary714 0
	mov rsi, [rbp + 24]

 longjmp$6:
	; AssignRegister rbp £temporary715
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
