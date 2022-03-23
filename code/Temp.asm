	global generateName
	global tmpnam
	global tmpfile

	extern fileexists
	extern fopen
	extern $StackTop


section .data

@3027$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@3029$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .text

 generateName:
	; Add £temporary1096 index integral4$1#
	mov eax, [{operand1}{WithSign(operand2)}]
	inc eax

 generateName$1:
	; GreaterThanEqual 31 £temporary1096 max
	cmp eax, [{operand1}{WithSign(operand2)}]
	jge generateName$31

 generateName$2:
	; Add £temporary1099 index integral4$1#
	mov eax, [{operand1}{WithSign(operand2)}]
	inc eax

 generateName$3:
	; IntegralToIntegral £temporary1100 £temporary1099
	mov rbx, 4294967295
	and rax, rbx

 generateName$4:
	; Add £temporary1101 name £temporary1100
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 generateName$5:
	; Dereference £temporary1102 £temporary1101 0

 generateName$6:
	; Assign £temporary1102 integral1$0#
	mov byte [rsi], {operand2}

 generateName$7:
	; Assign c integral1$97#
	mov byte [rbp + 40], {operand2}

 generateName$8:
	; GreaterThan 36 c integral1$122#
	cmp byte [rbp + 40], {operand2}
	jg generateName$36

 generateName$9:
	; IntegralToIntegral £temporary1106 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 generateName$10:
	; Add £temporary1107 name £temporary1106
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 generateName$11:
	; Dereference £temporary1108 £temporary1107 0

 generateName$12:
	; Assign £temporary1108 c
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 generateName$13:
	; PreCall 41

 generateName$14:
	; Parameter 65 pointer name
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 65], {operand2}

 generateName$15:
	; Call 41 fileexists 0
	mov qword [rbp + 41], generateName$16
	mov [rbp + 49], {operand2}
	add rbp, 41
	jmp fileexists

 generateName$16:
	; PostCall 41

 generateName$17:
	; GetReturnValue £temporary1109

 generateName$18:
	; Equal 28 £temporary1109 integral4$0#
	cmp ebx, 0
	je generateName$28

 generateName$19:
	; PreCall 41

 generateName$20:
	; Add £temporary1112 index integral4$1#
	mov eax, [{operand1}{WithSign(operand2)}]
	inc eax

 generateName$21:
	; Parameter 65 signed int £temporary1112
	mov [rbp + 65], {operand2}

 generateName$22:
	; Parameter 69 pointer name
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 69], {operand2}

 generateName$23:
	; Parameter 77 signed int max
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 77], {operand2}

 generateName$24:
	; Call 41 generateName 0
	mov qword [rbp + 41], generateName$25
	mov [rbp + 49], {operand2}
	add rbp, 41
	jmp generateName

 generateName$25:
	; PostCall 41

 generateName$26:
	; GetReturnValue £temporary1113

 generateName$27:
	; Equal 29 £temporary1113 integral4$0#
	cmp ebx, 0
	je generateName$29

 generateName$28:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 generateName$29:
	; Add c c integral1$1#
	inc byte [rbp + 40]

 generateName$30:
	; Jump 8
	jmp generateName$8

 generateName$31:
	; GreaterThanEqual 36 index max
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 24], {operand2}
	jge generateName$36

 generateName$32:
	; IntegralToIntegral £temporary1120 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 generateName$33:
	; Add £temporary1121 name £temporary1120
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 generateName$34:
	; Dereference £temporary1122 £temporary1121 0

 generateName$35:
	; Assign £temporary1122 integral1$0#
	mov byte [rsi], {operand2}

 generateName$36:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 generateName$37:
	; FunctionEnd generateName

section .text

 tmpnam:
	; PreCall 32

 tmpnam$1:
	; Parameter 56 signed int integral4$0#
	mov dword [rbp + 56], {operand2}

 tmpnam$2:
	; Parameter 60 pointer name
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 60], {operand2}

 tmpnam$3:
	; Parameter 68 signed int integral4$4#
	mov dword [rbp + 68], {operand2}

 tmpnam$4:
	; Call 32 generateName 0
	mov qword [rbp + 32], tmpnam$5
	mov [rbp + 40], {operand2}
	add rbp, 32
	jmp generateName

 tmpnam$5:
	; PostCall 32

 tmpnam$6:
	; GetReturnValue £temporary1127

 tmpnam$7:
	; Equal 9 £temporary1127 integral4$0#
	cmp ebx, 0
	je tmpnam$9

 tmpnam$8:
	; Return name
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 tmpnam$9:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 tmpnam$10:
	; FunctionEnd tmpnam

section .data

@3071string_w#:
	; Initializer String w
	db "w", 0

section .text

 tmpfile:
	; PreCall 36

 tmpfile$1:
	; Parameter 60 signed int integral4$0#
	mov dword [rbp + 60], {operand2}

 tmpfile$2:
	; Parameter 64 array name
	mov [rbp + 64], {operand2}
	add qword [rbp + 64], {operand2}

 tmpfile$3:
	; Parameter 72 signed int integral4$4#
	mov dword [rbp + 72], {operand2}

 tmpfile$4:
	; Call 36 generateName 0
	mov qword [rbp + 36], tmpfile$5
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp generateName

 tmpfile$5:
	; PostCall 36

 tmpfile$6:
	; GetReturnValue £temporary1131

 tmpfile$7:
	; Equal 19 £temporary1131 integral4$0#
	cmp ebx, 0
	je tmpfile$19

 tmpfile$8:
	; PreCall 36

 tmpfile$9:
	; Parameter 60 array name
	mov [rbp + 60], {operand2}
	add qword [rbp + 60], {operand2}

 tmpfile$10:
	; Parameter 68 string string_w#
	mov qword [rbp + 68], {operand2}

 tmpfile$11:
	; Call 36 fopen 0
	mov qword [rbp + 36], tmpfile$12
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp fopen

 tmpfile$12:
	; PostCall 36

 tmpfile$13:
	; GetReturnValue £temporary1132

 tmpfile$14:
	; Assign stream £temporary1132
	mov [rbp + 24], {operand2}

 tmpfile$15:
	; Equal 19 stream integral8$0#
	cmp qword [rbp + 24], {operand2}
	je tmpfile$19

 tmpfile$16:
	; Dereference £temporary1136 stream 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 tmpfile$17:
	; Assign £temporary1136.temporary integral4$1#
	mov dword [rsi + 37], {operand2}

 tmpfile$18:
	; Return stream
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 tmpfile$19:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 tmpfile$20:
	; FunctionEnd tmpfile
