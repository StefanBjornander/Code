	global g_fileArray
	global stdin
	global stdout
	global stderr
	global filecreate
	global fileexistsX
	global fileexists
	global fopen
	global freopen
	global fflush
	global fclose
	global remove
	global rename
	global setvbuf
	global setbuf
	global fgetc
	global fgets
	global fputs
	global getchar
	global gets
	global puts
	global ungetc
	global fread
	global fwrite
	global fseek
	global ftell
	global rewind
	global fgetpos
	global fsetpos
	global clearerr
	global feof
	global ferror
	global perror

	extern printf
	extern strcmp
	extern strcpy
	extern errno
	extern fscanf
	extern strlen
	extern fputc
	extern strerror
	extern $StackTop


section .data

g_fileArray:
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 0
	dd 0
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 1
	dd 1
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 2
	dd 2
	; InitializerZero 33
	times 33 db 0
	; InitializerZero 697
	times 697 db 0

section .data

stdin:
	; Initializer Pointer g_fileArray
	dq g_fileArray

section .data

stdout:
	; Initializer Pointer g_fileArray + 41
	dq g_fileArray + 41

section .data

stderr:
	; Initializer Pointer g_fileArray + 82
	dq g_fileArray + 82

section .data

@2271$EEXIST:
	; Initializer SignedInt 0
	dd 0

section .data

@2272$ENOENT:
	; Initializer SignedInt 1
	dd 1

section .data

@2273$EACCES:
	; Initializer SignedInt 2
	dd 2

section .data

@2274$SEEK_SET:
	; Initializer SignedInt 0
	dd 0

section .data

@2275$SEEK_CUR:
	; Initializer SignedInt 1
	dd 1

section .data

@2276$SEEK_END:
	; Initializer SignedInt 2
	dd 2

section .data

@2277$READ:
	; Initializer SignedInt 0
	dd 0

section .data

@2278$WRITE:
	; Initializer SignedInt 1
	dd 1

section .data

@2279$READ_WRITE:
	; Initializer SignedInt 3
	dd 3

section .text

 filecreate:
	; AssignRegister rax integral8$85#
	mov rax, 85

 filecreate$1:
	; IntegralToIntegral ┬útemporary598 name
	mov rdi, [rbp + 24]

 filecreate$2:
	; AssignRegister rdi ┬útemporary598

 filecreate$3:
	; AssignRegister rsi integral8$511#
	mov rsi, 511

 filecreate$4:
	; SysCall
	syscall

 filecreate$5:
	; InspectRegister ┬útemporary600 eax

 filecreate$6:
	; SetReturnValue

 filecreate$7:
	; Return ┬útemporary600
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 filecreate$8:
	; FunctionEnd filecreate

section .data

@2493string_r#:
	; Initializer String r
	db "r", 0

section .data

@2495string_0Afileexists2025s2025p0A#:
	; Initializer String \nfileexists %s %p\n
	db 10, "fileexists %s %p", 10, 0

section .text

 fileexistsX:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$1:
	; Parameter 56 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 fileexistsX$2:
	; Parameter 64 pointer string_r#
	mov qword [rbp + 64], @2493string_r#

 fileexistsX$3:
	; Call 32 fopen 0
	mov qword [rbp + 32], fileexistsX$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 fileexistsX$4:
	; PostCall 32

 fileexistsX$5:
	; GetReturnValue ┬útemporary601

 fileexistsX$6:
	; Assign filePtr ┬útemporary601
	mov [rbp + 32], rbx

 fileexistsX$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$8:
	; Parameter 64 pointer string_0Afileexists2025s2025p0A#
	mov qword [rbp + 64], @2495string_0Afileexists2025s2025p0A#

 fileexistsX$9:
	; Parameter 72 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fileexistsX$10:
	; Parameter 80 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 fileexistsX$11:
	; Call 40 printf 16
	mov qword [rbp + 40], fileexistsX$12
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 fileexistsX$12:
	; PostCall 40

 fileexistsX$13:
	; Equal 20 filePtr integral8$0#
	cmp qword [rbp + 32], 0
	je fileexistsX$20

 fileexistsX$14:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$15:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 fileexistsX$16:
	; Call 40 fclose 0
	mov qword [rbp + 40], fileexistsX$17
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 fileexistsX$17:
	; PostCall 40

 fileexistsX$18:
	; SetReturnValue

 fileexistsX$19:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$20:
	; SetReturnValue

 fileexistsX$21:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$22:
	; FunctionEnd fileexistsX

section .text

 fileexists:
	; AssignRegister rax integral8$21#
	mov rax, 21

 fileexists$1:
	; IntegralToIntegral ┬útemporary607 name
	mov rdi, [rbp + 24]

 fileexists$2:
	; AssignRegister rdi ┬útemporary607

 fileexists$3:
	; AssignRegister rsi integral8$0#
	mov rsi, 0

 fileexists$4:
	; SysCall
	syscall

 fileexists$5:
	; InspectRegister ┬útemporary609 eax

 fileexists$6:
	; NotEqual 9 ┬útemporary609 integral4$0#
	cmp eax, 0
	jne fileexists$9

 fileexists$7:
	; Assign ┬útemporary611 integral4$1#
	mov ebx, 1

 fileexists$8:
	; Jump 10
	jmp fileexists$10

 fileexists$9:
	; Assign ┬útemporary611 integral4$0#
	mov ebx, 0

 fileexists$10:
	; SetReturnValue

 fileexists$11:
	; Return ┬útemporary611
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$12:
	; FunctionEnd fileexists

section .text

 @2516$fileopen:
	; AssignRegister rax integral8$2#
	mov rax, 2

 @2516$fileopen$1:
	; IntegralToIntegral ┬útemporary614 name
	mov rdi, [rbp + 24]

 @2516$fileopen$2:
	; AssignRegister rdi ┬útemporary614

 @2516$fileopen$3:
	; IntegralToIntegral ┬útemporary616 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2516$fileopen$4:
	; AssignRegister rsi ┬útemporary616

 @2516$fileopen$5:
	; SysCall
	syscall

 @2516$fileopen$6:
	; InspectRegister ┬útemporary617 eax

 @2516$fileopen$7:
	; SetReturnValue

 @2516$fileopen$8:
	; Return ┬útemporary617
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2516$fileopen$9:
	; FunctionEnd fileopen

section .data

@2525integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2528integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fopen:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 fopen$1:
	; GreaterThanEqual 23 index integral4$20#
	cmp dword [rbp + 40], 20
	jge fopen$23

 fopen$2:
	; Multiply ┬útemporary620 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2525integral4$41#]

 fopen$3:
	; IntegralToIntegral ┬útemporary621 ┬útemporary620
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; Add ┬útemporary622 g_fileArray ┬útemporary621
	mov rsi, g_fileArray
	add rsi, rax

 fopen$5:
	; Dereference ┬útemporary623 ┬útemporary622 0

 fopen$6:
	; NotEqual 21 ┬útemporary623.open integral4$0#
	cmp dword [rsi], 0
	jne fopen$21

 fopen$7:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fopen$8:
	; Parameter 68 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fopen$9:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 fopen$10:
	; Multiply ┬útemporary626 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2528integral4$41#]

 fopen$11:
	; IntegralToIntegral ┬útemporary627 ┬útemporary626
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; Add ┬útemporary628 g_fileArray ┬útemporary627
	mov rsi, g_fileArray
	add rsi, rax

 fopen$13:
	; Dereference ┬útemporary629 ┬útemporary628 0

 fopen$14:
	; Address ┬útemporary630 ┬útemporary629

 fopen$15:
	; Parameter 84 pointer ┬útemporary630
	mov [rbp + 84], rsi

 fopen$16:
	; Call 44 freopen 0
	mov qword [rbp + 44], fopen$17
	mov [rbp + 52], rbp
	add rbp, 44
	jmp freopen

 fopen$17:
	; PostCall 44

 fopen$18:
	; GetReturnValue ┬útemporary631

 fopen$19:
	; SetReturnValue

 fopen$20:
	; Return ┬útemporary631
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$21:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 fopen$22:
	; Jump 1
	jmp fopen$1

 fopen$23:
	; SetReturnValue

 fopen$24:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$25:
	; FunctionEnd fopen

section .data

@2539string_r#:
	; Initializer String r
	db "r", 0

section .data

@2542string_w#:
	; Initializer String w
	db "w", 0

section .data

@2544string_a#:
	; Initializer String a
	db "a", 0

section .data

@2551string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@2553string_r2B10A#:
	; Initializer String r+1\n
	db "r+1", 10, 0

section .data

@2555string_r2B20A#:
	; Initializer String r+2\n
	db "r+2", 10, 0

section .data

@2556string_w2B#:
	; Initializer String w+
	db "w+", 0

section .data

@2560string_a2B#:
	; Initializer String a+
	db "a+", 0

section .text

 freopen:
	; Assign handle integral4$minus1#
	mov dword [rbp + 48], -1

 freopen$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$2:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; Parameter 84 pointer string_r#
	mov qword [rbp + 84], @2539string_r#

 freopen$4:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; PostCall 52

 freopen$6:
	; GetReturnValue ┬útemporary632

 freopen$7:
	; NotEqual 16 ┬útemporary632 integral4$0#
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$9:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; Parameter 84 unsigned short int integral2$0#
	mov word [rbp + 84], 0

 freopen$11:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$12:
	; PostCall 52

 freopen$13:
	; GetReturnValue ┬útemporary634

 freopen$14:
	; Assign handle ┬útemporary634
	mov [rbp + 48], ebx

 freopen$15:
	; Jump 138
	jmp freopen$138

 freopen$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$17:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; Parameter 84 pointer string_w#
	mov qword [rbp + 84], @2542string_w#

 freopen$19:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; PostCall 52

 freopen$21:
	; GetReturnValue ┬útemporary635

 freopen$22:
	; NotEqual 30 ┬útemporary635 integral4$0#
	cmp ebx, 0
	jne freopen$30

 freopen$23:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$24:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$25:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$26
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$26:
	; PostCall 52

 freopen$27:
	; GetReturnValue ┬útemporary637

 freopen$28:
	; Assign handle ┬útemporary637
	mov [rbp + 48], ebx

 freopen$29:
	; Jump 138
	jmp freopen$138

 freopen$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$31:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; Parameter 84 pointer string_a#
	mov qword [rbp + 84], @2544string_a#

 freopen$33:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; PostCall 52

 freopen$35:
	; GetReturnValue ┬útemporary638

 freopen$36:
	; NotEqual 59 ┬útemporary638 integral4$0#
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$38:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; Parameter 84 unsigned short int integral2$1#
	mov word [rbp + 84], 1

 freopen$40:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$41:
	; PostCall 52

 freopen$42:
	; GetReturnValue ┬útemporary640

 freopen$43:
	; Assign handle ┬útemporary640
	mov [rbp + 48], ebx

 freopen$44:
	; Equal 52 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$46:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 freopen$48:
	; Parameter 88 signed int integral4$2#
	mov dword [rbp + 88], 2

 freopen$49:
	; Call 52 fseek 0
	mov qword [rbp + 52], freopen$50
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$50:
	; PostCall 52

 freopen$51:
	; Jump 138
	jmp freopen$138

 freopen$52:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$53:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$54:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$55:
	; PostCall 52

 freopen$56:
	; GetReturnValue ┬útemporary643

 freopen$57:
	; Assign handle ┬útemporary643
	mov [rbp + 48], ebx

 freopen$58:
	; Jump 138
	jmp freopen$138

 freopen$59:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$60:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; Parameter 84 pointer string_r2B#
	mov qword [rbp + 84], @2551string_r2B#

 freopen$62:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; PostCall 52

 freopen$64:
	; GetReturnValue ┬útemporary644

 freopen$65:
	; NotEqual 82 ┬útemporary644 integral4$0#
	cmp ebx, 0
	jne freopen$82

 freopen$66:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; Parameter 76 pointer string_r2B10A#
	mov qword [rbp + 76], @2553string_r2B10A#

 freopen$68:
	; Call 52 printf 0
	mov qword [rbp + 52], freopen$69
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 freopen$69:
	; PostCall 52

 freopen$70:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$71:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$72:
	; Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$73:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$74
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$74:
	; PostCall 52

 freopen$75:
	; GetReturnValue ┬útemporary647

 freopen$76:
	; Assign handle ┬útemporary647
	mov [rbp + 48], ebx

 freopen$77:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$78:
	; Parameter 76 pointer string_r2B20A#
	mov qword [rbp + 76], @2555string_r2B20A#

 freopen$79:
	; Call 52 printf 0
	mov qword [rbp + 52], freopen$80
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 freopen$80:
	; PostCall 52

 freopen$81:
	; Jump 138
	jmp freopen$138

 freopen$82:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$83:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$84:
	; Parameter 84 pointer string_w2B#
	mov qword [rbp + 84], @2556string_w2B#

 freopen$85:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$86
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$86:
	; PostCall 52

 freopen$87:
	; GetReturnValue ┬útemporary649

 freopen$88:
	; NotEqual 110 ┬útemporary649 integral4$0#
	cmp ebx, 0
	jne freopen$110

 freopen$89:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$90:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$91:
	; Call 52 fileexists 0
	mov qword [rbp + 52], freopen$92
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$92:
	; PostCall 52

 freopen$93:
	; GetReturnValue ┬útemporary651

 freopen$94:
	; Equal 103 ┬útemporary651 integral4$0#
	cmp ebx, 0
	je freopen$103

 freopen$95:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$96:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$98:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$99
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$99:
	; PostCall 52

 freopen$100:
	; GetReturnValue ┬útemporary652

 freopen$101:
	; Assign handle ┬útemporary652
	mov [rbp + 48], ebx

 freopen$102:
	; Jump 138
	jmp freopen$138

 freopen$103:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$104:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$105:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$106:
	; PostCall 52

 freopen$107:
	; GetReturnValue ┬útemporary653

 freopen$108:
	; Assign handle ┬útemporary653
	mov [rbp + 48], ebx

 freopen$109:
	; Jump 138
	jmp freopen$138

 freopen$110:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$111:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$112:
	; Parameter 84 pointer string_a2B#
	mov qword [rbp + 84], @2560string_a2B#

 freopen$113:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$114
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$114:
	; PostCall 52

 freopen$115:
	; GetReturnValue ┬útemporary655

 freopen$116:
	; NotEqual 138 ┬útemporary655 integral4$0#
	cmp ebx, 0
	jne freopen$138

 freopen$117:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$118:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$119:
	; Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$120:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$121
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$121:
	; PostCall 52

 freopen$122:
	; GetReturnValue ┬útemporary657

 freopen$123:
	; Assign handle ┬útemporary657
	mov [rbp + 48], ebx

 freopen$124:
	; Equal 132 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$132

 freopen$125:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$126:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$127:
	; Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 freopen$128:
	; Parameter 88 signed int integral4$2#
	mov dword [rbp + 88], 2

 freopen$129:
	; Call 52 fseek 0
	mov qword [rbp + 52], freopen$130
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$130:
	; PostCall 52

 freopen$131:
	; Jump 138
	jmp freopen$138

 freopen$132:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$133:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$134:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$135
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$135:
	; PostCall 52

 freopen$136:
	; GetReturnValue ┬útemporary660

 freopen$137:
	; Assign handle ┬útemporary660
	mov [rbp + 48], ebx

 freopen$138:
	; Equal 155 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$155

 freopen$139:
	; Dereference ┬útemporary662 stream 0
	mov rsi, [rbp + 40]

 freopen$140:
	; Assign ┬útemporary662.open integral4$1#
	mov dword [rsi], 1

 freopen$141:
	; Dereference ┬útemporary663 stream 0
	mov rsi, [rbp + 40]

 freopen$142:
	; Assign ┬útemporary663.handle handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$143:
	; Dereference ┬útemporary664 stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; Assign ┬útemporary664.size integral4$0#
	mov dword [rsi + 33], 0

 freopen$145:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$146:
	; Dereference ┬útemporary665 stream 0
	mov rsi, [rbp + 40]

 freopen$147:
	; Parameter 76 pointer ┬útemporary665.name
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$148:
	; Parameter 84 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$149:
	; Call 52 strcpy 0
	mov qword [rbp + 52], freopen$150
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$150:
	; PostCall 52

 freopen$151:
	; Dereference ┬útemporary667 stream 0
	mov rsi, [rbp + 40]

 freopen$152:
	; Assign ┬útemporary667.temporary integral4$0#
	mov dword [rsi + 37], 0

 freopen$153:
	; SetReturnValue

 freopen$154:
	; Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$155:
	; Dereference ┬útemporary668 stream 0
	mov rsi, [rbp + 40]

 freopen$156:
	; Assign ┬útemporary668.open integral4$0#
	mov dword [rsi], 0

 freopen$157:
	; SetReturnValue

 freopen$158:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$159:
	; FunctionEnd freopen

section .data

@2625integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2627integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fflush:
	; NotEqual 23 stream integral8$0#
	cmp qword [rbp + 24], 0
	jne fflush$23

 fflush$1:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 fflush$2:
	; GreaterThanEqual 23 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fflush$23

 fflush$3:
	; Multiply ┬útemporary672 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2625integral4$41#]

 fflush$4:
	; IntegralToIntegral ┬útemporary673 ┬útemporary672
	mov rbx, 4294967295
	and rax, rbx

 fflush$5:
	; Add ┬útemporary674 g_fileArray ┬útemporary673
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; Dereference ┬útemporary675 ┬útemporary674 0

 fflush$7:
	; Equal 21 ┬útemporary675.open integral4$0#
	cmp dword [rsi], 0
	je fflush$21

 fflush$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; Multiply ┬útemporary676 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2627integral4$41#]

 fflush$10:
	; IntegralToIntegral ┬útemporary677 ┬útemporary676
	mov rbx, 4294967295
	and rax, rbx

 fflush$11:
	; Add ┬útemporary678 g_fileArray ┬útemporary677
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; Dereference ┬útemporary679 ┬útemporary678 0

 fflush$13:
	; Address ┬útemporary680 ┬útemporary679

 fflush$14:
	; Parameter 60 pointer ┬útemporary680
	mov [rbp + 60], rsi

 fflush$15:
	; Call 36 fflush 0
	mov qword [rbp + 36], fflush$16
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fflush

 fflush$16:
	; PostCall 36

 fflush$17:
	; GetReturnValue ┬útemporary681

 fflush$18:
	; NotEqual 21 ┬útemporary681 integral4$minus1#
	cmp ebx, -1
	jne fflush$21

 fflush$19:
	; SetReturnValue

 fflush$20:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$21:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 fflush$22:
	; Jump 2
	jmp fflush$2

 fflush$23:
	; SetReturnValue

 fflush$24:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$25:
	; FunctionEnd fflush

section .data

@2643integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2645integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fclose:
	; Equal 8 stream integral8$0#
	cmp qword [rbp + 24], 0
	je fclose$8

 fclose$1:
	; AssignRegister rax integral8$3#
	mov rax, 3

 fclose$2:
	; Dereference ┬útemporary687 stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; IntegralToIntegral ┬útemporary688 ┬útemporary687.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; AssignRegister rdi ┬útemporary688

 fclose$5:
	; SysCall
	syscall

 fclose$6:
	; SetReturnValue

 fclose$7:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$8:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 fclose$9:
	; GreaterThanEqual 30 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fclose$30

 fclose$10:
	; Multiply ┬útemporary691 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2643integral4$41#]

 fclose$11:
	; IntegralToIntegral ┬útemporary692 ┬útemporary691
	mov rbx, 4294967295
	and rax, rbx

 fclose$12:
	; Add ┬útemporary693 g_fileArray ┬útemporary692
	mov rsi, g_fileArray
	add rsi, rax

 fclose$13:
	; Dereference ┬útemporary694 ┬útemporary693 0

 fclose$14:
	; Equal 28 ┬útemporary694.open integral4$0#
	cmp dword [rsi], 0
	je fclose$28

 fclose$15:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$16:
	; Multiply ┬útemporary695 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2645integral4$41#]

 fclose$17:
	; IntegralToIntegral ┬útemporary696 ┬útemporary695
	mov rbx, 4294967295
	and rax, rbx

 fclose$18:
	; Add ┬útemporary697 g_fileArray ┬útemporary696
	mov rsi, g_fileArray
	add rsi, rax

 fclose$19:
	; Dereference ┬útemporary698 ┬útemporary697 0

 fclose$20:
	; Address ┬útemporary699 ┬útemporary698

 fclose$21:
	; Parameter 60 pointer ┬útemporary699
	mov [rbp + 60], rsi

 fclose$22:
	; Call 36 fclose 0
	mov qword [rbp + 36], fclose$23
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 fclose$23:
	; PostCall 36

 fclose$24:
	; GetReturnValue ┬útemporary700

 fclose$25:
	; NotEqual 28 ┬útemporary700 integral4$minus1#
	cmp ebx, -1
	jne fclose$28

 fclose$26:
	; SetReturnValue

 fclose$27:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$28:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 fclose$29:
	; Jump 9
	jmp fclose$9

 fclose$30:
	; SetReturnValue

 fclose$31:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$32:
	; FunctionEnd fclose

section .text

 remove:
	; AssignRegister rax integral8$88#
	mov rax, 88

 remove$1:
	; IntegralToIntegral ┬útemporary705 name
	mov rdi, [rbp + 24]

 remove$2:
	; AssignRegister rdi ┬útemporary705

 remove$3:
	; SysCall
	syscall

 remove$4:
	; InspectRegister ┬útemporary706 ebx

 remove$5:
	; NotEqual 8 ┬útemporary706 integral4$0#
	cmp ebx, 0
	jne remove$8

 remove$6:
	; SetReturnValue

 remove$7:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$8:
	; Assign errno FREMOVE
	mov dword [errno], 18

 remove$9:
	; SetReturnValue

 remove$10:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$11:
	; FunctionEnd remove

section .text

 rename:
	; AssignRegister rax integral8$82#
	mov rax, 82

 rename$1:
	; IntegralToIntegral ┬útemporary710 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; AssignRegister rdi ┬útemporary710

 rename$3:
	; IntegralToIntegral ┬útemporary712 newName
	mov rsi, [rbp + 32]

 rename$4:
	; AssignRegister rsi ┬útemporary712

 rename$5:
	; SysCall
	syscall

 rename$6:
	; InspectRegister ┬útemporary713 eax

 rename$7:
	; NotEqual 10 ┬útemporary713 integral4$0#
	cmp eax, 0
	jne rename$10

 rename$8:
	; SetReturnValue

 rename$9:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$10:
	; Assign errno FRENAME
	mov dword [errno], 19

 rename$11:
	; SetReturnValue

 rename$12:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$13:
	; FunctionEnd rename

section .text

 setvbuf:
	; SetReturnValue

 setvbuf$1:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setvbuf$2:
	; FunctionEnd setvbuf

section .text

 setbuf:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setbuf$1:
	; FunctionEnd setbuf

section .text

 fgetc:
	; Assign c integral1$0#
	mov byte [rbp + 32], 0

 fgetc$1:
	; PreCall 33 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgetc$2:
	; Address ┬útemporary715 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; Parameter 57 pointer ┬útemporary715
	mov [rbp + 57], rsi

 fgetc$4:
	; Parameter 65 signed int integral4$1#
	mov dword [rbp + 65], 1

 fgetc$5:
	; Parameter 69 signed int integral4$1#
	mov dword [rbp + 69], 1

 fgetc$6:
	; Parameter 73 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 fgetc$7:
	; Call 33 fread 0
	mov qword [rbp + 33], fgetc$8
	mov [rbp + 41], rbp
	add rbp, 33
	jmp fread

 fgetc$8:
	; PostCall 33

 fgetc$9:
	; GetReturnValue ┬útemporary716

 fgetc$10:
	; LessThanEqual 14 ┬útemporary716 integral4$0#
	cmp ebx, 0
	jle fgetc$14

 fgetc$11:
	; IntegralToIntegral ┬útemporary718 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; SetReturnValue

 fgetc$13:
	; Return ┬útemporary718
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; SetReturnValue

 fgetc$15:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$16:
	; FunctionEnd fgetc

section .data

@2690string_25c#:
	; Initializer String %c
	db "%c", 0

section .text

 fgets:
	; Assign count integral4$0#
	mov dword [rbp + 44], 0

 fgets$1:
	; Assign prevChar integral1$0#
	mov byte [rbp + 48], 0

 fgets$2:
	; Subtract ┬útemporary720 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; GreaterThanEqual 36 count ┬útemporary720
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; Assign currChar integral1$0#
	mov byte [rbp + 49], 0

 fgets$5:
	; PreCall 50 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgets$6:
	; Parameter 74 pointer stream
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; Parameter 82 pointer string_25c#
	mov qword [rbp + 82], @2690string_25c#

 fgets$8:
	; Address ┬útemporary722 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; Parameter 90 pointer ┬útemporary722
	mov [rbp + 90], rsi

 fgets$10:
	; Call 50 fscanf 8
	mov qword [rbp + 50], fgets$11
	mov [rbp + 58], rbp
	add rbp, 50
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 fgets$11:
	; PostCall 50

 fgets$12:
	; NotEqual 19 prevChar integral1$13#
	cmp byte [rbp + 48], 13
	jne fgets$19

 fgets$13:
	; NotEqual 19 currChar integral1$10#
	cmp byte [rbp + 49], 10
	jne fgets$19

 fgets$14:
	; IntegralToIntegral ┬útemporary727 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; Add ┬útemporary728 text ┬útemporary727
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; Dereference ┬útemporary729 ┬útemporary728 0

 fgets$17:
	; Assign ┬útemporary729 integral1$0#
	mov byte [rsi], 0

 fgets$18:
	; Jump 36
	jmp fgets$36

 fgets$19:
	; IntegralToIntegral ┬útemporary730 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; NotEqual 26 ┬útemporary730 integral4$minus1#
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; IntegralToIntegral ┬útemporary732 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; Add ┬útemporary733 text ┬útemporary732
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; Dereference ┬útemporary734 ┬útemporary733 0

 fgets$24:
	; Assign ┬útemporary734 integral1$0#
	mov byte [rsi], 0

 fgets$25:
	; Jump 36
	jmp fgets$36

 fgets$26:
	; Equal 34 currChar integral1$13#
	cmp byte [rbp + 49], 13
	je fgets$34

 fgets$27:
	; Equal 34 currChar integral1$10#
	cmp byte [rbp + 49], 10
	je fgets$34

 fgets$28:
	; Assign ┬útemporary739 count
	mov eax, [rbp + 44]

 fgets$29:
	; Add count count integral4$1#
	inc dword [rbp + 44]

 fgets$30:
	; IntegralToIntegral ┬útemporary741 ┬útemporary739
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; Add ┬útemporary742 text ┬útemporary741
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; Dereference ┬útemporary743 ┬útemporary742 0

 fgets$33:
	; Assign ┬útemporary743 currChar
	mov al, [rbp + 49]
	mov [rsi], al

 fgets$34:
	; Assign prevChar currChar
	mov al, [rbp + 49]
	mov [rbp + 48], al

 fgets$35:
	; Jump 2
	jmp fgets$2

 fgets$36:
	; SetReturnValue

 fgets$37:
	; Return text
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgets$38:
	; FunctionEnd fgets

section .text

 fputs:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$1:
	; Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fputs$2:
	; Call 40 strlen 0
	mov qword [rbp + 40], fputs$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp strlen

 fputs$3:
	; PostCall 40

 fputs$4:
	; GetReturnValue ┬útemporary745

 fputs$5:
	; Add size ┬útemporary745 integral4$1#
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$7:
	; Parameter 68 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; Parameter 76 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; Parameter 80 signed int integral4$1#
	mov dword [rbp + 80], 1

 fputs$10:
	; Parameter 84 pointer stream
	mov rax, [rbp + 32]
	mov [rbp + 84], rax

 fputs$11:
	; Call 44 fwrite 0
	mov qword [rbp + 44], fputs$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fwrite

 fputs$12:
	; PostCall 44

 fputs$13:
	; GetReturnValue ┬útemporary748

 fputs$14:
	; NotEqual 17 ┬útemporary748 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; Assign ┬útemporary750 integral4$0#
	mov ebx, 0

 fputs$16:
	; Jump 18
	jmp fputs$18

 fputs$17:
	; Assign ┬útemporary750 integral4$minus1#
	mov ebx, -1

 fputs$18:
	; SetReturnValue

 fputs$19:
	; Return ┬útemporary750
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputs$20:
	; FunctionEnd fputs

section .text

 getchar:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 getchar$1:
	; Parameter 48 pointer stdin
	mov rax, [stdin]
	mov [rbp + 48], rax

 getchar$2:
	; Call 24 fgetc 0
	mov qword [rbp + 24], getchar$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fgetc

 getchar$3:
	; PostCall 24

 getchar$4:
	; GetReturnValue ┬útemporary751

 getchar$5:
	; SetReturnValue

 getchar$6:
	; Return ┬útemporary751
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getchar$7:
	; FunctionEnd getchar

section .text

 gets:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$2:
	; Parameter 64 signed int integral4$minus1#
	mov dword [rbp + 64], -1

 gets$3:
	; Parameter 68 pointer stdin
	mov rax, [stdin]
	mov [rbp + 68], rax

 gets$4:
	; Call 32 fgets 0
	mov qword [rbp + 32], gets$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fgets

 gets$5:
	; PostCall 32

 gets$6:
	; GetReturnValue ┬útemporary752

 gets$7:
	; Equal 22 ┬útemporary752 integral8$0#
	cmp rbx, 0
	je gets$22

 gets$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$9:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$10:
	; Call 32 strlen 0
	mov qword [rbp + 32], gets$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strlen

 gets$11:
	; PostCall 32

 gets$12:
	; GetReturnValue ┬útemporary754

 gets$13:
	; Assign size ┬útemporary754
	mov [rbp + 32], ebx

 gets$14:
	; LessThanEqual 20 size integral4$0#
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; Subtract ┬útemporary756 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; IntegralToIntegral ┬útemporary757 ┬útemporary756
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; Add ┬útemporary758 s ┬útemporary757
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; Dereference ┬útemporary759 ┬útemporary758 0

 gets$19:
	; Assign ┬útemporary759 integral1$0#
	mov byte [rsi], 0

 gets$20:
	; SetReturnValue

 gets$21:
	; Return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$22:
	; SetReturnValue

 gets$23:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$24:
	; FunctionEnd gets

section .text

 puts:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$1:
	; Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 puts$2:
	; Parameter 64 pointer stdout
	mov rax, [stdout]
	mov [rbp + 64], rax

 puts$3:
	; Call 32 fputs 0
	mov qword [rbp + 32], puts$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputs

 puts$4:
	; PostCall 32

 puts$5:
	; GetReturnValue ┬útemporary760

 puts$6:
	; Equal 15 ┬útemporary760 integral4$0#
	cmp ebx, 0
	je puts$15

 puts$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$8:
	; Parameter 56 signed int integral4$10#
	mov dword [rbp + 56], 10

 puts$9:
	; Parameter 60 pointer stdout
	mov rax, [stdout]
	mov [rbp + 60], rax

 puts$10:
	; Call 32 fputc 0
	mov qword [rbp + 32], puts$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputc

 puts$11:
	; PostCall 32

 puts$12:
	; GetReturnValue ┬útemporary762

 puts$13:
	; SetReturnValue

 puts$14:
	; Return ┬útemporary762
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; SetReturnValue

 puts$16:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$17:
	; FunctionEnd puts

section .text

 ungetc:
	; Dereference ┬útemporary763 stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; IntegralToIntegral ┬útemporary764 ┬útemporary763.ungetc
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; Equal 6 ┬útemporary764 integral4$minus1#
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; Dereference ┬útemporary766 stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; IntegralToIntegral ┬útemporary767 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; Assign ┬útemporary766.ungetc ┬útemporary767
	mov [rsi + 24], al

 ungetc$6:
	; SetReturnValue

 ungetc$7:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ungetc$8:
	; FunctionEnd ungetc

section .text

 fread:
	; Dereference ┬útemporary769 stream 0
	mov rsi, [rbp + 40]

 fread$1:
	; IntegralToIntegral ┬útemporary770 ┬útemporary769.handle
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fread$2:
	; AssignRegister rdi ┬útemporary770

 fread$3:
	; IntegralToIntegral ┬útemporary772 ptr
	mov rsi, [rbp + 24]

 fread$4:
	; AssignRegister rsi ┬útemporary772

 fread$5:
	; Multiply ┬útemporary774 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$6:
	; IntegralToIntegral ┬útemporary775 ┬útemporary774
	mov rbx, 4294967295
	and rax, rbx

 fread$7:
	; AssignRegister rdx ┬útemporary775
	mov rdx, rax

 fread$8:
	; AssignRegister rax integral8$0#
	mov rax, 0

 fread$9:
	; SysCall
	syscall

 fread$10:
	; InspectRegister ┬útemporary777 eax

 fread$11:
	; SetReturnValue

 fread$12:
	; Return ┬útemporary777
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$13:
	; FunctionEnd fread

section .text

 fwrite:
	; Dereference ┬útemporary779 stream 0
	mov rsi, [rbp + 40]

 fwrite$1:
	; IntegralToIntegral ┬útemporary780 ┬útemporary779.handle
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fwrite$2:
	; AssignRegister rdi ┬útemporary780

 fwrite$3:
	; IntegralToIntegral ┬útemporary782 ptr
	mov rsi, [rbp + 24]

 fwrite$4:
	; AssignRegister rsi ┬útemporary782

 fwrite$5:
	; Multiply ┬útemporary784 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$6:
	; IntegralToIntegral ┬útemporary785 ┬útemporary784
	mov rbx, 4294967295
	and rax, rbx

 fwrite$7:
	; AssignRegister rdx ┬útemporary785
	mov rdx, rax

 fwrite$8:
	; AssignRegister rax integral8$1#
	mov rax, 1

 fwrite$9:
	; SysCall
	syscall

 fwrite$10:
	; InspectRegister ┬útemporary787 eax

 fwrite$11:
	; SetReturnValue

 fwrite$12:
	; Return ┬útemporary787
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$13:
	; FunctionEnd fwrite

section .text

 fseek:
	; AssignRegister rax integral8$8#
	mov rax, 8

 fseek$1:
	; Dereference ┬útemporary790 stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; IntegralToIntegral ┬útemporary791 ┬útemporary790.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; AssignRegister rdi ┬útemporary791

 fseek$4:
	; IntegralToIntegral ┬útemporary793 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; AssignRegister rsi ┬útemporary793

 fseek$6:
	; IntegralToIntegral ┬útemporary795 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; AssignRegister rdx ┬útemporary795

 fseek$8:
	; SysCall
	syscall

 fseek$9:
	; InspectRegister ┬útemporary796 eax

 fseek$10:
	; SetReturnValue

 fseek$11:
	; Return ┬útemporary796
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$12:
	; FunctionEnd fseek

section .text

 ftell:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ftell$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ftell$2:
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 ftell$3:
	; Parameter 68 signed int SEEK_CUR
	mov dword [rbp + 68], 1

 ftell$4:
	; Call 32 fseek 0
	mov qword [rbp + 32], ftell$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 ftell$5:
	; PostCall 32

 ftell$6:
	; GetReturnValue ┬útemporary797

 ftell$7:
	; SetReturnValue

 ftell$8:
	; Return ┬útemporary797
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$9:
	; FunctionEnd ftell

section .text

 rewind:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rewind$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 rewind$2:
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 rewind$3:
	; Parameter 68 signed int SEEK_SET
	mov dword [rbp + 68], 0

 rewind$4:
	; Call 32 fseek 0
	mov qword [rbp + 32], rewind$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 rewind$5:
	; PostCall 32

 rewind$6:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rewind$7:
	; FunctionEnd rewind

section .text

 fgetpos:
	; Dereference ┬útemporary800 ptr 0
	mov rsi, [rbp + 32]

 fgetpos$1:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 40], rsi

 fgetpos$2:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fgetpos$3:
	; Call 40 ftell 0
	mov qword [rbp + 48], fgetpos$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ftell

 fgetpos$4:
	; PostCall 40
	mov rsi, [rbp + 40]

 fgetpos$5:
	; GetReturnValue ┬útemporary801

 fgetpos$6:
	; IntegralToIntegral ┬útemporary802 ┬útemporary801

 fgetpos$7:
	; Assign ┬útemporary800 ┬útemporary802
	mov [rsi], ebx

 fgetpos$8:
	; SetReturnValue

 fgetpos$9:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetpos$10:
	; FunctionEnd fgetpos

section .text

 fsetpos:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fsetpos$1:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fsetpos$2:
	; Dereference ┬útemporary803 ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; Parameter 72 signed int ┬útemporary803
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; Parameter 76 signed int integral4$0#
	mov dword [rbp + 76], 0

 fsetpos$5:
	; Call 40 fseek 0
	mov qword [rbp + 40], fsetpos$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 fsetpos$6:
	; PostCall 40

 fsetpos$7:
	; GetReturnValue ┬útemporary804

 fsetpos$8:
	; IntegralToIntegral ┬útemporary805 ┬útemporary804

 fsetpos$9:
	; SetReturnValue

 fsetpos$10:
	; Return ┬útemporary805
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$11:
	; FunctionEnd fsetpos

section .text

 clearerr:
	; Dereference ┬útemporary806 stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; Assign errno integral4$0#
	mov dword [errno], 0

 clearerr$2:
	; Assign ┬útemporary806.errno errno
	mov eax, [errno]
	mov [rsi + 25], eax

 clearerr$3:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clearerr$4:
	; FunctionEnd clearerr

section .text

 feof:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 feof$2:
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 feof$3:
	; Parameter 68 signed int integral4$1#
	mov dword [rbp + 68], 1

 feof$4:
	; Call 32 fseek 0
	mov qword [rbp + 32], feof$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 feof$5:
	; PostCall 32

 feof$6:
	; GetReturnValue ┬útemporary807

 feof$7:
	; IntegralToIntegral ┬útemporary808 ┬útemporary807
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; Assign currPosition ┬útemporary808
	mov [rbp + 32], rbx

 feof$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$10:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; Parameter 72 signed int integral4$0#
	mov dword [rbp + 72], 0

 feof$12:
	; Parameter 76 signed int integral4$2#
	mov dword [rbp + 76], 2

 feof$13:
	; Call 40 fseek 0
	mov qword [rbp + 40], feof$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 feof$14:
	; PostCall 40

 feof$15:
	; GetReturnValue ┬útemporary809

 feof$16:
	; IntegralToIntegral ┬útemporary810 ┬útemporary809
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; Assign lastPosition ┬útemporary810
	mov [rbp + 40], rbx

 feof$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; Parameter 72 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; IntegralToIntegral ┬útemporary811 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; Parameter 80 signed int ┬útemporary811
	mov [rbp + 80], eax

 feof$22:
	; Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 feof$23:
	; Call 48 fseek 0
	mov qword [rbp + 48], feof$24
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fseek

 feof$24:
	; PostCall 48

 feof$25:
	; NotEqual 28 currPosition lastPosition
	mov rax, [rbp + 40]
	cmp [rbp + 32], rax
	jne feof$28

 feof$26:
	; Assign ┬útemporary814 integral4$1#
	mov eax, 1

 feof$27:
	; Jump 29
	jmp feof$29

 feof$28:
	; Assign ┬útemporary814 integral4$0#
	mov eax, 0

 feof$29:
	; Assign endOfFile ┬útemporary814
	mov [rbp + 48], eax

 feof$30:
	; SetReturnValue

 feof$31:
	; Return endOfFile
	mov ebx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 feof$32:
	; FunctionEnd feof

section .text

 ferror:
	; Dereference ┬útemporary815 stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; SetReturnValue

 ferror$2:
	; Return ┬útemporary815.errno
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$3:
	; FunctionEnd ferror

section .data

@2814string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; Parameter 56 pointer string_25s3A2025s2E0A#
	mov qword [rbp + 56], @2814string_25s3A2025s2E0A#

 perror$2:
	; Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$4:
	; Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 perror$5:
	; Call 72 strerror 0
	mov qword [rbp + 72], perror$6
	mov [rbp + 80], rbp
	add rbp, 72
	jmp strerror

 perror$6:
	; PostCall 72

 perror$7:
	; GetReturnValue ┬útemporary816

 perror$8:
	; Parameter 72 pointer ┬útemporary816
	mov [rbp + 72], rbx

 perror$9:
	; Call 32 printf 16
	mov qword [rbp + 32], perror$10
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 perror$10:
	; PostCall 32

 perror$11:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 perror$12:
	; FunctionEnd perror
