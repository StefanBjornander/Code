	global generateName
	global tmpnam
	global tmpfile

	extern fileexists
	extern fopen
	extern $StackTop


section .data

@3018$g_tempArray:
	; InitializerZero 64
	times 64 db 0

section .data

@3020$g_tempSize:
	; Initializer SignedInt 0
	dd 0

section .text

 generateName:
	; 0 Add £temporary1006 index integral4$1#
	mov eax, [rbp + 24]
	inc eax

 generateName$1:
	; 1 GreaterThanEqual 32 £temporary1006 max
	cmp eax, [rbp + 36]
	jge generateName$32

 generateName$2:
	; 4 Add £temporary1008 index integral4$1#
	mov eax, [rbp + 24]
	inc eax

 generateName$3:
	; 5 IntegralToIntegral £temporary1009 £temporary1008
	mov rbx, 4294967295
	and rax, rbx

 generateName$4:
	; 6 Add £temporary1010 name £temporary1009
	mov rsi, [rbp + 28]
	add rsi, rax

 generateName$5:
	; 7 Dereference £temporary1011 £temporary1010 0

 generateName$6:
	; 8 Assign £temporary1011 integral1$0#
	mov byte [rsi], 0

 generateName$7:
	; 9 Assign c integral1$97#
	mov byte [rbp + 40], 97

 generateName$8:
	; 11 GreaterThan 37 c integral1$122#
	cmp byte [rbp + 40], 122
	jg generateName$37

 generateName$9:
	; 13 IntegralToIntegral £temporary1014 index
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 generateName$10:
	; 14 Add £temporary1015 name £temporary1014
	mov rsi, [rbp + 28]
	add rsi, rax

 generateName$11:
	; 15 Dereference £temporary1016 £temporary1015 0

 generateName$12:
	; 16 Assign £temporary1016 c
	mov al, [rbp + 40]
	mov [rsi], al

 generateName$13:
	; 17 PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 generateName$14:
	; 18 Parameter 65 pointer name
	mov rax, [rbp + 28]
	mov [rbp + 65], rax

 generateName$15:
	; 19 Call 41 fileexists 0
	mov qword [rbp + 41], generateName$16
	mov [rbp + 49], rbp
	add rbp, 41
	jmp fileexists

 generateName$16:
	; 20 PostCall 41

 generateName$17:
	; 21 GetReturnValue £temporary1017

 generateName$18:
	; 22 Equal 28 £temporary1017 integral4$0#
	cmp ebx, 0
	je generateName$28

 generateName$19:
	; 24 PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 generateName$20:
	; 25 Add £temporary1020 index integral4$1#
	mov eax, [rbp + 24]
	inc eax

 generateName$21:
	; 26 Parameter 65 signed int £temporary1020
	mov [rbp + 65], eax

 generateName$22:
	; 27 Parameter 69 pointer name
	mov rax, [rbp + 28]
	mov [rbp + 69], rax

 generateName$23:
	; 28 Parameter 77 signed int max
	mov eax, [rbp + 36]
	mov [rbp + 77], eax

 generateName$24:
	; 29 Call 41 generateName 0
	mov qword [rbp + 41], generateName$25
	mov [rbp + 49], rbp
	add rbp, 41
	jmp generateName

 generateName$25:
	; 30 PostCall 41

 generateName$26:
	; 31 GetReturnValue £temporary1021

 generateName$27:
	; 32 Equal 30 £temporary1021 integral4$0#
	cmp ebx, 0
	je generateName$30

 generateName$28:
	; 35 SetReturnValue

 generateName$29:
	; 36 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 generateName$30:
	; 41 Add c c integral1$1#
	inc byte [rbp + 40]

 generateName$31:
	; 43 Jump 8
	jmp generateName$8

 generateName$32:
	; 46 GreaterThanEqual 37 index max
	mov eax, [rbp + 36]
	cmp [rbp + 24], eax
	jge generateName$37

 generateName$33:
	; 49 IntegralToIntegral £temporary1027 index
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 generateName$34:
	; 50 Add £temporary1028 name £temporary1027
	mov rsi, [rbp + 28]
	add rsi, rax

 generateName$35:
	; 51 Dereference £temporary1029 £temporary1028 0

 generateName$36:
	; 52 Assign £temporary1029 integral1$0#
	mov byte [rsi], 0

 generateName$37:
	; 57 SetReturnValue

 generateName$38:
	; 58 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 generateName$39:
	; 60 FunctionEnd generateName

section .text

 tmpnam:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpnam$1:
	; 1 Parameter 56 signed int integral4$0#
	mov dword [rbp + 56], 0

 tmpnam$2:
	; 2 Parameter 60 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 tmpnam$3:
	; 3 Parameter 68 signed int integral4$4#
	mov dword [rbp + 68], 4

 tmpnam$4:
	; 4 Call 32 generateName 0
	mov qword [rbp + 32], tmpnam$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp generateName

 tmpnam$5:
	; 5 PostCall 32

 tmpnam$6:
	; 6 GetReturnValue £temporary1034

 tmpnam$7:
	; 7 Equal 10 £temporary1034 integral4$0#
	cmp ebx, 0
	je tmpnam$10

 tmpnam$8:
	; 10 SetReturnValue

 tmpnam$9:
	; 11 Return name
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$10:
	; 15 SetReturnValue

 tmpnam$11:
	; 16 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpnam$12:
	; 18 FunctionEnd tmpnam

section .data

@3059string_w#:
	; Initializer String w
	db "w", 0

section .text

 tmpfile:
	; 0 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$1:
	; 1 Parameter 60 signed int integral4$0#
	mov dword [rbp + 60], 0

 tmpfile$2:
	; 2 Parameter 64 pointer name
	mov [rbp + 64], rbp
	add qword [rbp + 64], 32

 tmpfile$3:
	; 3 Parameter 72 signed int integral4$4#
	mov dword [rbp + 72], 4

 tmpfile$4:
	; 4 Call 36 generateName 0
	mov qword [rbp + 36], tmpfile$5
	mov [rbp + 44], rbp
	add rbp, 36
	jmp generateName

 tmpfile$5:
	; 5 PostCall 36

 tmpfile$6:
	; 6 GetReturnValue £temporary1038

 tmpfile$7:
	; 7 Equal 20 £temporary1038 integral4$0#
	cmp ebx, 0
	je tmpfile$20

 tmpfile$8:
	; 9 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tmpfile$9:
	; 10 Parameter 60 pointer name
	mov [rbp + 60], rbp
	add qword [rbp + 60], 32

 tmpfile$10:
	; 11 Parameter 68 pointer string_w#
	mov qword [rbp + 68], @3059string_w#

 tmpfile$11:
	; 12 Call 36 fopen 0
	mov qword [rbp + 36], tmpfile$12
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fopen

 tmpfile$12:
	; 13 PostCall 36

 tmpfile$13:
	; 14 GetReturnValue £temporary1039

 tmpfile$14:
	; 15 Assign stream £temporary1039
	mov [rbp + 24], rbx

 tmpfile$15:
	; 16 Equal 20 stream integral8$0#
	cmp qword [rbp + 24], 0
	je tmpfile$20

 tmpfile$16:
	; 19 Dereference £temporary1043 stream 0
	mov rsi, [rbp + 24]

 tmpfile$17:
	; 20 Assign £temporary1043.temporary integral4$1#
	mov dword [rsi + 37], 1

 tmpfile$18:
	; 21 SetReturnValue

 tmpfile$19:
	; 22 Return stream
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$20:
	; 26 SetReturnValue

 tmpfile$21:
	; 27 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tmpfile$22:
	; 29 FunctionEnd tmpfile
