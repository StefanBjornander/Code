	global atoi
	global atol
	global strtol
	global strtoul
	global atof
	global strtod
	global strtol_test
	global strtoul_test
	global abort
	global getenv
	global system
	global bsearch
	global rand
	global srand
	global g_funcArray
	global atexit
	global exit
	global qsort
	global @abs
	global labs
	global div
	global ldiv

	extern g_inStatus
	extern g_inDevice
	extern g_inChars
	extern scanLongInt
	extern scanUnsignedLongInt
	extern sscanf
	extern printf
	extern errno
	extern $StackTop


section .text

 atoi:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atoi$1:
	; 1 Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atoi$2:
	; 2 Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atoi$3:
	; 3 Parameter 72 signed int integral4$10#
	mov dword [rbp + 72], 10

 atoi$4:
	; 4 Call 32 strtol 0
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atoi$5:
	; 5 PostCall 32

 atoi$6:
	; 6 GetReturnValue £temporary2204

 atoi$7:
	; 7 IntegralToIntegral £temporary2205 £temporary2204
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; 8 SetReturnValue

 atoi$9:
	; 9 Return £temporary2205
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atoi$10:
	; 11 FunctionEnd atoi

section .text

 atol:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atol$1:
	; 1 Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atol$2:
	; 2 Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atol$3:
	; 3 Parameter 72 signed int integral4$10#
	mov dword [rbp + 72], 10

 atol$4:
	; 4 Call 32 strtol 0
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atol$5:
	; 5 PostCall 32

 atol$6:
	; 6 GetReturnValue £temporary2206

 atol$7:
	; 7 SetReturnValue

 atol$8:
	; 8 Return £temporary2206
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atol$9:
	; 10 FunctionEnd atol

section .text

 strtol:
	; 0 Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 strtol$1:
	; 1 Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtol$2:
	; 2 Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 strtol$3:
	; 3 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol$4:
	; 4 Parameter 68 signed int base
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtol$5:
	; 5 Call 44 scanLongInt 0
	mov qword [rbp + 44], strtol$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanLongInt

 strtol$6:
	; 6 PostCall 44

 strtol$7:
	; 7 GetReturnValue £temporary2207

 strtol$8:
	; 8 Assign value £temporary2207
	mov [rbp + 44], rbx

 strtol$9:
	; 9 Equal 13 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtol$13

 strtol$10:
	; 12 Dereference £temporary2209 endp 0
	mov rsi, [rbp + 32]

 strtol$11:
	; 13 IntegralToIntegral £temporary2210 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtol$12:
	; 14 Add £temporary2209 s £temporary2210
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$13:
	; 19 SetReturnValue

 strtol$14:
	; 20 Return value
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol$15:
	; 22 FunctionEnd strtol

section .text

 strtoul:
	; 0 Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 strtoul$1:
	; 1 Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtoul$2:
	; 2 Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 strtoul$3:
	; 3 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul$4:
	; 4 Parameter 68 signed int base
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtoul$5:
	; 5 Call 44 scanUnsignedLongInt 0
	mov qword [rbp + 44], strtoul$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanUnsignedLongInt

 strtoul$6:
	; 6 PostCall 44

 strtoul$7:
	; 7 GetReturnValue £temporary2214

 strtoul$8:
	; 8 Assign unsignedLongValue £temporary2214
	mov [rbp + 44], rbx

 strtoul$9:
	; 9 Equal 13 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtoul$13

 strtoul$10:
	; 12 Dereference £temporary2216 endp 0
	mov rsi, [rbp + 32]

 strtoul$11:
	; 13 IntegralToIntegral £temporary2217 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$12:
	; 14 Add £temporary2216 s £temporary2217
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtoul$13:
	; 19 SetReturnValue

 strtoul$14:
	; 20 Return unsignedLongValue
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul$15:
	; 22 FunctionEnd strtoul

section .text

 atof:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atof$1:
	; 1 Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atof$2:
	; 2 Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atof$3:
	; 3 Call 32 strtod 0
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

 atof$4:
	; 4 PostCall 32

 atof$5:
	; 5 GetReturnValue £temporary2221

 atof$6:
	; 6 SetReturnValue

 atof$7:
	; 7 Return £temporary2221
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atof$8:
	; 9 FunctionEnd atof

section .data

@5160string_25lf25n#:
	; Initializer String %lf%n
	db "%lf%n", 0

section .text

 strtod:
	; 0 Assign chars integral4$0#
	mov dword [rbp + 40], 0

 strtod$1:
	; 1 PushFloat floating8$0#
	fldz

 strtod$2:
	; 2 PopFloat value
	fstp qword [rbp + 44]

 strtod$3:
	; 3 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtod$4:
	; 4 Parameter 76 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 strtod$5:
	; 5 Parameter 84 pointer string_25lf25n#
	mov qword [rbp + 84], @5160string_25lf25n#

 strtod$6:
	; 8 Address £temporary2222 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; 9 Parameter 92 pointer £temporary2222
	mov [rbp + 92], rsi

 strtod$8:
	; 10 Address £temporary2223 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; 11 Parameter 100 pointer £temporary2223
	mov [rbp + 100], rsi

 strtod$10:
	; 12 Call 52 sscanf 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtod$11:
	; 13 PostCall 52

 strtod$12:
	; 14 Equal 16 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtod$16

 strtod$13:
	; 17 Dereference £temporary2226 endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; 18 IntegralToIntegral £temporary2227 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; 19 Add £temporary2226 s £temporary2227
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtod$16:
	; 24 PushFloat value
	fld qword [rbp + 44]

 strtod$17:
	; 25 SetReturnValue

 strtod$18:
	; 26 Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtod$19:
	; 28 FunctionEnd strtod

section .data

@5170string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5185string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5188string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

@5204string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5207string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

@5224string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5227string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

@5244string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5247string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5262string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5265string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

@5281string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5284string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

@5301string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5304string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

@5321string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5324string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5339string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5342string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5357string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5360string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5375string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5378string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

@5393string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5396string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5411string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5414string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5429string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5432string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5447string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5450string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5465string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5468string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .data

@5483string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5486string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5501string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .text

 strtol_test:
	; 0 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$1:
	; 1 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$2:
	; 2 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$3:
	; 3 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$4:
	; 4 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$5:
	; 5 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$6:
	; 6 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$7:
	; 7 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$8:
	; 8 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$9:
	; 9 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$10:
	; 10 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$11:
	; 11 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$12:
	; 12 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$13:
	; 13 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$14:
	; 14 Address £temporary2244 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$15:
	; 15 Parameter 79 pointer £temporary2244
	mov [rbp + 79], rsi

 strtol_test$16:
	; 16 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$17:
	; 17 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$18:
	; 18 PostCall 47

 strtol_test$19:
	; 19 GetReturnValue £temporary2245

 strtol_test$20:
	; 20 Assign value £temporary2245
	mov [rbp + 47], rbx

 strtol_test$21:
	; 21 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$22:
	; 22 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5185string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$23:
	; 23 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$24:
	; 24 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$25:
	; 25 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$26:
	; 26 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$27:
	; 27 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$28:
	; 28 PostCall 55

 strtol_test$29:
	; 29 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$30:
	; 30 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$31:
	; 31 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$32:
	; 32 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$33:
	; 33 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$34:
	; 34 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$35:
	; 35 Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtol_test$36:
	; 36 Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtol_test$37:
	; 37 Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtol_test$38:
	; 38 Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtol_test$39:
	; 39 Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtol_test$40:
	; 40 Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtol_test$41:
	; 41 Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtol_test$42:
	; 42 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$43:
	; 43 Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$44:
	; 44 Address £temporary2259 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$45:
	; 45 Parameter 80 pointer £temporary2259
	mov [rbp + 80], rsi

 strtol_test$46:
	; 46 Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$47:
	; 47 Call 48 strtol 0
	mov qword [rbp + 48], strtol_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$48:
	; 48 PostCall 48

 strtol_test$49:
	; 49 GetReturnValue £temporary2260

 strtol_test$50:
	; 50 Assign value £temporary2260
	mov [rbp + 48], rbx

 strtol_test$51:
	; 51 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$52:
	; 52 Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5204string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$53:
	; 53 Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$54:
	; 54 Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$55:
	; 55 Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$56:
	; 56 Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$57:
	; 57 Call 56 printf 28
	mov qword [rbp + 56], strtol_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$58:
	; 58 PostCall 56

 strtol_test$59:
	; 59 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$60:
	; 60 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$61:
	; 61 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$62:
	; 62 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$63:
	; 63 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$64:
	; 64 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$65:
	; 65 Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtol_test$66:
	; 66 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$67:
	; 67 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$68:
	; 68 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$69:
	; 69 Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtol_test$70:
	; 70 Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtol_test$71:
	; 71 Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtol_test$72:
	; 72 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$73:
	; 73 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$74:
	; 74 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$75:
	; 75 Address £temporary2275 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$76:
	; 76 Parameter 81 pointer £temporary2275
	mov [rbp + 81], rsi

 strtol_test$77:
	; 77 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$78:
	; 78 Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$79:
	; 79 PostCall 49

 strtol_test$80:
	; 80 GetReturnValue £temporary2276

 strtol_test$81:
	; 81 Assign value £temporary2276
	mov [rbp + 49], rbx

 strtol_test$82:
	; 82 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$83:
	; 83 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5224string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$84:
	; 84 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$85:
	; 85 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$86:
	; 86 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$87:
	; 87 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$88:
	; 88 Call 57 printf 28
	mov qword [rbp + 57], strtol_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$89:
	; 89 PostCall 57

 strtol_test$90:
	; 90 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$91:
	; 91 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$92:
	; 92 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$93:
	; 93 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$94:
	; 94 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$95:
	; 95 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$96:
	; 96 Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtol_test$97:
	; 97 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$98:
	; 98 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$99:
	; 99 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$100:
	; 100 Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtol_test$101:
	; 101 Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtol_test$102:
	; 102 Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtol_test$103:
	; 103 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$104:
	; 104 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$105:
	; 105 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$106:
	; 106 Address £temporary2291 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$107:
	; 107 Parameter 81 pointer £temporary2291
	mov [rbp + 81], rsi

 strtol_test$108:
	; 108 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$109:
	; 109 Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$110:
	; 110 PostCall 49

 strtol_test$111:
	; 111 GetReturnValue £temporary2292

 strtol_test$112:
	; 112 Assign value £temporary2292
	mov [rbp + 49], rbx

 strtol_test$113:
	; 113 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$114:
	; 114 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5244string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$115:
	; 115 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$116:
	; 116 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$117:
	; 117 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$118:
	; 118 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$119:
	; 119 Call 57 printf 28
	mov qword [rbp + 57], strtol_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$120:
	; 120 PostCall 57

 strtol_test$121:
	; 121 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$122:
	; 122 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$123:
	; 123 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$124:
	; 124 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$125:
	; 125 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$126:
	; 126 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$127:
	; 127 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$128:
	; 128 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$129:
	; 129 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$130:
	; 130 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$131:
	; 131 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$132:
	; 132 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$133:
	; 133 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$134:
	; 134 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$135:
	; 135 Address £temporary2305 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$136:
	; 136 Parameter 79 pointer £temporary2305
	mov [rbp + 79], rsi

 strtol_test$137:
	; 137 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$138:
	; 138 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$139:
	; 139 PostCall 47

 strtol_test$140:
	; 140 GetReturnValue £temporary2306

 strtol_test$141:
	; 141 Assign value £temporary2306
	mov [rbp + 47], rbx

 strtol_test$142:
	; 142 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$143:
	; 143 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5262string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$144:
	; 144 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$145:
	; 145 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$146:
	; 146 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$147:
	; 147 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$148:
	; 148 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$149:
	; 149 PostCall 55

 strtol_test$150:
	; 150 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$151:
	; 151 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$152:
	; 152 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$153:
	; 153 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$154:
	; 154 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$155:
	; 155 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$156:
	; 156 Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtol_test$157:
	; 157 Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtol_test$158:
	; 158 Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtol_test$159:
	; 159 Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtol_test$160:
	; 160 Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtol_test$161:
	; 161 Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtol_test$162:
	; 162 Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtol_test$163:
	; 163 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$164:
	; 164 Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$165:
	; 165 Address £temporary2320 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$166:
	; 166 Parameter 80 pointer £temporary2320
	mov [rbp + 80], rsi

 strtol_test$167:
	; 167 Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$168:
	; 168 Call 48 strtol 0
	mov qword [rbp + 48], strtol_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$169:
	; 169 PostCall 48

 strtol_test$170:
	; 170 GetReturnValue £temporary2321

 strtol_test$171:
	; 171 Assign value £temporary2321
	mov [rbp + 48], rbx

 strtol_test$172:
	; 172 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$173:
	; 173 Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5281string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$174:
	; 174 Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$175:
	; 175 Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$176:
	; 176 Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$177:
	; 177 Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$178:
	; 178 Call 56 printf 28
	mov qword [rbp + 56], strtol_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$179:
	; 179 PostCall 56

 strtol_test$180:
	; 180 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$181:
	; 181 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$182:
	; 182 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$183:
	; 183 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$184:
	; 184 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$185:
	; 185 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$186:
	; 186 Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtol_test$187:
	; 187 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$188:
	; 188 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$189:
	; 189 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$190:
	; 190 Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtol_test$191:
	; 191 Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtol_test$192:
	; 192 Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtol_test$193:
	; 193 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$194:
	; 194 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$195:
	; 195 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$196:
	; 196 Address £temporary2336 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$197:
	; 197 Parameter 81 pointer £temporary2336
	mov [rbp + 81], rsi

 strtol_test$198:
	; 198 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$199:
	; 199 Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$200:
	; 200 PostCall 49

 strtol_test$201:
	; 201 GetReturnValue £temporary2337

 strtol_test$202:
	; 202 Assign value £temporary2337
	mov [rbp + 49], rbx

 strtol_test$203:
	; 203 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$204:
	; 204 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5301string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$205:
	; 205 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$206:
	; 206 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$207:
	; 207 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$208:
	; 208 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$209:
	; 209 Call 57 printf 28
	mov qword [rbp + 57], strtol_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$210:
	; 210 PostCall 57

 strtol_test$211:
	; 211 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$212:
	; 212 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$213:
	; 213 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$214:
	; 214 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$215:
	; 215 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$216:
	; 216 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$217:
	; 217 Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtol_test$218:
	; 218 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$219:
	; 219 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$220:
	; 220 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$221:
	; 221 Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtol_test$222:
	; 222 Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtol_test$223:
	; 223 Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtol_test$224:
	; 224 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$225:
	; 225 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$226:
	; 226 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$227:
	; 227 Address £temporary2352 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$228:
	; 228 Parameter 81 pointer £temporary2352
	mov [rbp + 81], rsi

 strtol_test$229:
	; 229 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$230:
	; 230 Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$231:
	; 231 PostCall 49

 strtol_test$232:
	; 232 GetReturnValue £temporary2353

 strtol_test$233:
	; 233 Assign value £temporary2353
	mov [rbp + 49], rbx

 strtol_test$234:
	; 234 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$235:
	; 235 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5321string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$236:
	; 236 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$237:
	; 237 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$238:
	; 238 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$239:
	; 239 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$240:
	; 240 Call 57 printf 28
	mov qword [rbp + 57], strtol_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$241:
	; 241 PostCall 57

 strtol_test$242:
	; 242 Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtol_test$243:
	; 243 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$244:
	; 244 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$245:
	; 245 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$246:
	; 246 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$247:
	; 247 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$248:
	; 248 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$249:
	; 249 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$250:
	; 250 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$251:
	; 251 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$252:
	; 252 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$253:
	; 253 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$254:
	; 254 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$255:
	; 255 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$256:
	; 256 Address £temporary2366 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$257:
	; 257 Parameter 79 pointer £temporary2366
	mov [rbp + 79], rsi

 strtol_test$258:
	; 258 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$259:
	; 259 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$260:
	; 260 PostCall 47

 strtol_test$261:
	; 261 GetReturnValue £temporary2367

 strtol_test$262:
	; 262 Assign value £temporary2367
	mov [rbp + 47], rbx

 strtol_test$263:
	; 263 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$264:
	; 264 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5339string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$265:
	; 265 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$266:
	; 266 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$267:
	; 267 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$268:
	; 268 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$269:
	; 269 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$270:
	; 270 PostCall 55

 strtol_test$271:
	; 271 Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtol_test$272:
	; 272 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$273:
	; 273 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$274:
	; 274 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$275:
	; 275 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$276:
	; 276 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$277:
	; 277 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$278:
	; 278 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$279:
	; 279 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$280:
	; 280 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$281:
	; 281 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$282:
	; 282 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$283:
	; 283 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$284:
	; 284 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$285:
	; 285 Address £temporary2380 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$286:
	; 286 Parameter 79 pointer £temporary2380
	mov [rbp + 79], rsi

 strtol_test$287:
	; 287 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$288:
	; 288 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$289:
	; 289 PostCall 47

 strtol_test$290:
	; 290 GetReturnValue £temporary2381

 strtol_test$291:
	; 291 Assign value £temporary2381
	mov [rbp + 47], rbx

 strtol_test$292:
	; 292 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$293:
	; 293 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5357string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$294:
	; 294 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$295:
	; 295 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$296:
	; 296 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$297:
	; 297 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$298:
	; 298 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$299:
	; 299 PostCall 55

 strtol_test$300:
	; 300 Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtol_test$301:
	; 301 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$302:
	; 302 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$303:
	; 303 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$304:
	; 304 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$305:
	; 305 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$306:
	; 306 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$307:
	; 307 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$308:
	; 308 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$309:
	; 309 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$310:
	; 310 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$311:
	; 311 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$312:
	; 312 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$313:
	; 313 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$314:
	; 314 Address £temporary2394 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$315:
	; 315 Parameter 79 pointer £temporary2394
	mov [rbp + 79], rsi

 strtol_test$316:
	; 316 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$317:
	; 317 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$318:
	; 318 PostCall 47

 strtol_test$319:
	; 319 GetReturnValue £temporary2395

 strtol_test$320:
	; 320 Assign value £temporary2395
	mov [rbp + 47], rbx

 strtol_test$321:
	; 321 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$322:
	; 322 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5375string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$323:
	; 323 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$324:
	; 324 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$325:
	; 325 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$326:
	; 326 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$327:
	; 327 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$328:
	; 328 PostCall 55

 strtol_test$329:
	; 329 Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtol_test$330:
	; 330 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$331:
	; 331 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$332:
	; 332 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$333:
	; 333 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$334:
	; 334 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$335:
	; 335 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$336:
	; 336 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$337:
	; 337 Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtol_test$338:
	; 338 Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtol_test$339:
	; 339 Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtol_test$340:
	; 340 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$341:
	; 341 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$342:
	; 342 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$343:
	; 343 Address £temporary2408 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$344:
	; 344 Parameter 79 pointer £temporary2408
	mov [rbp + 79], rsi

 strtol_test$345:
	; 345 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$346:
	; 346 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$347:
	; 347 PostCall 47

 strtol_test$348:
	; 348 GetReturnValue £temporary2409

 strtol_test$349:
	; 349 Assign value £temporary2409
	mov [rbp + 47], rbx

 strtol_test$350:
	; 350 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$351:
	; 351 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5393string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$352:
	; 352 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$353:
	; 353 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$354:
	; 354 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$355:
	; 355 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$356:
	; 356 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$357:
	; 357 PostCall 55

 strtol_test$358:
	; 358 Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtol_test$359:
	; 359 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$360:
	; 360 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$361:
	; 361 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$362:
	; 362 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$363:
	; 363 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$364:
	; 364 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$365:
	; 365 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$366:
	; 366 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$367:
	; 367 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$368:
	; 368 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$369:
	; 369 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$370:
	; 370 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$371:
	; 371 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$372:
	; 372 Address £temporary2422 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$373:
	; 373 Parameter 79 pointer £temporary2422
	mov [rbp + 79], rsi

 strtol_test$374:
	; 374 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$375:
	; 375 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$376:
	; 376 PostCall 47

 strtol_test$377:
	; 377 GetReturnValue £temporary2423

 strtol_test$378:
	; 378 Assign value £temporary2423
	mov [rbp + 47], rbx

 strtol_test$379:
	; 379 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$380:
	; 380 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5411string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$381:
	; 381 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$382:
	; 382 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$383:
	; 383 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$384:
	; 384 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$385:
	; 385 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$386:
	; 386 PostCall 55

 strtol_test$387:
	; 387 Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtol_test$388:
	; 388 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$389:
	; 389 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$390:
	; 390 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$391:
	; 391 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$392:
	; 392 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$393:
	; 393 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$394:
	; 394 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$395:
	; 395 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$396:
	; 396 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$397:
	; 397 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$398:
	; 398 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$399:
	; 399 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$400:
	; 400 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$401:
	; 401 Address £temporary2436 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$402:
	; 402 Parameter 79 pointer £temporary2436
	mov [rbp + 79], rsi

 strtol_test$403:
	; 403 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$404:
	; 404 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$405:
	; 405 PostCall 47

 strtol_test$406:
	; 406 GetReturnValue £temporary2437

 strtol_test$407:
	; 407 Assign value £temporary2437
	mov [rbp + 47], rbx

 strtol_test$408:
	; 408 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$409:
	; 409 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5429string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$410:
	; 410 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$411:
	; 411 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$412:
	; 412 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$413:
	; 413 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$414:
	; 414 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$415:
	; 415 PostCall 55

 strtol_test$416:
	; 416 Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtol_test$417:
	; 417 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$418:
	; 418 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$419:
	; 419 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$420:
	; 420 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$421:
	; 421 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$422:
	; 422 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$423:
	; 423 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$424:
	; 424 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$425:
	; 425 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$426:
	; 426 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$427:
	; 427 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$428:
	; 428 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$429:
	; 429 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$430:
	; 430 Address £temporary2450 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$431:
	; 431 Parameter 79 pointer £temporary2450
	mov [rbp + 79], rsi

 strtol_test$432:
	; 432 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$433:
	; 433 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$434:
	; 434 PostCall 47

 strtol_test$435:
	; 435 GetReturnValue £temporary2451

 strtol_test$436:
	; 436 Assign value £temporary2451
	mov [rbp + 47], rbx

 strtol_test$437:
	; 437 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$438:
	; 438 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5447string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$439:
	; 439 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$440:
	; 440 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$441:
	; 441 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$442:
	; 442 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$443:
	; 443 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$444:
	; 444 PostCall 55

 strtol_test$445:
	; 445 Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtol_test$446:
	; 446 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$447:
	; 447 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$448:
	; 448 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$449:
	; 449 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$450:
	; 450 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$451:
	; 451 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$452:
	; 452 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$453:
	; 453 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$454:
	; 454 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$455:
	; 455 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$456:
	; 456 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$457:
	; 457 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$458:
	; 458 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$459:
	; 459 Address £temporary2464 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$460:
	; 460 Parameter 79 pointer £temporary2464
	mov [rbp + 79], rsi

 strtol_test$461:
	; 461 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$462:
	; 462 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$463:
	; 463 PostCall 47

 strtol_test$464:
	; 464 GetReturnValue £temporary2465

 strtol_test$465:
	; 465 Assign value £temporary2465
	mov [rbp + 47], rbx

 strtol_test$466:
	; 466 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$467:
	; 467 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5465string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$468:
	; 468 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$469:
	; 469 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$470:
	; 470 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$471:
	; 471 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$472:
	; 472 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$473:
	; 473 PostCall 55

 strtol_test$474:
	; 474 Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtol_test$475:
	; 475 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$476:
	; 476 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$477:
	; 477 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$478:
	; 478 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$479:
	; 479 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$480:
	; 480 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$481:
	; 481 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$482:
	; 482 Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtol_test$483:
	; 483 Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtol_test$484:
	; 484 Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtol_test$485:
	; 485 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$486:
	; 486 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$487:
	; 487 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$488:
	; 488 Address £temporary2478 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$489:
	; 489 Parameter 79 pointer £temporary2478
	mov [rbp + 79], rsi

 strtol_test$490:
	; 490 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$491:
	; 491 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$492:
	; 492 PostCall 47

 strtol_test$493:
	; 493 GetReturnValue £temporary2479

 strtol_test$494:
	; 494 Assign value £temporary2479
	mov [rbp + 47], rbx

 strtol_test$495:
	; 495 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$496:
	; 496 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5483string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$497:
	; 497 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$498:
	; 498 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$499:
	; 499 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$500:
	; 500 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$501:
	; 501 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$502:
	; 502 PostCall 55

 strtol_test$503:
	; 503 Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtol_test$504:
	; 504 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$505:
	; 505 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$506:
	; 506 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$507:
	; 507 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$508:
	; 508 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$509:
	; 509 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$510:
	; 510 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$511:
	; 511 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$512:
	; 512 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$513:
	; 513 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$514:
	; 514 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$515:
	; 515 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$516:
	; 516 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$517:
	; 517 Address £temporary2492 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$518:
	; 518 Parameter 79 pointer £temporary2492
	mov [rbp + 79], rsi

 strtol_test$519:
	; 519 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$520:
	; 520 Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$521:
	; 521 PostCall 47

 strtol_test$522:
	; 522 GetReturnValue £temporary2493

 strtol_test$523:
	; 523 Assign value £temporary2493
	mov [rbp + 47], rbx

 strtol_test$524:
	; 524 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$525:
	; 525 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5501string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$526:
	; 526 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$527:
	; 527 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$528:
	; 528 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$529:
	; 529 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$530:
	; 530 Call 55 printf 28
	mov qword [rbp + 55], strtol_test$531
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$531:
	; 531 PostCall 55

 strtol_test$532:
	; 533 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol_test$533:
	; 534 FunctionEnd strtol_test

section .data

@5649string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5664string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5667string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

@5683string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5686string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

@5703string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5706string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

@5723string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5726string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5741string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5744string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

@5760string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5763string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

@5780string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5783string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

@5800string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5803string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5818string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5821string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5836string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5839string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5854string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5857string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

@5872string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5875string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5890string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5893string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5908string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5911string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5926string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5929string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5944string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5947string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .data

@5962string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5965string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5980string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .text

 strtoul_test:
	; 0 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$1:
	; 1 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$2:
	; 2 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$3:
	; 3 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$4:
	; 4 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$5:
	; 5 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$6:
	; 6 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$7:
	; 7 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$8:
	; 8 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$9:
	; 9 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$10:
	; 10 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$11:
	; 11 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$12:
	; 12 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$13:
	; 13 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$14:
	; 14 Address £temporary2524 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$15:
	; 15 Parameter 79 pointer £temporary2524
	mov [rbp + 79], rsi

 strtoul_test$16:
	; 16 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$17:
	; 17 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$18:
	; 18 PostCall 47

 strtoul_test$19:
	; 19 GetReturnValue £temporary2525

 strtoul_test$20:
	; 20 Assign value £temporary2525
	mov [rbp + 47], rbx

 strtoul_test$21:
	; 21 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$22:
	; 22 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5664string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$23:
	; 23 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$24:
	; 24 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$25:
	; 25 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$26:
	; 26 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$27:
	; 27 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$28:
	; 28 PostCall 55

 strtoul_test$29:
	; 29 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$30:
	; 30 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$31:
	; 31 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$32:
	; 32 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$33:
	; 33 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$34:
	; 34 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$35:
	; 35 Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtoul_test$36:
	; 36 Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtoul_test$37:
	; 37 Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtoul_test$38:
	; 38 Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtoul_test$39:
	; 39 Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtoul_test$40:
	; 40 Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtoul_test$41:
	; 41 Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtoul_test$42:
	; 42 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$43:
	; 43 Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$44:
	; 44 Address £temporary2539 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$45:
	; 45 Parameter 80 pointer £temporary2539
	mov [rbp + 80], rsi

 strtoul_test$46:
	; 46 Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$47:
	; 47 Call 48 strtoul 0
	mov qword [rbp + 48], strtoul_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$48:
	; 48 PostCall 48

 strtoul_test$49:
	; 49 GetReturnValue £temporary2540

 strtoul_test$50:
	; 50 Assign value £temporary2540
	mov [rbp + 48], rbx

 strtoul_test$51:
	; 51 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$52:
	; 52 Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5683string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$53:
	; 53 Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$54:
	; 54 Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$55:
	; 55 Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$56:
	; 56 Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$57:
	; 57 Call 56 printf 28
	mov qword [rbp + 56], strtoul_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$58:
	; 58 PostCall 56

 strtoul_test$59:
	; 59 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$60:
	; 60 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$61:
	; 61 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$62:
	; 62 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$63:
	; 63 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$64:
	; 64 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$65:
	; 65 Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtoul_test$66:
	; 66 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$67:
	; 67 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$68:
	; 68 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$69:
	; 69 Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtoul_test$70:
	; 70 Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtoul_test$71:
	; 71 Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtoul_test$72:
	; 72 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$73:
	; 73 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$74:
	; 74 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$75:
	; 75 Address £temporary2555 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$76:
	; 76 Parameter 81 pointer £temporary2555
	mov [rbp + 81], rsi

 strtoul_test$77:
	; 77 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$78:
	; 78 Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$79:
	; 79 PostCall 49

 strtoul_test$80:
	; 80 GetReturnValue £temporary2556

 strtoul_test$81:
	; 81 Assign value £temporary2556
	mov [rbp + 49], rbx

 strtoul_test$82:
	; 82 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$83:
	; 83 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5703string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$84:
	; 84 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$85:
	; 85 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$86:
	; 86 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$87:
	; 87 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$88:
	; 88 Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$89:
	; 89 PostCall 57

 strtoul_test$90:
	; 90 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$91:
	; 91 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$92:
	; 92 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$93:
	; 93 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$94:
	; 94 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$95:
	; 95 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$96:
	; 96 Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtoul_test$97:
	; 97 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$98:
	; 98 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$99:
	; 99 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$100:
	; 100 Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtoul_test$101:
	; 101 Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtoul_test$102:
	; 102 Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtoul_test$103:
	; 103 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$104:
	; 104 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$105:
	; 105 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$106:
	; 106 Address £temporary2571 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$107:
	; 107 Parameter 81 pointer £temporary2571
	mov [rbp + 81], rsi

 strtoul_test$108:
	; 108 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$109:
	; 109 Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$110:
	; 110 PostCall 49

 strtoul_test$111:
	; 111 GetReturnValue £temporary2572

 strtoul_test$112:
	; 112 Assign value £temporary2572
	mov [rbp + 49], rbx

 strtoul_test$113:
	; 113 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$114:
	; 114 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5723string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$115:
	; 115 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$116:
	; 116 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$117:
	; 117 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$118:
	; 118 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$119:
	; 119 Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$120:
	; 120 PostCall 57

 strtoul_test$121:
	; 121 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$122:
	; 122 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$123:
	; 123 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$124:
	; 124 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$125:
	; 125 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$126:
	; 126 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$127:
	; 127 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$128:
	; 128 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$129:
	; 129 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$130:
	; 130 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$131:
	; 131 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$132:
	; 132 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$133:
	; 133 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$134:
	; 134 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$135:
	; 135 Address £temporary2585 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$136:
	; 136 Parameter 79 pointer £temporary2585
	mov [rbp + 79], rsi

 strtoul_test$137:
	; 137 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$138:
	; 138 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$139:
	; 139 PostCall 47

 strtoul_test$140:
	; 140 GetReturnValue £temporary2586

 strtoul_test$141:
	; 141 Assign value £temporary2586
	mov [rbp + 47], rbx

 strtoul_test$142:
	; 142 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$143:
	; 143 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5741string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$144:
	; 144 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$145:
	; 145 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$146:
	; 146 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$147:
	; 147 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$148:
	; 148 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$149:
	; 149 PostCall 55

 strtoul_test$150:
	; 150 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$151:
	; 151 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$152:
	; 152 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$153:
	; 153 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$154:
	; 154 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$155:
	; 155 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$156:
	; 156 Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtoul_test$157:
	; 157 Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtoul_test$158:
	; 158 Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtoul_test$159:
	; 159 Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtoul_test$160:
	; 160 Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtoul_test$161:
	; 161 Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtoul_test$162:
	; 162 Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtoul_test$163:
	; 163 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$164:
	; 164 Parameter 72 pointer text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$165:
	; 165 Address £temporary2600 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$166:
	; 166 Parameter 80 pointer £temporary2600
	mov [rbp + 80], rsi

 strtoul_test$167:
	; 167 Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$168:
	; 168 Call 48 strtoul 0
	mov qword [rbp + 48], strtoul_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$169:
	; 169 PostCall 48

 strtoul_test$170:
	; 170 GetReturnValue £temporary2601

 strtoul_test$171:
	; 171 Assign value £temporary2601
	mov [rbp + 48], rbx

 strtoul_test$172:
	; 172 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$173:
	; 173 Parameter 80 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5760string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$174:
	; 174 Parameter 88 pointer text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$175:
	; 175 Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$176:
	; 176 Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$177:
	; 177 Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$178:
	; 178 Call 56 printf 28
	mov qword [rbp + 56], strtoul_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$179:
	; 179 PostCall 56

 strtoul_test$180:
	; 180 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$181:
	; 181 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$182:
	; 182 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$183:
	; 183 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$184:
	; 184 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$185:
	; 185 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$186:
	; 186 Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtoul_test$187:
	; 187 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$188:
	; 188 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$189:
	; 189 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$190:
	; 190 Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtoul_test$191:
	; 191 Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtoul_test$192:
	; 192 Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtoul_test$193:
	; 193 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$194:
	; 194 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$195:
	; 195 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$196:
	; 196 Address £temporary2616 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$197:
	; 197 Parameter 81 pointer £temporary2616
	mov [rbp + 81], rsi

 strtoul_test$198:
	; 198 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$199:
	; 199 Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$200:
	; 200 PostCall 49

 strtoul_test$201:
	; 201 GetReturnValue £temporary2617

 strtoul_test$202:
	; 202 Assign value £temporary2617
	mov [rbp + 49], rbx

 strtoul_test$203:
	; 203 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$204:
	; 204 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5780string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$205:
	; 205 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$206:
	; 206 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$207:
	; 207 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$208:
	; 208 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$209:
	; 209 Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$210:
	; 210 PostCall 57

 strtoul_test$211:
	; 211 Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$212:
	; 212 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$213:
	; 213 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$214:
	; 214 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$215:
	; 215 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$216:
	; 216 Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$217:
	; 217 Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtoul_test$218:
	; 218 Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$219:
	; 219 Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$220:
	; 220 Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$221:
	; 221 Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtoul_test$222:
	; 222 Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtoul_test$223:
	; 223 Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtoul_test$224:
	; 224 Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$225:
	; 225 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$226:
	; 226 Parameter 73 pointer text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$227:
	; 227 Address £temporary2632 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$228:
	; 228 Parameter 81 pointer £temporary2632
	mov [rbp + 81], rsi

 strtoul_test$229:
	; 229 Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$230:
	; 230 Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$231:
	; 231 PostCall 49

 strtoul_test$232:
	; 232 GetReturnValue £temporary2633

 strtoul_test$233:
	; 233 Assign value £temporary2633
	mov [rbp + 49], rbx

 strtoul_test$234:
	; 234 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$235:
	; 235 Parameter 81 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5800string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$236:
	; 236 Parameter 89 pointer text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$237:
	; 237 Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$238:
	; 238 Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$239:
	; 239 Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$240:
	; 240 Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$241:
	; 241 PostCall 57

 strtoul_test$242:
	; 242 Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtoul_test$243:
	; 243 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$244:
	; 244 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$245:
	; 245 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$246:
	; 246 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$247:
	; 247 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$248:
	; 248 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$249:
	; 249 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$250:
	; 250 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$251:
	; 251 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$252:
	; 252 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$253:
	; 253 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$254:
	; 254 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$255:
	; 255 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$256:
	; 256 Address £temporary2646 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$257:
	; 257 Parameter 79 pointer £temporary2646
	mov [rbp + 79], rsi

 strtoul_test$258:
	; 258 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$259:
	; 259 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$260:
	; 260 PostCall 47

 strtoul_test$261:
	; 261 GetReturnValue £temporary2647

 strtoul_test$262:
	; 262 Assign value £temporary2647
	mov [rbp + 47], rbx

 strtoul_test$263:
	; 263 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$264:
	; 264 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5818string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$265:
	; 265 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$266:
	; 266 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$267:
	; 267 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$268:
	; 268 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$269:
	; 269 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$270:
	; 270 PostCall 55

 strtoul_test$271:
	; 271 Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtoul_test$272:
	; 272 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$273:
	; 273 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$274:
	; 274 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$275:
	; 275 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$276:
	; 276 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$277:
	; 277 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$278:
	; 278 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$279:
	; 279 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$280:
	; 280 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$281:
	; 281 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$282:
	; 282 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$283:
	; 283 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$284:
	; 284 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$285:
	; 285 Address £temporary2660 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$286:
	; 286 Parameter 79 pointer £temporary2660
	mov [rbp + 79], rsi

 strtoul_test$287:
	; 287 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$288:
	; 288 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$289:
	; 289 PostCall 47

 strtoul_test$290:
	; 290 GetReturnValue £temporary2661

 strtoul_test$291:
	; 291 Assign value £temporary2661
	mov [rbp + 47], rbx

 strtoul_test$292:
	; 292 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$293:
	; 293 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5836string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$294:
	; 294 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$295:
	; 295 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$296:
	; 296 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$297:
	; 297 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$298:
	; 298 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$299:
	; 299 PostCall 55

 strtoul_test$300:
	; 300 Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtoul_test$301:
	; 301 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$302:
	; 302 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$303:
	; 303 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$304:
	; 304 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$305:
	; 305 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$306:
	; 306 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$307:
	; 307 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$308:
	; 308 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$309:
	; 309 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$310:
	; 310 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$311:
	; 311 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$312:
	; 312 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$313:
	; 313 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$314:
	; 314 Address £temporary2674 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$315:
	; 315 Parameter 79 pointer £temporary2674
	mov [rbp + 79], rsi

 strtoul_test$316:
	; 316 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$317:
	; 317 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$318:
	; 318 PostCall 47

 strtoul_test$319:
	; 319 GetReturnValue £temporary2675

 strtoul_test$320:
	; 320 Assign value £temporary2675
	mov [rbp + 47], rbx

 strtoul_test$321:
	; 321 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$322:
	; 322 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5854string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$323:
	; 323 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$324:
	; 324 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$325:
	; 325 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$326:
	; 326 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$327:
	; 327 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$328:
	; 328 PostCall 55

 strtoul_test$329:
	; 329 Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtoul_test$330:
	; 330 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$331:
	; 331 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$332:
	; 332 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$333:
	; 333 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$334:
	; 334 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$335:
	; 335 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$336:
	; 336 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$337:
	; 337 Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtoul_test$338:
	; 338 Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtoul_test$339:
	; 339 Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtoul_test$340:
	; 340 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$341:
	; 341 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$342:
	; 342 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$343:
	; 343 Address £temporary2688 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$344:
	; 344 Parameter 79 pointer £temporary2688
	mov [rbp + 79], rsi

 strtoul_test$345:
	; 345 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$346:
	; 346 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$347:
	; 347 PostCall 47

 strtoul_test$348:
	; 348 GetReturnValue £temporary2689

 strtoul_test$349:
	; 349 Assign value £temporary2689
	mov [rbp + 47], rbx

 strtoul_test$350:
	; 350 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$351:
	; 351 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5872string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$352:
	; 352 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$353:
	; 353 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$354:
	; 354 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$355:
	; 355 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$356:
	; 356 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$357:
	; 357 PostCall 55

 strtoul_test$358:
	; 358 Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtoul_test$359:
	; 359 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$360:
	; 360 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$361:
	; 361 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$362:
	; 362 Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$363:
	; 363 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$364:
	; 364 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$365:
	; 365 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$366:
	; 366 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$367:
	; 367 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$368:
	; 368 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$369:
	; 369 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$370:
	; 370 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$371:
	; 371 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$372:
	; 372 Address £temporary2702 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$373:
	; 373 Parameter 79 pointer £temporary2702
	mov [rbp + 79], rsi

 strtoul_test$374:
	; 374 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$375:
	; 375 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$376:
	; 376 PostCall 47

 strtoul_test$377:
	; 377 GetReturnValue £temporary2703

 strtoul_test$378:
	; 378 Assign value £temporary2703
	mov [rbp + 47], rbx

 strtoul_test$379:
	; 379 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$380:
	; 380 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5890string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$381:
	; 381 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$382:
	; 382 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$383:
	; 383 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$384:
	; 384 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$385:
	; 385 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$386:
	; 386 PostCall 55

 strtoul_test$387:
	; 387 Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtoul_test$388:
	; 388 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$389:
	; 389 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$390:
	; 390 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$391:
	; 391 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$392:
	; 392 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$393:
	; 393 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$394:
	; 394 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$395:
	; 395 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$396:
	; 396 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$397:
	; 397 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$398:
	; 398 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$399:
	; 399 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$400:
	; 400 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$401:
	; 401 Address £temporary2716 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$402:
	; 402 Parameter 79 pointer £temporary2716
	mov [rbp + 79], rsi

 strtoul_test$403:
	; 403 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$404:
	; 404 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$405:
	; 405 PostCall 47

 strtoul_test$406:
	; 406 GetReturnValue £temporary2717

 strtoul_test$407:
	; 407 Assign value £temporary2717
	mov [rbp + 47], rbx

 strtoul_test$408:
	; 408 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$409:
	; 409 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5908string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$410:
	; 410 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$411:
	; 411 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$412:
	; 412 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$413:
	; 413 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$414:
	; 414 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$415:
	; 415 PostCall 55

 strtoul_test$416:
	; 416 Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtoul_test$417:
	; 417 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$418:
	; 418 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$419:
	; 419 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$420:
	; 420 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$421:
	; 421 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$422:
	; 422 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$423:
	; 423 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$424:
	; 424 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$425:
	; 425 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$426:
	; 426 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$427:
	; 427 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$428:
	; 428 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$429:
	; 429 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$430:
	; 430 Address £temporary2730 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$431:
	; 431 Parameter 79 pointer £temporary2730
	mov [rbp + 79], rsi

 strtoul_test$432:
	; 432 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$433:
	; 433 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$434:
	; 434 PostCall 47

 strtoul_test$435:
	; 435 GetReturnValue £temporary2731

 strtoul_test$436:
	; 436 Assign value £temporary2731
	mov [rbp + 47], rbx

 strtoul_test$437:
	; 437 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$438:
	; 438 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5926string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$439:
	; 439 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$440:
	; 440 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$441:
	; 441 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$442:
	; 442 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$443:
	; 443 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$444:
	; 444 PostCall 55

 strtoul_test$445:
	; 445 Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtoul_test$446:
	; 446 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$447:
	; 447 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$448:
	; 448 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$449:
	; 449 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$450:
	; 450 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$451:
	; 451 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$452:
	; 452 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$453:
	; 453 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$454:
	; 454 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$455:
	; 455 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$456:
	; 456 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$457:
	; 457 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$458:
	; 458 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$459:
	; 459 Address £temporary2744 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$460:
	; 460 Parameter 79 pointer £temporary2744
	mov [rbp + 79], rsi

 strtoul_test$461:
	; 461 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$462:
	; 462 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$463:
	; 463 PostCall 47

 strtoul_test$464:
	; 464 GetReturnValue £temporary2745

 strtoul_test$465:
	; 465 Assign value £temporary2745
	mov [rbp + 47], rbx

 strtoul_test$466:
	; 466 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$467:
	; 467 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5944string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$468:
	; 468 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$469:
	; 469 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$470:
	; 470 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$471:
	; 471 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$472:
	; 472 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$473:
	; 473 PostCall 55

 strtoul_test$474:
	; 474 Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtoul_test$475:
	; 475 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$476:
	; 476 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$477:
	; 477 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$478:
	; 478 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$479:
	; 479 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$480:
	; 480 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$481:
	; 481 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$482:
	; 482 Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtoul_test$483:
	; 483 Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtoul_test$484:
	; 484 Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtoul_test$485:
	; 485 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$486:
	; 486 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$487:
	; 487 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$488:
	; 488 Address £temporary2758 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$489:
	; 489 Parameter 79 pointer £temporary2758
	mov [rbp + 79], rsi

 strtoul_test$490:
	; 490 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$491:
	; 491 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$492:
	; 492 PostCall 47

 strtoul_test$493:
	; 493 GetReturnValue £temporary2759

 strtoul_test$494:
	; 494 Assign value £temporary2759
	mov [rbp + 47], rbx

 strtoul_test$495:
	; 495 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$496:
	; 496 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5962string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$497:
	; 497 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$498:
	; 498 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$499:
	; 499 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$500:
	; 500 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$501:
	; 501 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$502:
	; 502 PostCall 55

 strtoul_test$503:
	; 503 Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtoul_test$504:
	; 504 Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$505:
	; 505 Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$506:
	; 506 Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$507:
	; 507 Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$508:
	; 508 Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$509:
	; 509 Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$510:
	; 510 Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$511:
	; 511 Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$512:
	; 512 Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$513:
	; 513 Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$514:
	; 514 Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$515:
	; 515 PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$516:
	; 516 Parameter 71 pointer text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$517:
	; 517 Address £temporary2772 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$518:
	; 518 Parameter 79 pointer £temporary2772
	mov [rbp + 79], rsi

 strtoul_test$519:
	; 519 Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$520:
	; 520 Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$521:
	; 521 PostCall 47

 strtoul_test$522:
	; 522 GetReturnValue £temporary2773

 strtoul_test$523:
	; 523 Assign value £temporary2773
	mov [rbp + 47], rbx

 strtoul_test$524:
	; 524 PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$525:
	; 525 Parameter 79 pointer string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5980string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$526:
	; 526 Parameter 87 pointer text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$527:
	; 527 Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$528:
	; 528 Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$529:
	; 529 Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$530:
	; 530 Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$531
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$531:
	; 531 PostCall 55

 strtoul_test$532:
	; 533 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul_test$533:
	; 534 FunctionEnd strtoul_test

section .text

 abort:
	; 0 AssignRegister rax integral8$60#
	mov rax, 60

 abort$1:
	; 1 AssignRegister rdi integral8$18446744073709551615#
	mov rdi, 18446744073709551615

 abort$2:
	; 2 SysCall
	syscall

 abort$3:
	; 4 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 abort$4:
	; 5 FunctionEnd abort

section .text

 getenv:
	; 0 SetReturnValue

 getenv$1:
	; 1 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getenv$2:
	; 3 FunctionEnd getenv

section .text

 system:
	; 0 SetReturnValue

 system$1:
	; 1 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 system$2:
	; 3 FunctionEnd system

section .data

@6161integral4$2#:
	; Initializer SignedInt 2
	dd 2

section .text

 bsearch:
	; 0 Assign firstIndex integral4$0#
	mov dword [rbp + 56], 0

 bsearch$1:
	; 1 Subtract lastIndex listSize integral4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 bsearch$2:
	; 3 NotEqual 5 listSize integral4$0#
	cmp dword [rbp + 40], 0
	jne bsearch$5

 bsearch$3:
	; 6 SetReturnValue

 bsearch$4:
	; 7 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$5:
	; 13 IntegralToIntegral £temporary2799 valueList
	mov rbx, [rbp + 32]

 bsearch$6:
	; 14 Multiply £temporary2800 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$7:
	; 15 IntegralToIntegral £temporary2801 £temporary2800
	mov rcx, 4294967295
	and rax, rcx

 bsearch$8:
	; 16 Add firstValuePtr £temporary2799 £temporary2801
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$9:
	; 18 PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$10:
	; 19 Parameter 96 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$11:
	; 20 Parameter 104 pointer firstValuePtr
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$12:
	; 21 Call 72 compare 0
	mov qword [rbp + 72], bsearch$13
	mov [rbp + 80], rbp
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$13:
	; 22 PostCall 72

 bsearch$14:
	; 23 GetReturnValue £temporary2803

 bsearch$15:
	; 24 Assign firstCompare £temporary2803
	mov [rbp + 72], ebx

 bsearch$16:
	; 25 GreaterThanEqual 19 firstCompare integral4$0#
	cmp dword [rbp + 72], 0
	jge bsearch$19

 bsearch$17:
	; 28 SetReturnValue

 bsearch$18:
	; 29 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$19:
	; 32 NotEqual 22 firstCompare integral4$0#
	cmp dword [rbp + 72], 0
	jne bsearch$22

 bsearch$20:
	; 35 SetReturnValue

 bsearch$21:
	; 36 Return firstValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$22:
	; 41 IntegralToIntegral £temporary2810 valueList
	mov rbx, [rbp + 32]

 bsearch$23:
	; 42 Multiply £temporary2811 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$24:
	; 43 IntegralToIntegral £temporary2812 £temporary2811
	mov rcx, 4294967295
	and rax, rcx

 bsearch$25:
	; 44 Add lastValuePtr £temporary2810 £temporary2812
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$26:
	; 46 PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$27:
	; 47 Parameter 96 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$28:
	; 48 Parameter 104 pointer lastValuePtr
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$29:
	; 49 Call 72 compare 0
	mov qword [rbp + 72], bsearch$30
	mov [rbp + 80], rbp
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$30:
	; 50 PostCall 72

 bsearch$31:
	; 51 GetReturnValue £temporary2814

 bsearch$32:
	; 52 Assign lastCompare £temporary2814
	mov [rbp + 72], ebx

 bsearch$33:
	; 53 LessThanEqual 36 lastCompare integral4$0#
	cmp dword [rbp + 72], 0
	jle bsearch$36

 bsearch$34:
	; 56 SetReturnValue

 bsearch$35:
	; 57 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$36:
	; 60 NotEqual 39 lastCompare integral4$0#
	cmp dword [rbp + 72], 0
	jne bsearch$39

 bsearch$37:
	; 63 SetReturnValue

 bsearch$38:
	; 64 Return lastValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$39:
	; 69 Add £temporary2821 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$40:
	; 70 Divide middleIndex £temporary2821 integral4$2#
	xor edx, edx
	idiv dword [@6161integral4$2#]
	mov [rbp + 64], eax

 bsearch$41:
	; 72 IntegralToIntegral £temporary2823 valueList
	mov rbx, [rbp + 32]

 bsearch$42:
	; 73 Multiply £temporary2824 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$43:
	; 74 IntegralToIntegral £temporary2825 £temporary2824
	mov rcx, 4294967295
	and rax, rcx

 bsearch$44:
	; 75 Add middleValuePtr £temporary2823 £temporary2825
	add rbx, rax
	mov [rbp + 68], rbx

 bsearch$45:
	; 77 PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$46:
	; 78 Parameter 100 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 bsearch$47:
	; 79 Parameter 108 pointer middleValuePtr
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 bsearch$48:
	; 80 Call 76 compare 0
	mov qword [rbp + 76], bsearch$49
	mov [rbp + 84], rbp
	mov rax, [rbp + 48]
	add rbp, 76
	jmp rax

 bsearch$49:
	; 81 PostCall 76

 bsearch$50:
	; 82 GetReturnValue £temporary2827

 bsearch$51:
	; 83 Assign middleCompare £temporary2827
	mov [rbp + 76], ebx

 bsearch$52:
	; 84 GreaterThanEqual 55 middleCompare integral4$0#
	cmp dword [rbp + 76], 0
	jge bsearch$55

 bsearch$53:
	; 87 Assign lastIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

 bsearch$54:
	; 88 Jump 5
	jmp bsearch$5

 bsearch$55:
	; 90 LessThanEqual 58 middleCompare integral4$0#
	cmp dword [rbp + 76], 0
	jle bsearch$58

 bsearch$56:
	; 93 Assign firstIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

 bsearch$57:
	; 94 Jump 5
	jmp bsearch$5

 bsearch$58:
	; 96 SetReturnValue

 bsearch$59:
	; 97 Return middleValuePtr
	mov rbx, [rbp + 68]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$60:
	; 103 FunctionEnd bsearch

section .data

@6173$g_randValue:
	; InitializerZero 8
	times 8 db 0

section .data

@6175integral8$1664525#:
	; Initializer SignedLongInt 1664525
	dq 1664525

section .data

@6178integral8$127#:
	; Initializer SignedLongInt 127
	dq 127

section .text

 rand:
	; 0 Multiply £temporary2835 g_randValue integral8$1664525#
	mov rax, [@6173$g_randValue]
	xor rdx, rdx
	imul qword [@6175integral8$1664525#]

 rand$1:
	; 1 Add £temporary2836 £temporary2835 integral8$1013904223#
	add rax, 1013904223

 rand$2:
	; 2 Modulo g_randValue £temporary2836 integral8$127#
	xor rdx, rdx
	idiv qword [@6178integral8$127#]
	mov [@6173$g_randValue], rdx

 rand$3:
	; 4 IntegralToIntegral £temporary2838 g_randValue
	mov rbx, [@6173$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; 5 SetReturnValue

 rand$5:
	; 6 Return £temporary2838
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$6:
	; 8 FunctionEnd rand

section .text

 srand:
	; 0 IntegralToIntegral £temporary2839 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; 1 Assign g_randValue £temporary2839
	mov [@6173$g_randValue], rax

 srand$2:
	; 3 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 srand$3:
	; 4 FunctionEnd srand

section .data

g_funcArray:
	; Initializer Pointer 0
	dq 0
	; InitializerZero 2040
	times 2040 db 0

section .data

@6189integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6192integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 atexit:
	; 0 Assign index integral4$0#
	mov dword [rbp + 32], 0

 atexit$1:
	; 2 GreaterThanEqual 16 index integral4$256#
	cmp dword [rbp + 32], 256
	jge atexit$16

 atexit$2:
	; 4 Multiply £temporary2842 index integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@6189integral4$8#]

 atexit$3:
	; 5 IntegralToIntegral £temporary2843 £temporary2842
	mov rbx, 4294967295
	and rax, rbx

 atexit$4:
	; 6 Add £temporary2844 g_funcArray £temporary2843
	mov rsi, g_funcArray
	add rsi, rax

 atexit$5:
	; 7 Dereference £temporary2845 £temporary2844 0

 atexit$6:
	; 8 NotEqual 14 £temporary2845 integral8$0#
	cmp qword [rsi], 0
	jne atexit$14

 atexit$7:
	; 11 Multiply £temporary2847 index integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@6192integral4$8#]

 atexit$8:
	; 12 IntegralToIntegral £temporary2848 £temporary2847
	mov rbx, 4294967295
	and rax, rbx

 atexit$9:
	; 13 Add £temporary2849 g_funcArray £temporary2848
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; 14 Dereference £temporary2850 £temporary2849 0

 atexit$11:
	; 15 Assign £temporary2850 fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$12:
	; 16 SetReturnValue

 atexit$13:
	; 17 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$14:
	; 22 Add index index integral4$1#
	inc dword [rbp + 32]

 atexit$15:
	; 24 Jump 1
	jmp atexit$1

 atexit$16:
	; 25 SetReturnValue

 atexit$17:
	; 26 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$18:
	; 28 FunctionEnd atexit

section .data

@6202integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6205integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 exit:
	; 0 Assign index integral4$255#
	mov dword [rbp + 28], 255

 exit$1:
	; 2 LessThan 16 index integral4$0#
	cmp dword [rbp + 28], 0
	jl exit$16

 exit$2:
	; 4 Multiply £temporary2855 index integral4$8#
	mov eax, [rbp + 28]
	xor edx, edx
	imul dword [@6202integral4$8#]

 exit$3:
	; 5 IntegralToIntegral £temporary2856 £temporary2855
	mov rbx, 4294967295
	and rax, rbx

 exit$4:
	; 6 Add £temporary2857 g_funcArray £temporary2856
	mov rsi, g_funcArray
	add rsi, rax

 exit$5:
	; 7 Dereference £temporary2858 £temporary2857 0

 exit$6:
	; 8 Equal 14 £temporary2858 integral8$0#
	cmp qword [rsi], 0
	je exit$14

 exit$7:
	; 11 Multiply £temporary2860 index integral4$8#
	mov eax, [rbp + 28]
	xor edx, edx
	imul dword [@6205integral4$8#]

 exit$8:
	; 12 IntegralToIntegral £temporary2861 £temporary2860
	mov rbx, 4294967295
	and rax, rbx

 exit$9:
	; 13 Add £temporary2862 g_funcArray £temporary2861
	mov rbx, g_funcArray
	add rbx, rax

 exit$10:
	; 14 Dereference £temporary2863 £temporary2862 0

 exit$11:
	; 15 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$12:
	; 16 Call 32 £temporary2863 0
	mov qword [rbp + 2080], exit$13
	mov [rbp + 2088], rbp
	mov rsi, rbp
	mov rax, [rsi]
	add rbp, 2080
	jmp rax

 exit$13:
	; 17 PostCall 32
	mov rbx, [rbp + 32]

 exit$14:
	; 22 Subtract index index integral4$1#
	dec dword [rbp + 28]

 exit$15:
	; 24 Jump 1
	jmp exit$1

 exit$16:
	; 25 AssignRegister rax integral8$60#
	mov rax, 60

 exit$17:
	; 26 IntegralToIntegral £temporary2869 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$18:
	; 27 AssignRegister rdi £temporary2869

 exit$19:
	; 28 SysCall
	syscall

 exit$20:
	; 30 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit$21:
	; 31 FunctionEnd exit

section .text

 @6210$memswap:
	; 0 Assign index integral4$0#
	mov dword [rbp + 44], 0

 @6210$memswap$1:
	; 2 GreaterThanEqual 19 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge @6210$memswap$19

 @6210$memswap$2:
	; 4 IntegralToIntegral £temporary2872 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6210$memswap$3:
	; 5 Add £temporary2873 value1 £temporary2872
	mov rsi, [rbp + 24]
	add rsi, rax

 @6210$memswap$4:
	; 6 Dereference £temporary2874 £temporary2873 0

 @6210$memswap$5:
	; 7 Assign tempValue £temporary2874
	mov al, [rsi]
	mov [rbp + 48], al

 @6210$memswap$6:
	; 8 IntegralToIntegral £temporary2875 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6210$memswap$7:
	; 9 Add £temporary2876 value1 £temporary2875
	mov rsi, [rbp + 24]
	add rsi, rax

 @6210$memswap$8:
	; 10 Dereference £temporary2877 £temporary2876 0

 @6210$memswap$9:
	; 11 IntegralToIntegral £temporary2878 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6210$memswap$10:
	; 12 Add £temporary2879 value2 £temporary2878
	mov rdi, [rbp + 32]
	add rdi, rax

 @6210$memswap$11:
	; 13 Dereference £temporary2880 £temporary2879 0

 @6210$memswap$12:
	; 14 Assign £temporary2877 £temporary2880
	mov al, [rdi]
	mov [rsi], al

 @6210$memswap$13:
	; 15 IntegralToIntegral £temporary2881 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6210$memswap$14:
	; 16 Add £temporary2882 value2 £temporary2881
	mov rsi, [rbp + 32]
	add rsi, rax

 @6210$memswap$15:
	; 17 Dereference £temporary2883 £temporary2882 0

 @6210$memswap$16:
	; 18 Assign £temporary2883 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 @6210$memswap$17:
	; 20 Add index index integral4$1#
	inc dword [rbp + 44]

 @6210$memswap$18:
	; 22 Jump 1
	jmp @6210$memswap$1

 @6210$memswap$19:
	; 24 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6210$memswap$20:
	; 25 FunctionEnd memswap

section .text

 qsort:
	; 0 IntegralToIntegral £temporary2884 valueList
	mov rax, [rbp + 24]

 qsort$1:
	; 1 Assign charList £temporary2884
	mov [rbp + 48], rax

 qsort$2:
	; 2 Subtract size listSize integral4$1#
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 56], eax

 qsort$3:
	; 5 LessThanEqual 33 size integral4$0#
	cmp dword [rbp + 56], 0
	jle qsort$33

 qsort$4:
	; 7 Assign update integral4$0#
	mov dword [rbp + 64], 0

 qsort$5:
	; 8 Assign index integral4$0#
	mov dword [rbp + 60], 0

 qsort$6:
	; 10 GreaterThanEqual 30 index size
	mov eax, [rbp + 56]
	cmp [rbp + 60], eax
	jge qsort$30

 qsort$7:
	; 12 Multiply £temporary2890 index valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$8:
	; 13 IntegralToIntegral £temporary2891 £temporary2890
	mov rbx, 4294967295
	and rax, rbx

 qsort$9:
	; 14 Add valuePtr1 charList £temporary2891
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$10:
	; 16 Add £temporary2893 index integral4$1#
	mov eax, [rbp + 60]
	inc eax

 qsort$11:
	; 17 Multiply £temporary2894 £temporary2893 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$12:
	; 18 IntegralToIntegral £temporary2895 £temporary2894
	mov rbx, 4294967295
	and rax, rbx

 qsort$13:
	; 19 Add valuePtr2 charList £temporary2895
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$14:
	; 21 PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$15:
	; 22 Parameter 108 pointer valuePtr1
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$16:
	; 23 Parameter 116 pointer valuePtr2
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$17:
	; 24 Call 84 compare 0
	mov qword [rbp + 84], qsort$18
	mov [rbp + 92], rbp
	mov rax, [rbp + 40]
	add rbp, 84
	jmp rax

 qsort$18:
	; 25 PostCall 84

 qsort$19:
	; 26 GetReturnValue £temporary2897

 qsort$20:
	; 27 LessThanEqual 28 £temporary2897 integral4$0#
	cmp ebx, 0
	jle qsort$28

 qsort$21:
	; 30 PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$22:
	; 31 Parameter 108 pointer valuePtr1
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$23:
	; 32 Parameter 116 pointer valuePtr2
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$24:
	; 33 Parameter 124 signed int valueSize
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$25:
	; 34 Call 84 memswap 0
	mov qword [rbp + 84], qsort$26
	mov [rbp + 92], rbp
	add rbp, 84
	jmp @6210$memswap

 qsort$26:
	; 35 PostCall 84

 qsort$27:
	; 36 Assign update integral4$1#
	mov dword [rbp + 64], 1

 qsort$28:
	; 41 Add index index integral4$1#
	inc dword [rbp + 60]

 qsort$29:
	; 43 Jump 6
	jmp qsort$6

 qsort$30:
	; 44 Equal 33 update integral4$0#
	cmp dword [rbp + 64], 0
	je qsort$33

 qsort$31:
	; 52 Subtract size size integral4$1#
	dec dword [rbp + 56]

 qsort$32:
	; 54 Jump 3
	jmp qsort$3

 qsort$33:
	; 56 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qsort$34:
	; 57 FunctionEnd qsort

section .text

 @abs:
	; 0 GreaterThanEqual 3 value integral4$0#
	cmp dword [rbp + 24], 0
	jge @abs$3

 @abs$1:
	; 3 Minus £temporary2908 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; 5 Jump 4
	jmp @abs$4

 @abs$3:
	; 7 Assign £temporary2908 value
	mov ebx, [rbp + 24]

 @abs$4:
	; 9 SetReturnValue

 @abs$5:
	; 10 Return £temporary2908
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @abs$6:
	; 12 FunctionEnd @abs

section .text

 labs:
	; 0 GreaterThanEqual 3 value integral8$0#
	cmp qword [rbp + 24], 0
	jge labs$3

 labs$1:
	; 3 Minus £temporary2911 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; 5 Jump 4
	jmp labs$4

 labs$3:
	; 7 Assign £temporary2911 value
	mov rbx, [rbp + 24]

 labs$4:
	; 9 SetReturnValue

 labs$5:
	; 10 Return £temporary2911
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$6:
	; 12 FunctionEnd labs

section .text

 div:
	; 0 Assign result.quot integral4$0#
	mov dword [rbp + 32], 0

 div$1:
	; 1 Assign result.rem integral4$0#
	mov dword [rbp + 36], 0

 div$2:
	; 2 NotEqual 6 denum integral4$0#
	cmp dword [rbp + 28], 0
	jne div$6

 div$3:
	; 5 Assign errno EDOM
	mov dword [errno], 6

 div$4:
	; 6 SetReturnValue

 div$5:
	; 7 Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$6:
	; 11 Divide result.quot num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 div$7:
	; 13 Modulo result.rem num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 36], edx

 div$8:
	; 15 SetReturnValue

 div$9:
	; 16 Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$10:
	; 18 FunctionEnd div

section .text

 ldiv:
	; 0 Assign result.quot integral8$0#
	mov qword [rbp + 40], 0

 ldiv$1:
	; 1 Assign result.rem integral8$0#
	mov qword [rbp + 48], 0

 ldiv$2:
	; 2 NotEqual 6 denum integral8$0#
	cmp qword [rbp + 32], 0
	jne ldiv$6

 ldiv$3:
	; 5 Assign errno EDOM
	mov dword [errno], 6

 ldiv$4:
	; 6 SetReturnValue

 ldiv$5:
	; 7 Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$6:
	; 11 Divide result.quot num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 40], rax

 ldiv$7:
	; 13 Modulo result.rem num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 48], rdx

 ldiv$8:
	; 15 SetReturnValue

 ldiv$9:
	; 16 Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$10:
	; 18 FunctionEnd ldiv
