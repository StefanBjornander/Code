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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atoi$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atoi$2:
	; Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atoi$3:
	; Parameter 72 signed int integral4$10#
	mov dword [rbp + 72], 10

 atoi$4:
	; Call 32 strtol 0
	mov qword [rbp + 32], atoi$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atoi$5:
	; PostCall 32

 atoi$6:
	; GetReturnValue £temporary2303

 atoi$7:
	; IntegralToIntegral £temporary2304 £temporary2303
	cmp rbx, 0
	jge atoi$8
	neg rbx
	neg ebx

 atoi$8:
	; Return £temporary2304
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atoi$9:
	; FunctionEnd atoi

section .text

 atol:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atol$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atol$2:
	; Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atol$3:
	; Parameter 72 signed int integral4$10#
	mov dword [rbp + 72], 10

 atol$4:
	; Call 32 strtol 0
	mov qword [rbp + 32], atol$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtol

 atol$5:
	; PostCall 32

 atol$6:
	; GetReturnValue £temporary2305

 atol$7:
	; Return £temporary2305
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atol$8:
	; FunctionEnd atol

section .text

 strtol:
	; Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 strtol$1:
	; Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtol$2:
	; Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 strtol$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol$4:
	; Parameter 68 signed int base
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtol$5:
	; Call 44 scanLongInt 0
	mov qword [rbp + 44], strtol$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanLongInt

 strtol$6:
	; PostCall 44

 strtol$7:
	; GetReturnValue £temporary2306

 strtol$8:
	; Assign value £temporary2306
	mov [rbp + 44], rbx

 strtol$9:
	; Equal 13 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtol$13

 strtol$10:
	; Dereference £temporary2308 endp 0
	mov rsi, [rbp + 32]

 strtol$11:
	; IntegralToIntegral £temporary2310 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtol$12:
	; Add £temporary2308 s £temporary2310
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtol$13:
	; Return value
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol$14:
	; FunctionEnd strtol

section .text

 strtoul:
	; Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 strtoul$1:
	; Assign g_inDevice s
	mov rax, [rbp + 24]
	mov [g_inDevice], rax

 strtoul$2:
	; Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 strtoul$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul$4:
	; Parameter 68 signed int base
	mov eax, [rbp + 40]
	mov [rbp + 68], eax

 strtoul$5:
	; Call 44 scanUnsignedLongInt 0
	mov qword [rbp + 44], strtoul$6
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanUnsignedLongInt

 strtoul$6:
	; PostCall 44

 strtoul$7:
	; GetReturnValue £temporary2314

 strtoul$8:
	; Assign unsignedLongValue £temporary2314
	mov [rbp + 44], rbx

 strtoul$9:
	; Equal 13 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtoul$13

 strtoul$10:
	; Dereference £temporary2316 endp 0
	mov rsi, [rbp + 32]

 strtoul$11:
	; IntegralToIntegral £temporary2318 g_inChars
	mov eax, [g_inChars]
	mov rbx, 4294967295
	and rax, rbx

 strtoul$12:
	; Add £temporary2316 s £temporary2318
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtoul$13:
	; Return unsignedLongValue
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul$14:
	; FunctionEnd strtoul

section .text

 atof:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atof$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 atof$2:
	; Parameter 64 pointer integral8$0#
	mov qword [rbp + 64], 0

 atof$3:
	; Call 32 strtod 0
	mov qword [rbp + 32], atof$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strtod

 atof$4:
	; PostCall 32

 atof$5:
	; GetReturnValue £temporary2322

 atof$6:
	; Return £temporary2322
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atof$7:
	; FunctionEnd atof

section .data

@5188string_25lf25n#:
	; Initializer String %lf%n
	db "%lf%n", 0

section .text

 strtod:
	; Assign chars integral4$0#
	mov dword [rbp + 40], 0

 strtod$1:
	; PushFloat floating8$0#
	fldz

 strtod$2:
	; PopFloat value
	fstp qword [rbp + 44]

 strtod$3:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtod$4:
	; Parameter 76 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 strtod$5:
	; Parameter 84 string string_25lf25n#
	mov qword [rbp + 84], @5188string_25lf25n#

 strtod$6:
	; Address £temporary2323 value
	mov rsi, rbp
	add rsi, 44

 strtod$7:
	; Parameter 92 pointer £temporary2323
	mov [rbp + 92], rsi

 strtod$8:
	; Address £temporary2324 chars
	mov rsi, rbp
	add rsi, 40

 strtod$9:
	; Parameter 100 pointer £temporary2324
	mov [rbp + 100], rsi

 strtod$10:
	; Call 52 sscanf 16
	mov qword [rbp + 52], strtod$11
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 16
	jmp sscanf

 strtod$11:
	; PostCall 52

 strtod$12:
	; Equal 16 endp integral8$0#
	cmp qword [rbp + 32], 0
	je strtod$16

 strtod$13:
	; Dereference £temporary2327 endp 0
	mov rsi, [rbp + 32]

 strtod$14:
	; IntegralToIntegral £temporary2329 chars
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtod$15:
	; Add £temporary2327 s £temporary2329
	mov rbx, [rbp + 24]
	add rbx, rax
	mov [rsi], rbx

 strtod$16:
	; PushFloat value
	fld qword [rbp + 44]

 strtod$17:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtod$18:
	; FunctionEnd strtod

section .data

@5199string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5214string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5217string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

@5233string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5236string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

@5253string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5256string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

@5273string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5276string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5291string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5294string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

@5310string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5313string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

@5330string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5333string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

@5350string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5353string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5368string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5371string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5386string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5389string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5404string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5407string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

@5422string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5425string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5440string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5443string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5458string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5461string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5476string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5479string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5494string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5497string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .data

@5512string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5515string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5530string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .text

 strtol_test:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$1:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$2:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$3:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$4:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$5:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$6:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$7:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$8:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$9:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$10:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$11:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$12:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$13:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$14:
	; Address £temporary2346 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$15:
	; Parameter 79 pointer £temporary2346
	mov [rbp + 79], rsi

 strtol_test$16:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$17:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$18:
	; PostCall 47

 strtol_test$19:
	; GetReturnValue £temporary2347

 strtol_test$20:
	; Assign value £temporary2347
	mov [rbp + 47], rbx

 strtol_test$21:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$22:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5214string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$23:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$24:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$25:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$26:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$27:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$28:
	; PostCall 55

 strtol_test$29:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$30:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$31:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$32:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$33:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$34:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$35:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtol_test$36:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtol_test$37:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtol_test$38:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtol_test$39:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtol_test$40:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtol_test$41:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtol_test$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$43:
	; Parameter 72 array text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$44:
	; Address £temporary2361 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$45:
	; Parameter 80 pointer £temporary2361
	mov [rbp + 80], rsi

 strtol_test$46:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$47:
	; Call 48 strtol 0
	mov qword [rbp + 48], strtol_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$48:
	; PostCall 48

 strtol_test$49:
	; GetReturnValue £temporary2362

 strtol_test$50:
	; Assign value £temporary2362
	mov [rbp + 48], rbx

 strtol_test$51:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$52:
	; Parameter 80 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5233string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$53:
	; Parameter 88 array text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$54:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$55:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$56:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$57:
	; Call 56 printf 28
	mov qword [rbp + 56], strtol_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$58:
	; PostCall 56

 strtol_test$59:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$60:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$61:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$62:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$63:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$64:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$65:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtol_test$66:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$67:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$68:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$69:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtol_test$70:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtol_test$71:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtol_test$72:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$74:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$75:
	; Address £temporary2377 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$76:
	; Parameter 81 pointer £temporary2377
	mov [rbp + 81], rsi

 strtol_test$77:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$78:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$79:
	; PostCall 49

 strtol_test$80:
	; GetReturnValue £temporary2378

 strtol_test$81:
	; Assign value £temporary2378
	mov [rbp + 49], rbx

 strtol_test$82:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$83:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5253string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$84:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$85:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$86:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$87:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$88:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$89:
	; PostCall 57

 strtol_test$90:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$91:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$92:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$93:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$94:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$95:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$96:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtol_test$97:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$98:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$99:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$100:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtol_test$101:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtol_test$102:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtol_test$103:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$104:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$105:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$106:
	; Address £temporary2393 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$107:
	; Parameter 81 pointer £temporary2393
	mov [rbp + 81], rsi

 strtol_test$108:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$109:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$110:
	; PostCall 49

 strtol_test$111:
	; GetReturnValue £temporary2394

 strtol_test$112:
	; Assign value £temporary2394
	mov [rbp + 49], rbx

 strtol_test$113:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$114:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5273string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$115:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$116:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$117:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$118:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$119:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$120:
	; PostCall 57

 strtol_test$121:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$122:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$123:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$124:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$125:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$126:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$127:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$128:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$129:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$130:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$131:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$132:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$133:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$134:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$135:
	; Address £temporary2407 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$136:
	; Parameter 79 pointer £temporary2407
	mov [rbp + 79], rsi

 strtol_test$137:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$138:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$139:
	; PostCall 47

 strtol_test$140:
	; GetReturnValue £temporary2408

 strtol_test$141:
	; Assign value £temporary2408
	mov [rbp + 47], rbx

 strtol_test$142:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$143:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5291string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$144:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$145:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$146:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$147:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$148:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$149:
	; PostCall 55

 strtol_test$150:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$151:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$152:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$153:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$154:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$155:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$156:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtol_test$157:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtol_test$158:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtol_test$159:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtol_test$160:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtol_test$161:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtol_test$162:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtol_test$163:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$164:
	; Parameter 72 array text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtol_test$165:
	; Address £temporary2422 pointer
	mov rsi, rbp
	add rsi, 40

 strtol_test$166:
	; Parameter 80 pointer £temporary2422
	mov [rbp + 80], rsi

 strtol_test$167:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtol_test$168:
	; Call 48 strtol 0
	mov qword [rbp + 48], strtol_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtol

 strtol_test$169:
	; PostCall 48

 strtol_test$170:
	; GetReturnValue £temporary2423

 strtol_test$171:
	; Assign value £temporary2423
	mov [rbp + 48], rbx

 strtol_test$172:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$173:
	; Parameter 80 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5310string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$174:
	; Parameter 88 array text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtol_test$175:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtol_test$176:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtol_test$177:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtol_test$178:
	; Call 56 printf 28
	mov qword [rbp + 56], strtol_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$179:
	; PostCall 56

 strtol_test$180:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$181:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$182:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$183:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$184:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$185:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$186:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtol_test$187:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$188:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$189:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$190:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtol_test$191:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtol_test$192:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtol_test$193:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$194:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$195:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$196:
	; Address £temporary2438 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$197:
	; Parameter 81 pointer £temporary2438
	mov [rbp + 81], rsi

 strtol_test$198:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$199:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$200:
	; PostCall 49

 strtol_test$201:
	; GetReturnValue £temporary2439

 strtol_test$202:
	; Assign value £temporary2439
	mov [rbp + 49], rbx

 strtol_test$203:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$204:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5330string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$205:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$206:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$207:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$208:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$209:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$210:
	; PostCall 57

 strtol_test$211:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtol_test$212:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$213:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$214:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$215:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$216:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtol_test$217:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtol_test$218:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtol_test$219:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtol_test$220:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtol_test$221:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtol_test$222:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtol_test$223:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtol_test$224:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtol_test$225:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$226:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtol_test$227:
	; Address £temporary2454 pointer
	mov rsi, rbp
	add rsi, 41

 strtol_test$228:
	; Parameter 81 pointer £temporary2454
	mov [rbp + 81], rsi

 strtol_test$229:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtol_test$230:
	; Call 49 strtol 0
	mov qword [rbp + 49], strtol_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtol

 strtol_test$231:
	; PostCall 49

 strtol_test$232:
	; GetReturnValue £temporary2455

 strtol_test$233:
	; Assign value £temporary2455
	mov [rbp + 49], rbx

 strtol_test$234:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$235:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5350string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$236:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtol_test$237:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtol_test$238:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtol_test$239:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtol_test$240:
	; Call 57 printf 28
	mov qword [rbp + 57], strtol_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$241:
	; PostCall 57

 strtol_test$242:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtol_test$243:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$244:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$245:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$246:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$247:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$248:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$249:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$250:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$251:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$252:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$253:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$254:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$255:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$256:
	; Address £temporary2468 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$257:
	; Parameter 79 pointer £temporary2468
	mov [rbp + 79], rsi

 strtol_test$258:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$259:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$260:
	; PostCall 47

 strtol_test$261:
	; GetReturnValue £temporary2469

 strtol_test$262:
	; Assign value £temporary2469
	mov [rbp + 47], rbx

 strtol_test$263:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$264:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5368string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$265:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$266:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$267:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$268:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$269:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$270:
	; PostCall 55

 strtol_test$271:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtol_test$272:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$273:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$274:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$275:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$276:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$277:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$278:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$279:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$280:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$281:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$282:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$283:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$284:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$285:
	; Address £temporary2482 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$286:
	; Parameter 79 pointer £temporary2482
	mov [rbp + 79], rsi

 strtol_test$287:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$288:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$289:
	; PostCall 47

 strtol_test$290:
	; GetReturnValue £temporary2483

 strtol_test$291:
	; Assign value £temporary2483
	mov [rbp + 47], rbx

 strtol_test$292:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$293:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5386string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$294:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$295:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$296:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$297:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$298:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$299:
	; PostCall 55

 strtol_test$300:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtol_test$301:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$302:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$303:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$304:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$305:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$306:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$307:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$308:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$309:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$310:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$311:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$312:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$313:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$314:
	; Address £temporary2496 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$315:
	; Parameter 79 pointer £temporary2496
	mov [rbp + 79], rsi

 strtol_test$316:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$317:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$318:
	; PostCall 47

 strtol_test$319:
	; GetReturnValue £temporary2497

 strtol_test$320:
	; Assign value £temporary2497
	mov [rbp + 47], rbx

 strtol_test$321:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$322:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5404string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$323:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$324:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$325:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$326:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$327:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$328:
	; PostCall 55

 strtol_test$329:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtol_test$330:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$331:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$332:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$333:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$334:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$335:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$336:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$337:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtol_test$338:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtol_test$339:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtol_test$340:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$341:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$342:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$343:
	; Address £temporary2510 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$344:
	; Parameter 79 pointer £temporary2510
	mov [rbp + 79], rsi

 strtol_test$345:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$346:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$347:
	; PostCall 47

 strtol_test$348:
	; GetReturnValue £temporary2511

 strtol_test$349:
	; Assign value £temporary2511
	mov [rbp + 47], rbx

 strtol_test$350:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$351:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5422string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$352:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$353:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$354:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$355:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$356:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$357:
	; PostCall 55

 strtol_test$358:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtol_test$359:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$360:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$361:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$362:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtol_test$363:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$364:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$365:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$366:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$367:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$368:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$369:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$370:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$371:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$372:
	; Address £temporary2524 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$373:
	; Parameter 79 pointer £temporary2524
	mov [rbp + 79], rsi

 strtol_test$374:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$375:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$376:
	; PostCall 47

 strtol_test$377:
	; GetReturnValue £temporary2525

 strtol_test$378:
	; Assign value £temporary2525
	mov [rbp + 47], rbx

 strtol_test$379:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$380:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5440string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$381:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$382:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$383:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$384:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$385:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$386:
	; PostCall 55

 strtol_test$387:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtol_test$388:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$389:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$390:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$391:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$392:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$393:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$394:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$395:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$396:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$397:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$398:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$399:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$400:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$401:
	; Address £temporary2538 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$402:
	; Parameter 79 pointer £temporary2538
	mov [rbp + 79], rsi

 strtol_test$403:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$404:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$405:
	; PostCall 47

 strtol_test$406:
	; GetReturnValue £temporary2539

 strtol_test$407:
	; Assign value £temporary2539
	mov [rbp + 47], rbx

 strtol_test$408:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$409:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5458string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$410:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$411:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$412:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$413:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$414:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$415:
	; PostCall 55

 strtol_test$416:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtol_test$417:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$418:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$419:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$420:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$421:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$422:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$423:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$424:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$425:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$426:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$427:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$428:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$429:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$430:
	; Address £temporary2552 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$431:
	; Parameter 79 pointer £temporary2552
	mov [rbp + 79], rsi

 strtol_test$432:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$433:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$434:
	; PostCall 47

 strtol_test$435:
	; GetReturnValue £temporary2553

 strtol_test$436:
	; Assign value £temporary2553
	mov [rbp + 47], rbx

 strtol_test$437:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$438:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5476string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$439:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$440:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$441:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$442:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$443:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$444:
	; PostCall 55

 strtol_test$445:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtol_test$446:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$447:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$448:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$449:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$450:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$451:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$452:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$453:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$454:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$455:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$456:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$457:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$458:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$459:
	; Address £temporary2566 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$460:
	; Parameter 79 pointer £temporary2566
	mov [rbp + 79], rsi

 strtol_test$461:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$462:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$463:
	; PostCall 47

 strtol_test$464:
	; GetReturnValue £temporary2567

 strtol_test$465:
	; Assign value £temporary2567
	mov [rbp + 47], rbx

 strtol_test$466:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$467:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5494string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$468:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$469:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$470:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$471:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$472:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$473:
	; PostCall 55

 strtol_test$474:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtol_test$475:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$476:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$477:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$478:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$479:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$480:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$481:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$482:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtol_test$483:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtol_test$484:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtol_test$485:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$486:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$487:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$488:
	; Address £temporary2580 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$489:
	; Parameter 79 pointer £temporary2580
	mov [rbp + 79], rsi

 strtol_test$490:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$491:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$492:
	; PostCall 47

 strtol_test$493:
	; GetReturnValue £temporary2581

 strtol_test$494:
	; Assign value £temporary2581
	mov [rbp + 47], rbx

 strtol_test$495:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$496:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5512string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$497:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$498:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$499:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$500:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$501:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$502:
	; PostCall 55

 strtol_test$503:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtol_test$504:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtol_test$505:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtol_test$506:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtol_test$507:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtol_test$508:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtol_test$509:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtol_test$510:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtol_test$511:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtol_test$512:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtol_test$513:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtol_test$514:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtol_test$515:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$516:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtol_test$517:
	; Address £temporary2594 pointer
	mov rsi, rbp
	add rsi, 39

 strtol_test$518:
	; Parameter 79 pointer £temporary2594
	mov [rbp + 79], rsi

 strtol_test$519:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtol_test$520:
	; Call 47 strtol 0
	mov qword [rbp + 47], strtol_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtol

 strtol_test$521:
	; PostCall 47

 strtol_test$522:
	; GetReturnValue £temporary2595

 strtol_test$523:
	; Assign value £temporary2595
	mov [rbp + 47], rbx

 strtol_test$524:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtol_test$525:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5530string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtol_test$526:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtol_test$527:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtol_test$528:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtol_test$529:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtol_test$530:
	; Call 55 printf 28
	mov qword [rbp + 55], strtol_test$531
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtol_test$531:
	; PostCall 55

 strtol_test$532:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtol_test$533:
	; FunctionEnd strtol_test

section .data

@5678string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5693string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5696string_2020202B0123abc#:
	; Initializer String    +0123abc
	db "   +0123abc", 0

section .data

@5712string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5715string_2020202B0x123ABC#:
	; Initializer String    +0x123ABC
	db "   +0x123ABC", 0

section .data

@5732string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5735string_2020202B0X123abc#:
	; Initializer String    +0X123abc
	db "   +0X123abc", 0

section .data

@5752string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5755string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5770string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5773string_2020202D0123abc#:
	; Initializer String    -0123abc
	db "   -0123abc", 0

section .data

@5789string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5792string_2020202D0x123ABC#:
	; Initializer String    -0x123ABC
	db "   -0x123ABC", 0

section .data

@5809string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5812string_2020202D0X123abc#:
	; Initializer String    -0X123abc
	db "   -0X123abc", 0

section .data

@5829string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5832string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5847string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5850string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5865string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5868string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5883string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5886string_2020202B123ABC#:
	; Initializer String    +123ABC
	db "   +123ABC", 0

section .data

@5901string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5904string_2020202B123abc#:
	; Initializer String    +123abc
	db "   +123abc", 0

section .data

@5919string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5922string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5937string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5940string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5955string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5958string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@5973string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5976string_2020202D123ABC#:
	; Initializer String    -123ABC
	db "   -123ABC", 0

section .data

@5991string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .data

@5994string_2020202D123abc#:
	; Initializer String    -123abc
	db "   -123abc", 0

section .data

@6009string_3C25s3E203C25li3E203C25s3E203C25i3E0A#:
	; Initializer String <%s> <%li> <%s> <%i>\n
	db "<%s> <%li> <%s> <%i>", 10, 0

section .text

 strtoul_test:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$1:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$2:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$3:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$4:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$5:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$6:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$7:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$8:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$9:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$10:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$11:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$12:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$13:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$14:
	; Address £temporary2626 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$15:
	; Parameter 79 pointer £temporary2626
	mov [rbp + 79], rsi

 strtoul_test$16:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$17:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$18
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$18:
	; PostCall 47

 strtoul_test$19:
	; GetReturnValue £temporary2627

 strtoul_test$20:
	; Assign value £temporary2627
	mov [rbp + 47], rbx

 strtoul_test$21:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$22:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5693string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$23:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$24:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$25:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$26:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$27:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$28
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$28:
	; PostCall 55

 strtoul_test$29:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$30:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$31:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$32:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$33:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$34:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$35:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtoul_test$36:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtoul_test$37:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtoul_test$38:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtoul_test$39:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtoul_test$40:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtoul_test$41:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtoul_test$42:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$43:
	; Parameter 72 array text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$44:
	; Address £temporary2641 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$45:
	; Parameter 80 pointer £temporary2641
	mov [rbp + 80], rsi

 strtoul_test$46:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$47:
	; Call 48 strtoul 0
	mov qword [rbp + 48], strtoul_test$48
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$48:
	; PostCall 48

 strtoul_test$49:
	; GetReturnValue £temporary2642

 strtoul_test$50:
	; Assign value £temporary2642
	mov [rbp + 48], rbx

 strtoul_test$51:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$52:
	; Parameter 80 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5712string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$53:
	; Parameter 88 array text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$54:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$55:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$56:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$57:
	; Call 56 printf 28
	mov qword [rbp + 56], strtoul_test$58
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$58:
	; PostCall 56

 strtoul_test$59:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$60:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$61:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$62:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$63:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$64:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$65:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtoul_test$66:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$67:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$68:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$69:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtoul_test$70:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtoul_test$71:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtoul_test$72:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$73:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$74:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$75:
	; Address £temporary2657 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$76:
	; Parameter 81 pointer £temporary2657
	mov [rbp + 81], rsi

 strtoul_test$77:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$78:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$79
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$79:
	; PostCall 49

 strtoul_test$80:
	; GetReturnValue £temporary2658

 strtoul_test$81:
	; Assign value £temporary2658
	mov [rbp + 49], rbx

 strtoul_test$82:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$83:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5732string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$84:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$85:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$86:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$87:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$88:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$89
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$89:
	; PostCall 57

 strtoul_test$90:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$91:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$92:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$93:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$94:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$95:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$96:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtoul_test$97:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$98:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$99:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$100:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtoul_test$101:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtoul_test$102:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtoul_test$103:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$104:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$105:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$106:
	; Address £temporary2673 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$107:
	; Parameter 81 pointer £temporary2673
	mov [rbp + 81], rsi

 strtoul_test$108:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$109:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$110
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$110:
	; PostCall 49

 strtoul_test$111:
	; GetReturnValue £temporary2674

 strtoul_test$112:
	; Assign value £temporary2674
	mov [rbp + 49], rbx

 strtoul_test$113:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$114:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5752string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$115:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$116:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$117:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$118:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$119:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$120
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$120:
	; PostCall 57

 strtoul_test$121:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$122:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$123:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$124:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$125:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$126:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$127:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$128:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$129:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$130:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$131:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$132:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$133:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$134:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$135:
	; Address £temporary2687 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$136:
	; Parameter 79 pointer £temporary2687
	mov [rbp + 79], rsi

 strtoul_test$137:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$138:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$139
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$139:
	; PostCall 47

 strtoul_test$140:
	; GetReturnValue £temporary2688

 strtoul_test$141:
	; Assign value £temporary2688
	mov [rbp + 47], rbx

 strtoul_test$142:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$143:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5770string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$144:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$145:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$146:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$147:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$148:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$149
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$149:
	; PostCall 55

 strtoul_test$150:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$151:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$152:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$153:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$154:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$155:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$156:
	; Assign text[5] integral1$49#
	mov byte [rbp + 33], 49

 strtoul_test$157:
	; Assign text[6] integral1$50#
	mov byte [rbp + 34], 50

 strtoul_test$158:
	; Assign text[7] integral1$51#
	mov byte [rbp + 35], 51

 strtoul_test$159:
	; Assign text[8] integral1$97#
	mov byte [rbp + 36], 97

 strtoul_test$160:
	; Assign text[9] integral1$98#
	mov byte [rbp + 37], 98

 strtoul_test$161:
	; Assign text[10] integral1$99#
	mov byte [rbp + 38], 99

 strtoul_test$162:
	; Assign text[11] integral1$0#
	mov byte [rbp + 39], 0

 strtoul_test$163:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$164:
	; Parameter 72 array text
	mov [rbp + 72], rbp
	add qword [rbp + 72], 28

 strtoul_test$165:
	; Address £temporary2702 pointer
	mov rsi, rbp
	add rsi, 40

 strtoul_test$166:
	; Parameter 80 pointer £temporary2702
	mov [rbp + 80], rsi

 strtoul_test$167:
	; Parameter 88 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 88], eax

 strtoul_test$168:
	; Call 48 strtoul 0
	mov qword [rbp + 48], strtoul_test$169
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strtoul

 strtoul_test$169:
	; PostCall 48

 strtoul_test$170:
	; GetReturnValue £temporary2703

 strtoul_test$171:
	; Assign value £temporary2703
	mov [rbp + 48], rbx

 strtoul_test$172:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$173:
	; Parameter 80 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 80], @5789string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$174:
	; Parameter 88 array text
	mov [rbp + 88], rbp
	add qword [rbp + 88], 28

 strtoul_test$175:
	; Parameter 96 signed long int value
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 strtoul_test$176:
	; Parameter 104 pointer pointer
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 strtoul_test$177:
	; Parameter 112 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 112], eax

 strtoul_test$178:
	; Call 56 printf 28
	mov qword [rbp + 56], strtoul_test$179
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$179:
	; PostCall 56

 strtoul_test$180:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$181:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$182:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$183:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$184:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$185:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$186:
	; Assign text[5] integral1$120#
	mov byte [rbp + 33], 120

 strtoul_test$187:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$188:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$189:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$190:
	; Assign text[9] integral1$65#
	mov byte [rbp + 37], 65

 strtoul_test$191:
	; Assign text[10] integral1$66#
	mov byte [rbp + 38], 66

 strtoul_test$192:
	; Assign text[11] integral1$67#
	mov byte [rbp + 39], 67

 strtoul_test$193:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$194:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$195:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$196:
	; Address £temporary2718 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$197:
	; Parameter 81 pointer £temporary2718
	mov [rbp + 81], rsi

 strtoul_test$198:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$199:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$200
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$200:
	; PostCall 49

 strtoul_test$201:
	; GetReturnValue £temporary2719

 strtoul_test$202:
	; Assign value £temporary2719
	mov [rbp + 49], rbx

 strtoul_test$203:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$204:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5809string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$205:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$206:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$207:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$208:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$209:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$210
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$210:
	; PostCall 57

 strtoul_test$211:
	; Assign base integral4$0#
	mov dword [rbp + 24], 0

 strtoul_test$212:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$213:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$214:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$215:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$216:
	; Assign text[4] integral1$48#
	mov byte [rbp + 32], 48

 strtoul_test$217:
	; Assign text[5] integral1$88#
	mov byte [rbp + 33], 88

 strtoul_test$218:
	; Assign text[6] integral1$49#
	mov byte [rbp + 34], 49

 strtoul_test$219:
	; Assign text[7] integral1$50#
	mov byte [rbp + 35], 50

 strtoul_test$220:
	; Assign text[8] integral1$51#
	mov byte [rbp + 36], 51

 strtoul_test$221:
	; Assign text[9] integral1$97#
	mov byte [rbp + 37], 97

 strtoul_test$222:
	; Assign text[10] integral1$98#
	mov byte [rbp + 38], 98

 strtoul_test$223:
	; Assign text[11] integral1$99#
	mov byte [rbp + 39], 99

 strtoul_test$224:
	; Assign text[12] integral1$0#
	mov byte [rbp + 40], 0

 strtoul_test$225:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$226:
	; Parameter 73 array text
	mov [rbp + 73], rbp
	add qword [rbp + 73], 28

 strtoul_test$227:
	; Address £temporary2734 pointer
	mov rsi, rbp
	add rsi, 41

 strtoul_test$228:
	; Parameter 81 pointer £temporary2734
	mov [rbp + 81], rsi

 strtoul_test$229:
	; Parameter 89 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 89], eax

 strtoul_test$230:
	; Call 49 strtoul 0
	mov qword [rbp + 49], strtoul_test$231
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strtoul

 strtoul_test$231:
	; PostCall 49

 strtoul_test$232:
	; GetReturnValue £temporary2735

 strtoul_test$233:
	; Assign value £temporary2735
	mov [rbp + 49], rbx

 strtoul_test$234:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$235:
	; Parameter 81 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 81], @5829string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$236:
	; Parameter 89 array text
	mov [rbp + 89], rbp
	add qword [rbp + 89], 28

 strtoul_test$237:
	; Parameter 97 signed long int value
	mov rax, [rbp + 49]
	mov [rbp + 97], rax

 strtoul_test$238:
	; Parameter 105 pointer pointer
	mov rax, [rbp + 41]
	mov [rbp + 105], rax

 strtoul_test$239:
	; Parameter 113 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 113], eax

 strtoul_test$240:
	; Call 57 printf 28
	mov qword [rbp + 57], strtoul_test$241
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$241:
	; PostCall 57

 strtoul_test$242:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtoul_test$243:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$244:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$245:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$246:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$247:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$248:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$249:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$250:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$251:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$252:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$253:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$254:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$255:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$256:
	; Address £temporary2748 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$257:
	; Parameter 79 pointer £temporary2748
	mov [rbp + 79], rsi

 strtoul_test$258:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$259:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$260
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$260:
	; PostCall 47

 strtoul_test$261:
	; GetReturnValue £temporary2749

 strtoul_test$262:
	; Assign value £temporary2749
	mov [rbp + 47], rbx

 strtoul_test$263:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$264:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5847string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$265:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$266:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$267:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$268:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$269:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$270
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$270:
	; PostCall 55

 strtoul_test$271:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtoul_test$272:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$273:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$274:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$275:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$276:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$277:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$278:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$279:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$280:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$281:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$282:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$283:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$284:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$285:
	; Address £temporary2762 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$286:
	; Parameter 79 pointer £temporary2762
	mov [rbp + 79], rsi

 strtoul_test$287:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$288:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$289
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$289:
	; PostCall 47

 strtoul_test$290:
	; GetReturnValue £temporary2763

 strtoul_test$291:
	; Assign value £temporary2763
	mov [rbp + 47], rbx

 strtoul_test$292:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$293:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5865string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$294:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$295:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$296:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$297:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$298:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$299
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$299:
	; PostCall 55

 strtoul_test$300:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtoul_test$301:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$302:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$303:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$304:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$305:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$306:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$307:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$308:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$309:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$310:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$311:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$312:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$313:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$314:
	; Address £temporary2776 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$315:
	; Parameter 79 pointer £temporary2776
	mov [rbp + 79], rsi

 strtoul_test$316:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$317:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$318
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$318:
	; PostCall 47

 strtoul_test$319:
	; GetReturnValue £temporary2777

 strtoul_test$320:
	; Assign value £temporary2777
	mov [rbp + 47], rbx

 strtoul_test$321:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$322:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5883string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$323:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$324:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$325:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$326:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$327:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$328
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$328:
	; PostCall 55

 strtoul_test$329:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtoul_test$330:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$331:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$332:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$333:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$334:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$335:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$336:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$337:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtoul_test$338:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtoul_test$339:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtoul_test$340:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$341:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$342:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$343:
	; Address £temporary2790 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$344:
	; Parameter 79 pointer £temporary2790
	mov [rbp + 79], rsi

 strtoul_test$345:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$346:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$347
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$347:
	; PostCall 47

 strtoul_test$348:
	; GetReturnValue £temporary2791

 strtoul_test$349:
	; Assign value £temporary2791
	mov [rbp + 47], rbx

 strtoul_test$350:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$351:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5901string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$352:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$353:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$354:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$355:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$356:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$357
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$357:
	; PostCall 55

 strtoul_test$358:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtoul_test$359:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$360:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$361:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$362:
	; Assign text[3] integral1$43#
	mov byte [rbp + 31], 43

 strtoul_test$363:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$364:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$365:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$366:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$367:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$368:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$369:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$370:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$371:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$372:
	; Address £temporary2804 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$373:
	; Parameter 79 pointer £temporary2804
	mov [rbp + 79], rsi

 strtoul_test$374:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$375:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$376
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$376:
	; PostCall 47

 strtoul_test$377:
	; GetReturnValue £temporary2805

 strtoul_test$378:
	; Assign value £temporary2805
	mov [rbp + 47], rbx

 strtoul_test$379:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$380:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5919string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$381:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$382:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$383:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$384:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$385:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$386
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$386:
	; PostCall 55

 strtoul_test$387:
	; Assign base integral4$9#
	mov dword [rbp + 24], 9

 strtoul_test$388:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$389:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$390:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$391:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$392:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$393:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$394:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$395:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$396:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$397:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$398:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$399:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$400:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$401:
	; Address £temporary2818 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$402:
	; Parameter 79 pointer £temporary2818
	mov [rbp + 79], rsi

 strtoul_test$403:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$404:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$405
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$405:
	; PostCall 47

 strtoul_test$406:
	; GetReturnValue £temporary2819

 strtoul_test$407:
	; Assign value £temporary2819
	mov [rbp + 47], rbx

 strtoul_test$408:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$409:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5937string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$410:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$411:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$412:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$413:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$414:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$415
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$415:
	; PostCall 55

 strtoul_test$416:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 strtoul_test$417:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$418:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$419:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$420:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$421:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$422:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$423:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$424:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$425:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$426:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$427:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$428:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$429:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$430:
	; Address £temporary2832 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$431:
	; Parameter 79 pointer £temporary2832
	mov [rbp + 79], rsi

 strtoul_test$432:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$433:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$434
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$434:
	; PostCall 47

 strtoul_test$435:
	; GetReturnValue £temporary2833

 strtoul_test$436:
	; Assign value £temporary2833
	mov [rbp + 47], rbx

 strtoul_test$437:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$438:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5955string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$439:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$440:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$441:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$442:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$443:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$444
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$444:
	; PostCall 55

 strtoul_test$445:
	; Assign base integral4$11#
	mov dword [rbp + 24], 11

 strtoul_test$446:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$447:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$448:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$449:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$450:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$451:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$452:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$453:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$454:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$455:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$456:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$457:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$458:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$459:
	; Address £temporary2846 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$460:
	; Parameter 79 pointer £temporary2846
	mov [rbp + 79], rsi

 strtoul_test$461:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$462:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$463
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$463:
	; PostCall 47

 strtoul_test$464:
	; GetReturnValue £temporary2847

 strtoul_test$465:
	; Assign value £temporary2847
	mov [rbp + 47], rbx

 strtoul_test$466:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$467:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5973string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$468:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$469:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$470:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$471:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$472:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$473
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$473:
	; PostCall 55

 strtoul_test$474:
	; Assign base integral4$12#
	mov dword [rbp + 24], 12

 strtoul_test$475:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$476:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$477:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$478:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$479:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$480:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$481:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$482:
	; Assign text[7] integral1$65#
	mov byte [rbp + 35], 65

 strtoul_test$483:
	; Assign text[8] integral1$66#
	mov byte [rbp + 36], 66

 strtoul_test$484:
	; Assign text[9] integral1$67#
	mov byte [rbp + 37], 67

 strtoul_test$485:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$486:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$487:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$488:
	; Address £temporary2860 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$489:
	; Parameter 79 pointer £temporary2860
	mov [rbp + 79], rsi

 strtoul_test$490:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$491:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$492
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$492:
	; PostCall 47

 strtoul_test$493:
	; GetReturnValue £temporary2861

 strtoul_test$494:
	; Assign value £temporary2861
	mov [rbp + 47], rbx

 strtoul_test$495:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$496:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @5991string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$497:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$498:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$499:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$500:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$501:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$502
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$502:
	; PostCall 55

 strtoul_test$503:
	; Assign base integral4$13#
	mov dword [rbp + 24], 13

 strtoul_test$504:
	; Assign text[0] integral1$32#
	mov byte [rbp + 28], 32

 strtoul_test$505:
	; Assign text[1] integral1$32#
	mov byte [rbp + 29], 32

 strtoul_test$506:
	; Assign text[2] integral1$32#
	mov byte [rbp + 30], 32

 strtoul_test$507:
	; Assign text[3] integral1$45#
	mov byte [rbp + 31], 45

 strtoul_test$508:
	; Assign text[4] integral1$49#
	mov byte [rbp + 32], 49

 strtoul_test$509:
	; Assign text[5] integral1$50#
	mov byte [rbp + 33], 50

 strtoul_test$510:
	; Assign text[6] integral1$51#
	mov byte [rbp + 34], 51

 strtoul_test$511:
	; Assign text[7] integral1$97#
	mov byte [rbp + 35], 97

 strtoul_test$512:
	; Assign text[8] integral1$98#
	mov byte [rbp + 36], 98

 strtoul_test$513:
	; Assign text[9] integral1$99#
	mov byte [rbp + 37], 99

 strtoul_test$514:
	; Assign text[10] integral1$0#
	mov byte [rbp + 38], 0

 strtoul_test$515:
	; PreCall 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$516:
	; Parameter 71 array text
	mov [rbp + 71], rbp
	add qword [rbp + 71], 28

 strtoul_test$517:
	; Address £temporary2874 pointer
	mov rsi, rbp
	add rsi, 39

 strtoul_test$518:
	; Parameter 79 pointer £temporary2874
	mov [rbp + 79], rsi

 strtoul_test$519:
	; Parameter 87 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 87], eax

 strtoul_test$520:
	; Call 47 strtoul 0
	mov qword [rbp + 47], strtoul_test$521
	mov [rbp + 55], rbp
	add rbp, 47
	jmp strtoul

 strtoul_test$521:
	; PostCall 47

 strtoul_test$522:
	; GetReturnValue £temporary2875

 strtoul_test$523:
	; Assign value £temporary2875
	mov [rbp + 47], rbx

 strtoul_test$524:
	; PreCall 55 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtoul_test$525:
	; Parameter 79 string string_3C25s3E203C25li3E203C25s3E203C25i3E0A#
	mov qword [rbp + 79], @6009string_3C25s3E203C25li3E203C25s3E203C25i3E0A#

 strtoul_test$526:
	; Parameter 87 array text
	mov [rbp + 87], rbp
	add qword [rbp + 87], 28

 strtoul_test$527:
	; Parameter 95 signed long int value
	mov rax, [rbp + 47]
	mov [rbp + 95], rax

 strtoul_test$528:
	; Parameter 103 pointer pointer
	mov rax, [rbp + 39]
	mov [rbp + 103], rax

 strtoul_test$529:
	; Parameter 111 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 111], eax

 strtoul_test$530:
	; Call 55 printf 28
	mov qword [rbp + 55], strtoul_test$531
	mov [rbp + 63], rbp
	add rbp, 55
	mov rdi, rbp
	add rdi, 28
	jmp printf

 strtoul_test$531:
	; PostCall 55

 strtoul_test$532:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtoul_test$533:
	; FunctionEnd strtoul_test

section .text

 abort:
	; AssignRegister rax integral8$60#
	mov rax, 60

 abort$1:
	; AssignRegister rdi integral8$18446744073709551615#
	mov rdi, 18446744073709551615

 abort$2:
	; SysCall
	syscall

 abort$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 abort$4:
	; FunctionEnd abort

section .text

 getenv:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getenv$1:
	; FunctionEnd getenv

section .text

 system:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 system$1:
	; FunctionEnd system

section .data

@6192integral4$2#:
	; Initializer SignedInt 2
	dd 2

section .text

 bsearch:
	; Assign firstIndex integral4$0#
	mov dword [rbp + 56], 0

 bsearch$1:
	; Subtract lastIndex listSize integral4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 bsearch$2:
	; NotEqual 4 listSize integral4$0#
	cmp dword [rbp + 40], 0
	jne bsearch$4

 bsearch$3:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$4:
	; IntegralToIntegral £temporary2901 valueList
	mov rbx, [rbp + 32]

 bsearch$5:
	; Multiply £temporary2903 firstIndex valueSize
	mov eax, [rbp + 56]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$6:
	; IntegralToIntegral £temporary2904 £temporary2903
	mov rcx, 4294967295
	and rax, rcx

 bsearch$7:
	; Add firstValuePtr £temporary2901 £temporary2904
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$8:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$9:
	; Parameter 96 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$10:
	; Parameter 104 pointer firstValuePtr
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$11:
	; Call 72 compare 0
	mov qword [rbp + 72], bsearch$12
	mov [rbp + 80], rbp
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$12:
	; PostCall 72

 bsearch$13:
	; GetReturnValue £temporary2906

 bsearch$14:
	; Assign firstCompare £temporary2906
	mov [rbp + 72], ebx

 bsearch$15:
	; GreaterThanEqual 17 firstCompare integral4$0#
	cmp dword [rbp + 72], 0
	jge bsearch$17

 bsearch$16:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$17:
	; NotEqual 19 firstCompare integral4$0#
	cmp dword [rbp + 72], 0
	jne bsearch$19

 bsearch$18:
	; Return firstValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$19:
	; IntegralToIntegral £temporary2913 valueList
	mov rbx, [rbp + 32]

 bsearch$20:
	; Multiply £temporary2915 lastIndex valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$21:
	; IntegralToIntegral £temporary2916 £temporary2915
	mov rcx, 4294967295
	and rax, rcx

 bsearch$22:
	; Add lastValuePtr £temporary2913 £temporary2916
	add rbx, rax
	mov [rbp + 64], rbx

 bsearch$23:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$24:
	; Parameter 96 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 96], rax

 bsearch$25:
	; Parameter 104 pointer lastValuePtr
	mov rax, [rbp + 64]
	mov [rbp + 104], rax

 bsearch$26:
	; Call 72 compare 0
	mov qword [rbp + 72], bsearch$27
	mov [rbp + 80], rbp
	mov rax, [rbp + 48]
	add rbp, 72
	jmp rax

 bsearch$27:
	; PostCall 72

 bsearch$28:
	; GetReturnValue £temporary2918

 bsearch$29:
	; Assign lastCompare £temporary2918
	mov [rbp + 72], ebx

 bsearch$30:
	; LessThanEqual 32 lastCompare integral4$0#
	cmp dword [rbp + 72], 0
	jle bsearch$32

 bsearch$31:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$32:
	; NotEqual 34 lastCompare integral4$0#
	cmp dword [rbp + 72], 0
	jne bsearch$34

 bsearch$33:
	; Return lastValuePtr
	mov rbx, [rbp + 64]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$34:
	; Add £temporary2925 firstIndex lastIndex
	mov eax, [rbp + 56]
	add eax, [rbp + 60]

 bsearch$35:
	; Divide middleIndex £temporary2925 integral4$2#
	xor edx, edx
	idiv dword [@6192integral4$2#]
	mov [rbp + 64], eax

 bsearch$36:
	; IntegralToIntegral £temporary2927 valueList
	mov rbx, [rbp + 32]

 bsearch$37:
	; Multiply £temporary2929 middleIndex valueSize
	mov eax, [rbp + 64]
	xor edx, edx
	imul dword [rbp + 44]

 bsearch$38:
	; IntegralToIntegral £temporary2930 £temporary2929
	mov rcx, 4294967295
	and rax, rcx

 bsearch$39:
	; Add middleValuePtr £temporary2927 £temporary2930
	add rbx, rax
	mov [rbp + 68], rbx

 bsearch$40:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 bsearch$41:
	; Parameter 100 pointer keyPtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 bsearch$42:
	; Parameter 108 pointer middleValuePtr
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 bsearch$43:
	; Call 76 compare 0
	mov qword [rbp + 76], bsearch$44
	mov [rbp + 84], rbp
	mov rax, [rbp + 48]
	add rbp, 76
	jmp rax

 bsearch$44:
	; PostCall 76

 bsearch$45:
	; GetReturnValue £temporary2932

 bsearch$46:
	; Assign middleCompare £temporary2932
	mov [rbp + 76], ebx

 bsearch$47:
	; GreaterThanEqual 50 middleCompare integral4$0#
	cmp dword [rbp + 76], 0
	jge bsearch$50

 bsearch$48:
	; Assign lastIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 60], eax

 bsearch$49:
	; Jump 4
	jmp bsearch$4

 bsearch$50:
	; LessThanEqual 53 middleCompare integral4$0#
	cmp dword [rbp + 76], 0
	jle bsearch$53

 bsearch$51:
	; Assign firstIndex middleIndex
	mov eax, [rbp + 64]
	mov [rbp + 56], eax

 bsearch$52:
	; Jump 4
	jmp bsearch$4

 bsearch$53:
	; Return middleValuePtr
	mov rbx, [rbp + 68]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 bsearch$54:
	; FunctionEnd bsearch

section .data

@6205$g_randValue:
	; InitializerZero 8
	times 8 db 0

section .data

@6207integral8$1664525#:
	; Initializer SignedLongInt 1664525
	dq 1664525

section .data

@6210integral8$127#:
	; Initializer SignedLongInt 127
	dq 127

section .text

 rand:
	; Multiply £temporary2940 g_randValue integral8$1664525#
	mov rax, [@6205$g_randValue]
	xor rdx, rdx
	imul qword [@6207integral8$1664525#]

 rand$1:
	; Add £temporary2941 £temporary2940 integral8$1013904223#
	add rax, 1013904223

 rand$2:
	; Modulo g_randValue £temporary2941 integral8$127#
	xor rdx, rdx
	idiv qword [@6210integral8$127#]
	mov [@6205$g_randValue], rdx

 rand$3:
	; IntegralToIntegral £temporary2943 g_randValue
	mov rbx, [@6205$g_randValue]
	cmp rbx, 0
	jge rand$4
	neg rbx
	neg ebx

 rand$4:
	; Return £temporary2943
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rand$5:
	; FunctionEnd rand

section .text

 srand:
	; IntegralToIntegral £temporary2944 seed
	mov eax, [rbp + 24]
	mov rbx, 4294967295
	and rax, rbx

 srand$1:
	; Assign g_randValue £temporary2944
	mov [@6205$g_randValue], rax

 srand$2:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 srand$3:
	; FunctionEnd srand

section .data

g_funcArray:
	; Initializer Pointer 0
	dq 0
	; InitializerZero 2040
	times 2040 db 0

section .data

@6221integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6224integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 atexit:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 atexit$1:
	; GreaterThanEqual 15 index integral4$256#
	cmp dword [rbp + 32], 256
	jge atexit$15

 atexit$2:
	; Multiply £temporary2948 index integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@6221integral4$8#]

 atexit$3:
	; IntegralToIntegral £temporary2949 £temporary2948
	mov rbx, 4294967295
	and rax, rbx

 atexit$4:
	; Add £temporary2950 g_funcArray £temporary2949
	mov rsi, g_funcArray
	add rsi, rax

 atexit$5:
	; Dereference £temporary2951 £temporary2950 0

 atexit$6:
	; NotEqual 13 £temporary2951 integral8$0#
	cmp qword [rsi], 0
	jne atexit$13

 atexit$7:
	; Multiply £temporary2953 index integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@6224integral4$8#]

 atexit$8:
	; IntegralToIntegral £temporary2954 £temporary2953
	mov rbx, 4294967295
	and rax, rbx

 atexit$9:
	; Add £temporary2955 g_funcArray £temporary2954
	mov rsi, g_funcArray
	add rsi, rax

 atexit$10:
	; Dereference £temporary2956 £temporary2955 0

 atexit$11:
	; Assign £temporary2956 fcn
	mov rax, [rbp + 24]
	mov [rsi], rax

 atexit$12:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$13:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 atexit$14:
	; Jump 1
	jmp atexit$1

 atexit$15:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atexit$16:
	; FunctionEnd atexit

section .data

@6234integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@6237integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 exit:
	; Assign index integral4$255#
	mov dword [rbp + 28], 255

 exit$1:
	; LessThan 16 index integral4$0#
	cmp dword [rbp + 28], 0
	jl exit$16

 exit$2:
	; Multiply £temporary2961 index integral4$8#
	mov eax, [rbp + 28]
	xor edx, edx
	imul dword [@6234integral4$8#]

 exit$3:
	; IntegralToIntegral £temporary2962 £temporary2961
	mov rbx, 4294967295
	and rax, rbx

 exit$4:
	; Add £temporary2963 g_funcArray £temporary2962
	mov rsi, g_funcArray
	add rsi, rax

 exit$5:
	; Dereference £temporary2964 £temporary2963 0

 exit$6:
	; Equal 14 £temporary2964 integral8$0#
	cmp qword [rsi], 0
	je exit$14

 exit$7:
	; Multiply £temporary2966 index integral4$8#
	mov eax, [rbp + 28]
	xor edx, edx
	imul dword [@6237integral4$8#]

 exit$8:
	; IntegralToIntegral £temporary2967 £temporary2966
	mov rbx, 4294967295
	and rax, rbx

 exit$9:
	; Add £temporary2968 g_funcArray £temporary2967
	mov rbx, g_funcArray
	add rbx, rax

 exit$10:
	; Dereference £temporary2969 £temporary2968 0

 exit$11:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 32], rbx

 exit$12:
	; Call 32 £temporary2969 0
	mov qword [rbp + 2080], exit$13
	mov [rbp + 2088], rbp
	mov rsi, rbp
	mov rax, [rsi]
	add rbp, 2080
	jmp rax

 exit$13:
	; PostCall 32
	mov rbx, [rbp + 32]

 exit$14:
	; Subtract index index integral4$1#
	dec dword [rbp + 28]

 exit$15:
	; Jump 1
	jmp exit$1

 exit$16:
	; AssignRegister rax integral8$60#
	mov rax, 60

 exit$17:
	; IntegralToIntegral £temporary2975 status
	mov edi, [rbp + 24]
	mov rbx, 4294967295
	and rdi, rbx

 exit$18:
	; AssignRegister rdi £temporary2975

 exit$19:
	; SysCall
	syscall

 exit$20:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit$21:
	; FunctionEnd exit

section .text

 @6242$memswap:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 @6242$memswap$1:
	; GreaterThanEqual 19 index valueSize
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge @6242$memswap$19

 @6242$memswap$2:
	; IntegralToIntegral £temporary2979 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6242$memswap$3:
	; Add £temporary2980 value1 £temporary2979
	mov rsi, [rbp + 24]
	add rsi, rax

 @6242$memswap$4:
	; Dereference £temporary2981 £temporary2980 0

 @6242$memswap$5:
	; Assign tempValue £temporary2981
	mov al, [rsi]
	mov [rbp + 48], al

 @6242$memswap$6:
	; IntegralToIntegral £temporary2983 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6242$memswap$7:
	; Add £temporary2984 value1 £temporary2983
	mov rsi, [rbp + 24]
	add rsi, rax

 @6242$memswap$8:
	; Dereference £temporary2985 £temporary2984 0

 @6242$memswap$9:
	; IntegralToIntegral £temporary2987 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6242$memswap$10:
	; Add £temporary2988 value2 £temporary2987
	mov rdi, [rbp + 32]
	add rdi, rax

 @6242$memswap$11:
	; Dereference £temporary2989 £temporary2988 0

 @6242$memswap$12:
	; Assign £temporary2985 £temporary2989
	mov al, [rdi]
	mov [rsi], al

 @6242$memswap$13:
	; IntegralToIntegral £temporary2991 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 @6242$memswap$14:
	; Add £temporary2992 value2 £temporary2991
	mov rsi, [rbp + 32]
	add rsi, rax

 @6242$memswap$15:
	; Dereference £temporary2993 £temporary2992 0

 @6242$memswap$16:
	; Assign £temporary2993 tempValue
	mov al, [rbp + 48]
	mov [rsi], al

 @6242$memswap$17:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 @6242$memswap$18:
	; Jump 1
	jmp @6242$memswap$1

 @6242$memswap$19:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @6242$memswap$20:
	; FunctionEnd memswap

section .text

 qsort:
	; IntegralToIntegral £temporary2994 valueList
	mov rax, [rbp + 24]

 qsort$1:
	; Assign charList £temporary2994
	mov [rbp + 48], rax

 qsort$2:
	; Subtract size listSize integral4$1#
	mov eax, [rbp + 32]
	dec eax
	mov [rbp + 56], eax

 qsort$3:
	; LessThanEqual 33 size integral4$0#
	cmp dword [rbp + 56], 0
	jle qsort$33

 qsort$4:
	; Assign update integral4$0#
	mov dword [rbp + 64], 0

 qsort$5:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 qsort$6:
	; GreaterThanEqual 30 index size
	mov eax, [rbp + 56]
	cmp [rbp + 60], eax
	jge qsort$30

 qsort$7:
	; Multiply £temporary3001 index valueSize
	mov eax, [rbp + 60]
	xor edx, edx
	imul dword [rbp + 36]

 qsort$8:
	; IntegralToIntegral £temporary3002 £temporary3001
	mov rbx, 4294967295
	and rax, rbx

 qsort$9:
	; Add valuePtr1 charList £temporary3002
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 68], rbx

 qsort$10:
	; Add £temporary3004 index integral4$1#
	mov eax, [rbp + 60]
	inc eax

 qsort$11:
	; Multiply £temporary3006 £temporary3004 valueSize
	xor edx, edx
	imul dword [rbp + 36]

 qsort$12:
	; IntegralToIntegral £temporary3007 £temporary3006
	mov rbx, 4294967295
	and rax, rbx

 qsort$13:
	; Add valuePtr2 charList £temporary3007
	mov rbx, [rbp + 48]
	add rbx, rax
	mov [rbp + 76], rbx

 qsort$14:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$15:
	; Parameter 108 pointer valuePtr1
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$16:
	; Parameter 116 pointer valuePtr2
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$17:
	; Call 84 compare 0
	mov qword [rbp + 84], qsort$18
	mov [rbp + 92], rbp
	mov rax, [rbp + 40]
	add rbp, 84
	jmp rax

 qsort$18:
	; PostCall 84

 qsort$19:
	; GetReturnValue £temporary3009

 qsort$20:
	; LessThanEqual 28 £temporary3009 integral4$0#
	cmp ebx, 0
	jle qsort$28

 qsort$21:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qsort$22:
	; Parameter 108 pointer valuePtr1
	mov rax, [rbp + 68]
	mov [rbp + 108], rax

 qsort$23:
	; Parameter 116 pointer valuePtr2
	mov rax, [rbp + 76]
	mov [rbp + 116], rax

 qsort$24:
	; Parameter 124 signed int valueSize
	mov eax, [rbp + 36]
	mov [rbp + 124], eax

 qsort$25:
	; Call 84 memswap 0
	mov qword [rbp + 84], qsort$26
	mov [rbp + 92], rbp
	add rbp, 84
	jmp @6242$memswap

 qsort$26:
	; PostCall 84

 qsort$27:
	; Assign update integral4$1#
	mov dword [rbp + 64], 1

 qsort$28:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 qsort$29:
	; Jump 6
	jmp qsort$6

 qsort$30:
	; Equal 33 update integral4$0#
	cmp dword [rbp + 64], 0
	je qsort$33

 qsort$31:
	; Subtract size size integral4$1#
	dec dword [rbp + 56]

 qsort$32:
	; Jump 3
	jmp qsort$3

 qsort$33:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qsort$34:
	; FunctionEnd qsort

section .text

 @abs:
	; GreaterThanEqual 3 value integral4$0#
	cmp dword [rbp + 24], 0
	jge @abs$3

 @abs$1:
	; Minus £temporary3020 value
	mov ebx, [rbp + 24]
	neg ebx

 @abs$2:
	; Jump 4
	jmp @abs$4

 @abs$3:
	; Assign £temporary3020 value
	mov ebx, [rbp + 24]

 @abs$4:
	; Return £temporary3020
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @abs$5:
	; FunctionEnd @abs

section .text

 labs:
	; GreaterThanEqual 3 value integral8$0#
	cmp qword [rbp + 24], 0
	jge labs$3

 labs$1:
	; Minus £temporary3023 value
	mov rbx, [rbp + 24]
	neg rbx

 labs$2:
	; Jump 4
	jmp labs$4

 labs$3:
	; Assign £temporary3023 value
	mov rbx, [rbp + 24]

 labs$4:
	; Return £temporary3023
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 labs$5:
	; FunctionEnd labs

section .text

 div:
	; Assign result.quot integral4$0#
	mov dword [rbp + 32], 0

 div$1:
	; Assign result.rem integral4$0#
	mov dword [rbp + 36], 0

 div$2:
	; NotEqual 5 denum integral4$0#
	cmp dword [rbp + 28], 0
	jne div$5

 div$3:
	; Assign errno EDOM
	mov dword [errno], 6

 div$4:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$5:
	; Divide result.quot num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 32], eax

 div$6:
	; Modulo result.rem num denum
	mov eax, [rbp + 24]
	xor edx, edx
	idiv dword [rbp + 28]
	mov [rbp + 36], edx

 div$7:
	; Return result
	mov rbx, rbp
	add rbx, 32
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 div$8:
	; FunctionEnd div

section .text

 ldiv:
	; Assign result.quot integral8$0#
	mov qword [rbp + 40], 0

 ldiv$1:
	; Assign result.rem integral8$0#
	mov qword [rbp + 48], 0

 ldiv$2:
	; NotEqual 5 denum integral8$0#
	cmp qword [rbp + 32], 0
	jne ldiv$5

 ldiv$3:
	; Assign errno EDOM
	mov dword [errno], 6

 ldiv$4:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$5:
	; Divide result.quot num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 40], rax

 ldiv$6:
	; Modulo result.rem num denum
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [rbp + 32]
	mov [rbp + 48], rdx

 ldiv$7:
	; Return result
	mov rbx, rbp
	add rbx, 40
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldiv$8:
	; FunctionEnd ldiv
