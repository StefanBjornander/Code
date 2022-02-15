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
	; 0 AssignRegister rax integral8$85#
	mov rax, 85

 filecreate$1:
	; 1 IntegralToIntegral £temporary730 name
	mov rdi, [rbp + 24]

 filecreate$2:
	; 2 AssignRegister rdi £temporary730

 filecreate$3:
	; 3 AssignRegister rsi integral8$511#
	mov rsi, 511

 filecreate$4:
	; 4 SysCall
	syscall

 filecreate$5:
	; 5 InspectRegister £temporary732 eax

 filecreate$6:
	; 6 SetReturnValue

 filecreate$7:
	; 7 Return £temporary732
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 filecreate$8:
	; 9 FunctionEnd filecreate

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
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$1:
	; 1 Parameter 56 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 fileexistsX$2:
	; 2 Parameter 64 pointer string_r#
	mov qword [rbp + 64], @2493string_r#

 fileexistsX$3:
	; 3 Call 32 fopen 0
	mov qword [rbp + 32], fileexistsX$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 fileexistsX$4:
	; 4 PostCall 32

 fileexistsX$5:
	; 5 GetReturnValue £temporary733

 fileexistsX$6:
	; 6 Assign filePtr £temporary733
	mov [rbp + 32], rbx

 fileexistsX$7:
	; 7 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$8:
	; 8 Parameter 64 pointer string_0Afileexists2025s2025p0A#
	mov qword [rbp + 64], @2495string_0Afileexists2025s2025p0A#

 fileexistsX$9:
	; 9 Parameter 72 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fileexistsX$10:
	; 10 Parameter 80 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 fileexistsX$11:
	; 11 Call 40 printf 16
	mov qword [rbp + 40], fileexistsX$12
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 fileexistsX$12:
	; 12 PostCall 40

 fileexistsX$13:
	; 13 Equal 20 filePtr integral8$0#
	cmp qword [rbp + 32], 0
	je fileexistsX$20

 fileexistsX$14:
	; 16 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$15:
	; 17 Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 fileexistsX$16:
	; 18 Call 40 fclose 0
	mov qword [rbp + 40], fileexistsX$17
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 fileexistsX$17:
	; 19 PostCall 40

 fileexistsX$18:
	; 20 SetReturnValue

 fileexistsX$19:
	; 21 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$20:
	; 25 SetReturnValue

 fileexistsX$21:
	; 26 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$22:
	; 28 FunctionEnd fileexistsX

section .text

 fileexists:
	; 0 AssignRegister rax integral8$21#
	mov rax, 21

 fileexists$1:
	; 1 IntegralToIntegral £temporary741 name
	mov rdi, [rbp + 24]

 fileexists$2:
	; 2 AssignRegister rdi £temporary741

 fileexists$3:
	; 3 AssignRegister rsi integral8$0#
	mov rsi, 0

 fileexists$4:
	; 4 SysCall
	syscall

 fileexists$5:
	; 5 InspectRegister £temporary743 eax

 fileexists$6:
	; 6 NotEqual 9 £temporary743 integral4$0#
	cmp eax, 0
	jne fileexists$9

 fileexists$7:
	; 8 Assign £temporary745 integral4$1#
	mov ebx, 1

 fileexists$8:
	; 9 Jump 10
	jmp fileexists$10

 fileexists$9:
	; 10 Assign £temporary745 integral4$0#
	mov ebx, 0

 fileexists$10:
	; 12 SetReturnValue

 fileexists$11:
	; 13 Return £temporary745
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$12:
	; 15 FunctionEnd fileexists

section .text

 @2516$fileopen:
	; 0 AssignRegister rax integral8$2#
	mov rax, 2

 @2516$fileopen$1:
	; 1 IntegralToIntegral £temporary748 name
	mov rdi, [rbp + 24]

 @2516$fileopen$2:
	; 2 AssignRegister rdi £temporary748

 @2516$fileopen$3:
	; 3 IntegralToIntegral £temporary750 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2516$fileopen$4:
	; 4 AssignRegister rsi £temporary750

 @2516$fileopen$5:
	; 5 SysCall
	syscall

 @2516$fileopen$6:
	; 6 InspectRegister £temporary751 eax

 @2516$fileopen$7:
	; 7 SetReturnValue

 @2516$fileopen$8:
	; 8 Return £temporary751
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2516$fileopen$9:
	; 10 FunctionEnd fileopen

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
	; 0 Assign index integral4$0#
	mov dword [rbp + 40], 0

 fopen$1:
	; 2 GreaterThanEqual 23 index integral4$20#
	cmp dword [rbp + 40], 20
	jge fopen$23

 fopen$2:
	; 4 Multiply £temporary754 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2525integral4$41#]

 fopen$3:
	; 5 IntegralToIntegral £temporary755 £temporary754
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; 6 Add £temporary756 g_fileArray £temporary755
	mov rsi, g_fileArray
	add rsi, rax

 fopen$5:
	; 7 Dereference £temporary757 £temporary756 0

 fopen$6:
	; 8 NotEqual 21 £temporary757.open integral4$0#
	cmp dword [rsi], 0
	jne fopen$21

 fopen$7:
	; 11 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fopen$8:
	; 12 Parameter 68 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fopen$9:
	; 13 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 fopen$10:
	; 14 Multiply £temporary760 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2528integral4$41#]

 fopen$11:
	; 15 IntegralToIntegral £temporary761 £temporary760
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; 16 Add £temporary762 g_fileArray £temporary761
	mov rsi, g_fileArray
	add rsi, rax

 fopen$13:
	; 17 Dereference £temporary763 £temporary762 0

 fopen$14:
	; 18 Address £temporary764 £temporary763

 fopen$15:
	; 19 Parameter 84 pointer £temporary764
	mov [rbp + 84], rsi

 fopen$16:
	; 20 Call 44 freopen 0
	mov qword [rbp + 44], fopen$17
	mov [rbp + 52], rbp
	add rbp, 44
	jmp freopen

 fopen$17:
	; 21 PostCall 44

 fopen$18:
	; 22 GetReturnValue £temporary765

 fopen$19:
	; 23 SetReturnValue

 fopen$20:
	; 24 Return £temporary765
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$21:
	; 29 Add index index integral4$1#
	inc dword [rbp + 40]

 fopen$22:
	; 31 Jump 1
	jmp fopen$1

 fopen$23:
	; 32 SetReturnValue

 fopen$24:
	; 33 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$25:
	; 35 FunctionEnd fopen

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
	; 0 Assign handle integral4$minus1#
	mov dword [rbp + 48], -1

 freopen$1:
	; 1 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$2:
	; 2 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; 3 Parameter 84 pointer string_r#
	mov qword [rbp + 84], @2539string_r#

 freopen$4:
	; 4 Call 52 strcmp 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; 5 PostCall 52

 freopen$6:
	; 6 GetReturnValue £temporary768

 freopen$7:
	; 7 NotEqual 16 £temporary768 integral4$0#
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; 10 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$9:
	; 11 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; 12 Parameter 84 unsigned short int integral2$0#
	mov word [rbp + 84], 0

 freopen$11:
	; 13 Call 52 fileopen 0
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$12:
	; 14 PostCall 52

 freopen$13:
	; 15 GetReturnValue £temporary770

 freopen$14:
	; 16 Assign handle £temporary770
	mov [rbp + 48], ebx

 freopen$15:
	; 17 Jump 138
	jmp freopen$138

 freopen$16:
	; 19 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$17:
	; 20 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; 21 Parameter 84 pointer string_w#
	mov qword [rbp + 84], @2542string_w#

 freopen$19:
	; 22 Call 52 strcmp 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; 23 PostCall 52

 freopen$21:
	; 24 GetReturnValue £temporary771

 freopen$22:
	; 25 NotEqual 30 £temporary771 integral4$0#
	cmp ebx, 0
	jne freopen$30

 freopen$23:
	; 28 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$24:
	; 29 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$25:
	; 30 Call 52 filecreate 0
	mov qword [rbp + 52], freopen$26
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$26:
	; 31 PostCall 52

 freopen$27:
	; 32 GetReturnValue £temporary773

 freopen$28:
	; 33 Assign handle £temporary773
	mov [rbp + 48], ebx

 freopen$29:
	; 34 Jump 138
	jmp freopen$138

 freopen$30:
	; 36 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$31:
	; 37 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; 38 Parameter 84 pointer string_a#
	mov qword [rbp + 84], @2544string_a#

 freopen$33:
	; 39 Call 52 strcmp 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; 40 PostCall 52

 freopen$35:
	; 41 GetReturnValue £temporary774

 freopen$36:
	; 42 NotEqual 59 £temporary774 integral4$0#
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; 45 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$38:
	; 46 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; 47 Parameter 84 unsigned short int integral2$1#
	mov word [rbp + 84], 1

 freopen$40:
	; 48 Call 52 fileopen 0
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$41:
	; 49 PostCall 52

 freopen$42:
	; 50 GetReturnValue £temporary776

 freopen$43:
	; 51 Assign handle £temporary776
	mov [rbp + 48], ebx

 freopen$44:
	; 52 Equal 52 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; 55 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$46:
	; 56 Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; 57 Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 freopen$48:
	; 58 Parameter 88 signed int integral4$2#
	mov dword [rbp + 88], 2

 freopen$49:
	; 59 Call 52 fseek 0
	mov qword [rbp + 52], freopen$50
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$50:
	; 60 PostCall 52

 freopen$51:
	; 61 Jump 138
	jmp freopen$138

 freopen$52:
	; 63 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$53:
	; 64 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$54:
	; 65 Call 52 filecreate 0
	mov qword [rbp + 52], freopen$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$55:
	; 66 PostCall 52

 freopen$56:
	; 67 GetReturnValue £temporary779

 freopen$57:
	; 68 Assign handle £temporary779
	mov [rbp + 48], ebx

 freopen$58:
	; 70 Jump 138
	jmp freopen$138

 freopen$59:
	; 72 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$60:
	; 73 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; 74 Parameter 84 pointer string_r2B#
	mov qword [rbp + 84], @2551string_r2B#

 freopen$62:
	; 75 Call 52 strcmp 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; 76 PostCall 52

 freopen$64:
	; 77 GetReturnValue £temporary782

 freopen$65:
	; 78 NotEqual 82 £temporary782 integral4$0#
	cmp ebx, 0
	jne freopen$82

 freopen$66:
	; 81 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; 82 Parameter 76 pointer string_r2B10A#
	mov qword [rbp + 76], @2553string_r2B10A#

 freopen$68:
	; 83 Call 52 printf 0
	mov qword [rbp + 52], freopen$69
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 freopen$69:
	; 84 PostCall 52

 freopen$70:
	; 85 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$71:
	; 86 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$72:
	; 87 Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$73:
	; 88 Call 52 fileopen 0
	mov qword [rbp + 52], freopen$74
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$74:
	; 89 PostCall 52

 freopen$75:
	; 90 GetReturnValue £temporary785

 freopen$76:
	; 91 Assign handle £temporary785
	mov [rbp + 48], ebx

 freopen$77:
	; 92 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$78:
	; 93 Parameter 76 pointer string_r2B20A#
	mov qword [rbp + 76], @2555string_r2B20A#

 freopen$79:
	; 94 Call 52 printf 0
	mov qword [rbp + 52], freopen$80
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 freopen$80:
	; 95 PostCall 52

 freopen$81:
	; 96 Jump 138
	jmp freopen$138

 freopen$82:
	; 98 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$83:
	; 99 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$84:
	; 100 Parameter 84 pointer string_w2B#
	mov qword [rbp + 84], @2556string_w2B#

 freopen$85:
	; 101 Call 52 strcmp 0
	mov qword [rbp + 52], freopen$86
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$86:
	; 102 PostCall 52

 freopen$87:
	; 103 GetReturnValue £temporary787

 freopen$88:
	; 104 NotEqual 110 £temporary787 integral4$0#
	cmp ebx, 0
	jne freopen$110

 freopen$89:
	; 107 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$90:
	; 108 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$91:
	; 109 Call 52 fileexists 0
	mov qword [rbp + 52], freopen$92
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$92:
	; 110 PostCall 52

 freopen$93:
	; 111 GetReturnValue £temporary789

 freopen$94:
	; 112 Equal 103 £temporary789 integral4$0#
	cmp ebx, 0
	je freopen$103

 freopen$95:
	; 115 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$96:
	; 116 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; 117 Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$98:
	; 118 Call 52 fileopen 0
	mov qword [rbp + 52], freopen$99
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$99:
	; 119 PostCall 52

 freopen$100:
	; 120 GetReturnValue £temporary790

 freopen$101:
	; 121 Assign handle £temporary790
	mov [rbp + 48], ebx

 freopen$102:
	; 122 Jump 138
	jmp freopen$138

 freopen$103:
	; 124 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$104:
	; 125 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$105:
	; 126 Call 52 filecreate 0
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$106:
	; 127 PostCall 52

 freopen$107:
	; 128 GetReturnValue £temporary791

 freopen$108:
	; 129 Assign handle £temporary791
	mov [rbp + 48], ebx

 freopen$109:
	; 131 Jump 138
	jmp freopen$138

 freopen$110:
	; 133 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$111:
	; 134 Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$112:
	; 135 Parameter 84 pointer string_a2B#
	mov qword [rbp + 84], @2560string_a2B#

 freopen$113:
	; 136 Call 52 strcmp 0
	mov qword [rbp + 52], freopen$114
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$114:
	; 137 PostCall 52

 freopen$115:
	; 138 GetReturnValue £temporary795

 freopen$116:
	; 139 NotEqual 138 £temporary795 integral4$0#
	cmp ebx, 0
	jne freopen$138

 freopen$117:
	; 142 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$118:
	; 143 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$119:
	; 144 Parameter 84 unsigned short int integral2$3#
	mov word [rbp + 84], 3

 freopen$120:
	; 145 Call 52 fileopen 0
	mov qword [rbp + 52], freopen$121
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2516$fileopen

 freopen$121:
	; 146 PostCall 52

 freopen$122:
	; 147 GetReturnValue £temporary797

 freopen$123:
	; 148 Assign handle £temporary797
	mov [rbp + 48], ebx

 freopen$124:
	; 149 Equal 132 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$132

 freopen$125:
	; 152 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$126:
	; 153 Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$127:
	; 154 Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 freopen$128:
	; 155 Parameter 88 signed int integral4$2#
	mov dword [rbp + 88], 2

 freopen$129:
	; 156 Call 52 fseek 0
	mov qword [rbp + 52], freopen$130
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$130:
	; 157 PostCall 52

 freopen$131:
	; 158 Jump 138
	jmp freopen$138

 freopen$132:
	; 160 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$133:
	; 161 Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$134:
	; 162 Call 52 filecreate 0
	mov qword [rbp + 52], freopen$135
	mov [rbp + 60], rbp
	add rbp, 52
	jmp filecreate

 freopen$135:
	; 163 PostCall 52

 freopen$136:
	; 164 GetReturnValue £temporary800

 freopen$137:
	; 165 Assign handle £temporary800
	mov [rbp + 48], ebx

 freopen$138:
	; 175 Equal 155 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$155

 freopen$139:
	; 178 Dereference £temporary816 stream 0
	mov rsi, [rbp + 40]

 freopen$140:
	; 179 Assign £temporary816.open integral4$1#
	mov dword [rsi], 1

 freopen$141:
	; 180 Dereference £temporary817 stream 0
	mov rsi, [rbp + 40]

 freopen$142:
	; 181 Assign £temporary817.handle handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$143:
	; 182 Dereference £temporary818 stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; 183 Assign £temporary818.size integral4$0#
	mov dword [rsi + 33], 0

 freopen$145:
	; 184 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$146:
	; 185 Dereference £temporary819 stream 0
	mov rsi, [rbp + 40]

 freopen$147:
	; 186 Parameter 76 pointer £temporary819.name
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$148:
	; 187 Parameter 84 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$149:
	; 188 Call 52 strcpy 0
	mov qword [rbp + 52], freopen$150
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$150:
	; 189 PostCall 52

 freopen$151:
	; 190 Dereference £temporary821 stream 0
	mov rsi, [rbp + 40]

 freopen$152:
	; 191 Assign £temporary821.temporary integral4$0#
	mov dword [rsi + 37], 0

 freopen$153:
	; 192 SetReturnValue

 freopen$154:
	; 193 Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$155:
	; 196 Dereference £temporary822 stream 0
	mov rsi, [rbp + 40]

 freopen$156:
	; 197 Assign £temporary822.open integral4$0#
	mov dword [rsi], 0

 freopen$157:
	; 198 SetReturnValue

 freopen$158:
	; 199 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$159:
	; 202 FunctionEnd freopen

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
	; 0 NotEqual 23 stream integral8$0#
	cmp qword [rbp + 24], 0
	jne fflush$23

 fflush$1:
	; 3 Assign index integral4$0#
	mov dword [rbp + 32], 0

 fflush$2:
	; 5 GreaterThanEqual 23 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fflush$23

 fflush$3:
	; 7 Multiply £temporary828 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2625integral4$41#]

 fflush$4:
	; 8 IntegralToIntegral £temporary829 £temporary828
	mov rbx, 4294967295
	and rax, rbx

 fflush$5:
	; 9 Add £temporary830 g_fileArray £temporary829
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; 10 Dereference £temporary831 £temporary830 0

 fflush$7:
	; 11 Equal 21 £temporary831.open integral4$0#
	cmp dword [rsi], 0
	je fflush$21

 fflush$8:
	; 14 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; 15 Multiply £temporary832 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2627integral4$41#]

 fflush$10:
	; 16 IntegralToIntegral £temporary833 £temporary832
	mov rbx, 4294967295
	and rax, rbx

 fflush$11:
	; 17 Add £temporary834 g_fileArray £temporary833
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; 18 Dereference £temporary835 £temporary834 0

 fflush$13:
	; 19 Address £temporary836 £temporary835

 fflush$14:
	; 20 Parameter 60 pointer £temporary836
	mov [rbp + 60], rsi

 fflush$15:
	; 21 Call 36 fflush 0
	mov qword [rbp + 36], fflush$16
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fflush

 fflush$16:
	; 22 PostCall 36

 fflush$17:
	; 23 GetReturnValue £temporary837

 fflush$18:
	; 24 NotEqual 21 £temporary837 integral4$minus1#
	cmp ebx, -1
	jne fflush$21

 fflush$19:
	; 27 SetReturnValue

 fflush$20:
	; 28 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$21:
	; 36 Add index index integral4$1#
	inc dword [rbp + 32]

 fflush$22:
	; 38 Jump 2
	jmp fflush$2

 fflush$23:
	; 42 SetReturnValue

 fflush$24:
	; 43 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$25:
	; 45 FunctionEnd fflush

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
	; 0 Equal 8 stream integral8$0#
	cmp qword [rbp + 24], 0
	je fclose$8

 fclose$1:
	; 3 AssignRegister rax integral8$3#
	mov rax, 3

 fclose$2:
	; 4 Dereference £temporary849 stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; 5 IntegralToIntegral £temporary850 £temporary849.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; 6 AssignRegister rdi £temporary850

 fclose$5:
	; 7 SysCall
	syscall

 fclose$6:
	; 8 SetReturnValue

 fclose$7:
	; 9 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$8:
	; 12 Assign index integral4$0#
	mov dword [rbp + 32], 0

 fclose$9:
	; 14 GreaterThanEqual 30 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fclose$30

 fclose$10:
	; 16 Multiply £temporary853 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2643integral4$41#]

 fclose$11:
	; 17 IntegralToIntegral £temporary854 £temporary853
	mov rbx, 4294967295
	and rax, rbx

 fclose$12:
	; 18 Add £temporary855 g_fileArray £temporary854
	mov rsi, g_fileArray
	add rsi, rax

 fclose$13:
	; 19 Dereference £temporary856 £temporary855 0

 fclose$14:
	; 20 Equal 28 £temporary856.open integral4$0#
	cmp dword [rsi], 0
	je fclose$28

 fclose$15:
	; 23 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$16:
	; 24 Multiply £temporary857 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2645integral4$41#]

 fclose$17:
	; 25 IntegralToIntegral £temporary858 £temporary857
	mov rbx, 4294967295
	and rax, rbx

 fclose$18:
	; 26 Add £temporary859 g_fileArray £temporary858
	mov rsi, g_fileArray
	add rsi, rax

 fclose$19:
	; 27 Dereference £temporary860 £temporary859 0

 fclose$20:
	; 28 Address £temporary861 £temporary860

 fclose$21:
	; 29 Parameter 60 pointer £temporary861
	mov [rbp + 60], rsi

 fclose$22:
	; 30 Call 36 fclose 0
	mov qword [rbp + 36], fclose$23
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 fclose$23:
	; 31 PostCall 36

 fclose$24:
	; 32 GetReturnValue £temporary862

 fclose$25:
	; 33 NotEqual 28 £temporary862 integral4$minus1#
	cmp ebx, -1
	jne fclose$28

 fclose$26:
	; 36 SetReturnValue

 fclose$27:
	; 37 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$28:
	; 45 Add index index integral4$1#
	inc dword [rbp + 32]

 fclose$29:
	; 47 Jump 9
	jmp fclose$9

 fclose$30:
	; 48 SetReturnValue

 fclose$31:
	; 49 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$32:
	; 52 FunctionEnd fclose

section .text

 remove:
	; 0 AssignRegister rax integral8$88#
	mov rax, 88

 remove$1:
	; 1 IntegralToIntegral £temporary873 name
	mov rdi, [rbp + 24]

 remove$2:
	; 2 AssignRegister rdi £temporary873

 remove$3:
	; 3 SysCall
	syscall

 remove$4:
	; 4 InspectRegister £temporary874 ebx

 remove$5:
	; 5 NotEqual 8 £temporary874 integral4$0#
	cmp ebx, 0
	jne remove$8

 remove$6:
	; 8 SetReturnValue

 remove$7:
	; 9 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$8:
	; 13 Assign errno FREMOVE
	mov dword [errno], 18

 remove$9:
	; 14 SetReturnValue

 remove$10:
	; 15 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$11:
	; 17 FunctionEnd remove

section .text

 rename:
	; 0 AssignRegister rax integral8$82#
	mov rax, 82

 rename$1:
	; 1 IntegralToIntegral £temporary880 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; 2 AssignRegister rdi £temporary880

 rename$3:
	; 3 IntegralToIntegral £temporary882 newName
	mov rsi, [rbp + 32]

 rename$4:
	; 4 AssignRegister rsi £temporary882

 rename$5:
	; 5 SysCall
	syscall

 rename$6:
	; 6 InspectRegister £temporary883 eax

 rename$7:
	; 7 NotEqual 10 £temporary883 integral4$0#
	cmp eax, 0
	jne rename$10

 rename$8:
	; 10 SetReturnValue

 rename$9:
	; 11 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$10:
	; 15 Assign errno FRENAME
	mov dword [errno], 19

 rename$11:
	; 16 SetReturnValue

 rename$12:
	; 17 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$13:
	; 19 FunctionEnd rename

section .text

 setvbuf:
	; 0 SetReturnValue

 setvbuf$1:
	; 1 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setvbuf$2:
	; 3 FunctionEnd setvbuf

section .text

 setbuf:
	; 1 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setbuf$1:
	; 2 FunctionEnd setbuf

section .text

 fgetc:
	; 0 Assign c integral1$0#
	mov byte [rbp + 32], 0

 fgetc$1:
	; 1 PreCall 33 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgetc$2:
	; 2 Address £temporary887 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; 3 Parameter 57 pointer £temporary887
	mov [rbp + 57], rsi

 fgetc$4:
	; 4 Parameter 65 signed int integral4$1#
	mov dword [rbp + 65], 1

 fgetc$5:
	; 5 Parameter 69 signed int integral4$1#
	mov dword [rbp + 69], 1

 fgetc$6:
	; 6 Parameter 73 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 fgetc$7:
	; 7 Call 33 fread 0
	mov qword [rbp + 33], fgetc$8
	mov [rbp + 41], rbp
	add rbp, 33
	jmp fread

 fgetc$8:
	; 8 PostCall 33

 fgetc$9:
	; 9 GetReturnValue £temporary888

 fgetc$10:
	; 10 LessThanEqual 14 £temporary888 integral4$0#
	cmp ebx, 0
	jle fgetc$14

 fgetc$11:
	; 13 IntegralToIntegral £temporary890 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; 14 SetReturnValue

 fgetc$13:
	; 15 Return £temporary890
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; 19 SetReturnValue

 fgetc$15:
	; 20 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$16:
	; 22 FunctionEnd fgetc

section .data

@2690string_25c#:
	; Initializer String %c
	db "%c", 0

section .text

 fgets:
	; 0 Assign count integral4$0#
	mov dword [rbp + 44], 0

 fgets$1:
	; 1 Assign prevChar integral1$0#
	mov byte [rbp + 48], 0

 fgets$2:
	; 3 Subtract £temporary894 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; 4 GreaterThanEqual 36 count £temporary894
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; 6 Assign currChar integral1$0#
	mov byte [rbp + 49], 0

 fgets$5:
	; 7 PreCall 50 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgets$6:
	; 8 Parameter 74 pointer stream
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; 9 Parameter 82 pointer string_25c#
	mov qword [rbp + 82], @2690string_25c#

 fgets$8:
	; 10 Address £temporary896 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; 11 Parameter 90 pointer £temporary896
	mov [rbp + 90], rsi

 fgets$10:
	; 12 Call 50 fscanf 8
	mov qword [rbp + 50], fgets$11
	mov [rbp + 58], rbp
	add rbp, 50
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 fgets$11:
	; 13 PostCall 50

 fgets$12:
	; 14 NotEqual 19 prevChar integral1$13#
	cmp byte [rbp + 48], 13
	jne fgets$19

 fgets$13:
	; 16 NotEqual 19 currChar integral1$10#
	cmp byte [rbp + 49], 10
	jne fgets$19

 fgets$14:
	; 19 IntegralToIntegral £temporary901 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; 20 Add £temporary902 text £temporary901
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; 21 Dereference £temporary903 £temporary902 0

 fgets$17:
	; 22 Assign £temporary903 integral1$0#
	mov byte [rsi], 0

 fgets$18:
	; 23 Jump 36
	jmp fgets$36

 fgets$19:
	; 27 IntegralToIntegral £temporary906 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; 28 NotEqual 26 £temporary906 integral4$minus1#
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; 31 IntegralToIntegral £temporary908 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; 32 Add £temporary909 text £temporary908
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; 33 Dereference £temporary910 £temporary909 0

 fgets$24:
	; 34 Assign £temporary910 integral1$0#
	mov byte [rsi], 0

 fgets$25:
	; 35 Jump 36
	jmp fgets$36

 fgets$26:
	; 39 Equal 34 currChar integral1$13#
	cmp byte [rbp + 49], 13
	je fgets$34

 fgets$27:
	; 41 Equal 34 currChar integral1$10#
	cmp byte [rbp + 49], 10
	je fgets$34

 fgets$28:
	; 44 Assign £temporary917 count
	mov eax, [rbp + 44]

 fgets$29:
	; 45 Add count count integral4$1#
	inc dword [rbp + 44]

 fgets$30:
	; 47 IntegralToIntegral £temporary919 £temporary917
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; 48 Add £temporary920 text £temporary919
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; 49 Dereference £temporary921 £temporary920 0

 fgets$33:
	; 50 Assign £temporary921 currChar
	mov al, [rbp + 49]
	mov [rsi], al

 fgets$34:
	; 54 Assign prevChar currChar
	mov al, [rbp + 49]
	mov [rbp + 48], al

 fgets$35:
	; 56 Jump 2
	jmp fgets$2

 fgets$36:
	; 57 SetReturnValue

 fgets$37:
	; 58 Return text
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgets$38:
	; 60 FunctionEnd fgets

section .text

 fputs:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$1:
	; 1 Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fputs$2:
	; 2 Call 40 strlen 0
	mov qword [rbp + 40], fputs$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp strlen

 fputs$3:
	; 3 PostCall 40

 fputs$4:
	; 4 GetReturnValue £temporary925

 fputs$5:
	; 5 Add size £temporary925 integral4$1#
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; 8 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$7:
	; 9 Parameter 68 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; 10 Parameter 76 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; 11 Parameter 80 signed int integral4$1#
	mov dword [rbp + 80], 1

 fputs$10:
	; 12 Parameter 84 pointer stream
	mov rax, [rbp + 32]
	mov [rbp + 84], rax

 fputs$11:
	; 13 Call 44 fwrite 0
	mov qword [rbp + 44], fputs$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fwrite

 fputs$12:
	; 14 PostCall 44

 fputs$13:
	; 15 GetReturnValue £temporary928

 fputs$14:
	; 16 NotEqual 17 £temporary928 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; 19 Assign £temporary930 integral4$0#
	mov ebx, 0

 fputs$16:
	; 20 Jump 18
	jmp fputs$18

 fputs$17:
	; 22 Assign £temporary930 integral4$minus1#
	mov ebx, -1

 fputs$18:
	; 24 SetReturnValue

 fputs$19:
	; 25 Return £temporary930
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputs$20:
	; 27 FunctionEnd fputs

section .text

 getchar:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 getchar$1:
	; 1 Parameter 48 pointer stdin
	mov rax, [stdin]
	mov [rbp + 48], rax

 getchar$2:
	; 2 Call 24 fgetc 0
	mov qword [rbp + 24], getchar$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fgetc

 getchar$3:
	; 3 PostCall 24

 getchar$4:
	; 4 GetReturnValue £temporary931

 getchar$5:
	; 5 SetReturnValue

 getchar$6:
	; 6 Return £temporary931
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getchar$7:
	; 8 FunctionEnd getchar

section .text

 gets:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$1:
	; 1 Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$2:
	; 2 Parameter 64 signed int integral4$minus1#
	mov dword [rbp + 64], -1

 gets$3:
	; 3 Parameter 68 pointer stdin
	mov rax, [stdin]
	mov [rbp + 68], rax

 gets$4:
	; 4 Call 32 fgets 0
	mov qword [rbp + 32], gets$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fgets

 gets$5:
	; 5 PostCall 32

 gets$6:
	; 6 GetReturnValue £temporary932

 gets$7:
	; 7 Equal 22 £temporary932 integral8$0#
	cmp rbx, 0
	je gets$22

 gets$8:
	; 10 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 gets$9:
	; 11 Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$10:
	; 12 Call 32 strlen 0
	mov qword [rbp + 32], gets$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strlen

 gets$11:
	; 13 PostCall 32

 gets$12:
	; 14 GetReturnValue £temporary934

 gets$13:
	; 15 Assign size £temporary934
	mov [rbp + 32], ebx

 gets$14:
	; 16 LessThanEqual 20 size integral4$0#
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; 19 Subtract £temporary936 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; 20 IntegralToIntegral £temporary937 £temporary936
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; 21 Add £temporary938 s £temporary937
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; 22 Dereference £temporary939 £temporary938 0

 gets$19:
	; 23 Assign £temporary939 integral1$0#
	mov byte [rsi], 0

 gets$20:
	; 27 SetReturnValue

 gets$21:
	; 28 Return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$22:
	; 31 SetReturnValue

 gets$23:
	; 32 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$24:
	; 35 FunctionEnd gets

section .text

 puts:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$1:
	; 1 Parameter 56 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 puts$2:
	; 2 Parameter 64 pointer stdout
	mov rax, [stdout]
	mov [rbp + 64], rax

 puts$3:
	; 3 Call 32 fputs 0
	mov qword [rbp + 32], puts$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputs

 puts$4:
	; 4 PostCall 32

 puts$5:
	; 5 GetReturnValue £temporary944

 puts$6:
	; 6 Equal 15 £temporary944 integral4$0#
	cmp ebx, 0
	je puts$15

 puts$7:
	; 9 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$8:
	; 10 Parameter 56 signed int integral4$10#
	mov dword [rbp + 56], 10

 puts$9:
	; 11 Parameter 60 pointer stdout
	mov rax, [stdout]
	mov [rbp + 60], rax

 puts$10:
	; 12 Call 32 fputc 0
	mov qword [rbp + 32], puts$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputc

 puts$11:
	; 13 PostCall 32

 puts$12:
	; 14 GetReturnValue £temporary946

 puts$13:
	; 15 SetReturnValue

 puts$14:
	; 16 Return £temporary946
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; 20 SetReturnValue

 puts$16:
	; 21 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$17:
	; 23 FunctionEnd puts

section .text

 ungetc:
	; 0 Dereference £temporary949 stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; 1 IntegralToIntegral £temporary950 £temporary949.ungetc
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; 2 Equal 6 £temporary950 integral4$minus1#
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; 5 Dereference £temporary952 stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; 6 IntegralToIntegral £temporary953 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; 7 Assign £temporary952.ungetc £temporary953
	mov [rsi + 24], al

 ungetc$6:
	; 11 SetReturnValue

 ungetc$7:
	; 12 Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ungetc$8:
	; 14 FunctionEnd ungetc

section .text

 fread:
	; 0 Dereference £temporary957 stream 0
	mov rsi, [rbp + 40]

 fread$1:
	; 1 IntegralToIntegral £temporary958 £temporary957.handle
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fread$2:
	; 2 AssignRegister rdi £temporary958

 fread$3:
	; 3 IntegralToIntegral £temporary960 ptr
	mov rsi, [rbp + 24]

 fread$4:
	; 4 AssignRegister rsi £temporary960

 fread$5:
	; 5 Multiply £temporary962 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$6:
	; 6 IntegralToIntegral £temporary963 £temporary962
	mov rbx, 4294967295
	and rax, rbx

 fread$7:
	; 7 AssignRegister rdx £temporary963
	mov rdx, rax

 fread$8:
	; 8 AssignRegister rax integral8$0#
	mov rax, 0

 fread$9:
	; 9 SysCall
	syscall

 fread$10:
	; 10 InspectRegister £temporary965 eax

 fread$11:
	; 11 SetReturnValue

 fread$12:
	; 12 Return £temporary965
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$13:
	; 14 FunctionEnd fread

section .text

 fwrite:
	; 0 Dereference £temporary967 stream 0
	mov rsi, [rbp + 40]

 fwrite$1:
	; 1 IntegralToIntegral £temporary968 £temporary967.handle
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fwrite$2:
	; 2 AssignRegister rdi £temporary968

 fwrite$3:
	; 3 IntegralToIntegral £temporary970 ptr
	mov rsi, [rbp + 24]

 fwrite$4:
	; 4 AssignRegister rsi £temporary970

 fwrite$5:
	; 5 Multiply £temporary972 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$6:
	; 6 IntegralToIntegral £temporary973 £temporary972
	mov rbx, 4294967295
	and rax, rbx

 fwrite$7:
	; 7 AssignRegister rdx £temporary973
	mov rdx, rax

 fwrite$8:
	; 8 AssignRegister rax integral8$1#
	mov rax, 1

 fwrite$9:
	; 9 SysCall
	syscall

 fwrite$10:
	; 10 InspectRegister £temporary975 eax

 fwrite$11:
	; 11 SetReturnValue

 fwrite$12:
	; 12 Return £temporary975
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$13:
	; 14 FunctionEnd fwrite

section .text

 fseek:
	; 0 AssignRegister rax integral8$8#
	mov rax, 8

 fseek$1:
	; 1 Dereference £temporary978 stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; 2 IntegralToIntegral £temporary979 £temporary978.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; 3 AssignRegister rdi £temporary979

 fseek$4:
	; 4 IntegralToIntegral £temporary981 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; 5 AssignRegister rsi £temporary981

 fseek$6:
	; 6 IntegralToIntegral £temporary983 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; 7 AssignRegister rdx £temporary983

 fseek$8:
	; 8 SysCall
	syscall

 fseek$9:
	; 9 InspectRegister £temporary984 eax

 fseek$10:
	; 10 SetReturnValue

 fseek$11:
	; 11 Return £temporary984
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$12:
	; 13 FunctionEnd fseek

section .text

 ftell:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ftell$1:
	; 1 Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ftell$2:
	; 2 Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 ftell$3:
	; 3 Parameter 68 signed int SEEK_CUR
	mov dword [rbp + 68], 1

 ftell$4:
	; 4 Call 32 fseek 0
	mov qword [rbp + 32], ftell$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 ftell$5:
	; 5 PostCall 32

 ftell$6:
	; 6 GetReturnValue £temporary985

 ftell$7:
	; 7 SetReturnValue

 ftell$8:
	; 8 Return £temporary985
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$9:
	; 10 FunctionEnd ftell

section .text

 rewind:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rewind$1:
	; 1 Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 rewind$2:
	; 2 Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 rewind$3:
	; 3 Parameter 68 signed int SEEK_SET
	mov dword [rbp + 68], 0

 rewind$4:
	; 4 Call 32 fseek 0
	mov qword [rbp + 32], rewind$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 rewind$5:
	; 5 PostCall 32

 rewind$6:
	; 7 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rewind$7:
	; 8 FunctionEnd rewind

section .text

 fgetpos:
	; 0 Dereference £temporary988 ptr 0
	mov rsi, [rbp + 32]

 fgetpos$1:
	; 1 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0
	mov [rbp + 40], rsi

 fgetpos$2:
	; 2 Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fgetpos$3:
	; 3 Call 40 ftell 0
	mov qword [rbp + 48], fgetpos$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ftell

 fgetpos$4:
	; 4 PostCall 40
	mov rsi, [rbp + 40]

 fgetpos$5:
	; 5 GetReturnValue £temporary989

 fgetpos$6:
	; 6 IntegralToIntegral £temporary990 £temporary989

 fgetpos$7:
	; 7 Assign £temporary988 £temporary990
	mov [rsi], ebx

 fgetpos$8:
	; 8 SetReturnValue

 fgetpos$9:
	; 9 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetpos$10:
	; 11 FunctionEnd fgetpos

section .text

 fsetpos:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fsetpos$1:
	; 1 Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fsetpos$2:
	; 2 Dereference £temporary991 ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; 3 Parameter 72 signed int £temporary991
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; 4 Parameter 76 signed int integral4$0#
	mov dword [rbp + 76], 0

 fsetpos$5:
	; 5 Call 40 fseek 0
	mov qword [rbp + 40], fsetpos$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 fsetpos$6:
	; 6 PostCall 40

 fsetpos$7:
	; 7 GetReturnValue £temporary992

 fsetpos$8:
	; 8 IntegralToIntegral £temporary993 £temporary992

 fsetpos$9:
	; 9 SetReturnValue

 fsetpos$10:
	; 10 Return £temporary993
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$11:
	; 12 FunctionEnd fsetpos

section .text

 clearerr:
	; 0 Dereference £temporary994 stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; 1 Assign errno integral4$0#
	mov dword [errno], 0

 clearerr$2:
	; 2 Assign £temporary994.errno errno
	mov eax, [errno]
	mov [rsi + 25], eax

 clearerr$3:
	; 4 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clearerr$4:
	; 5 FunctionEnd clearerr

section .text

 feof:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$1:
	; 1 Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 feof$2:
	; 2 Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 feof$3:
	; 3 Parameter 68 signed int integral4$1#
	mov dword [rbp + 68], 1

 feof$4:
	; 4 Call 32 fseek 0
	mov qword [rbp + 32], feof$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 feof$5:
	; 5 PostCall 32

 feof$6:
	; 6 GetReturnValue £temporary995

 feof$7:
	; 7 IntegralToIntegral £temporary996 £temporary995
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; 8 Assign currPosition £temporary996
	mov [rbp + 32], rbx

 feof$9:
	; 9 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$10:
	; 10 Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; 11 Parameter 72 signed int integral4$0#
	mov dword [rbp + 72], 0

 feof$12:
	; 12 Parameter 76 signed int integral4$2#
	mov dword [rbp + 76], 2

 feof$13:
	; 13 Call 40 fseek 0
	mov qword [rbp + 40], feof$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 feof$14:
	; 14 PostCall 40

 feof$15:
	; 15 GetReturnValue £temporary997

 feof$16:
	; 16 IntegralToIntegral £temporary998 £temporary997
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; 17 Assign lastPosition £temporary998
	mov [rbp + 40], rbx

 feof$18:
	; 18 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; 19 Parameter 72 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; 20 IntegralToIntegral £temporary999 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; 21 Parameter 80 signed int £temporary999
	mov [rbp + 80], eax

 feof$22:
	; 22 Parameter 84 signed int integral4$0#
	mov dword [rbp + 84], 0

 feof$23:
	; 23 Call 48 fseek 0
	mov qword [rbp + 48], feof$24
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fseek

 feof$24:
	; 24 PostCall 48

 feof$25:
	; 25 NotEqual 28 currPosition lastPosition
	mov rax, [rbp + 40]
	cmp [rbp + 32], rax
	jne feof$28

 feof$26:
	; 27 Assign £temporary1002 integral4$1#
	mov eax, 1

 feof$27:
	; 28 Jump 29
	jmp feof$29

 feof$28:
	; 29 Assign £temporary1002 integral4$0#
	mov eax, 0

 feof$29:
	; 31 Assign endOfFile £temporary1002
	mov [rbp + 48], eax

 feof$30:
	; 32 SetReturnValue

 feof$31:
	; 33 Return endOfFile
	mov ebx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 feof$32:
	; 35 FunctionEnd feof

section .text

 ferror:
	; 0 Dereference £temporary1003 stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; 1 SetReturnValue

 ferror$2:
	; 2 Return £temporary1003.errno
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$3:
	; 4 FunctionEnd ferror

section .data

@2814string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; 1 Parameter 56 pointer string_25s3A2025s2E0A#
	mov qword [rbp + 56], @2814string_25s3A2025s2E0A#

 perror$2:
	; 2 Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; 3 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$4:
	; 4 Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 perror$5:
	; 5 Call 72 strerror 0
	mov qword [rbp + 72], perror$6
	mov [rbp + 80], rbp
	add rbp, 72
	jmp strerror

 perror$6:
	; 6 PostCall 72

 perror$7:
	; 7 GetReturnValue £temporary1004

 perror$8:
	; 8 Parameter 72 pointer £temporary1004
	mov [rbp + 72], rbx

 perror$9:
	; 9 Call 32 printf 16
	mov qword [rbp + 32], perror$10
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 perror$10:
	; 10 PostCall 32

 perror$11:
	; 12 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 perror$12:
	; 13 FunctionEnd perror
