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

@2277$EEXIST:
	; Initializer SignedInt 0
	dd 0

section .data

@2278$ENOENT:
	; Initializer SignedInt 1
	dd 1

section .data

@2279$EACCES:
	; Initializer SignedInt 2
	dd 2

section .data

@2280$SEEK_SET:
	; Initializer SignedInt 0
	dd 0

section .data

@2281$SEEK_CUR:
	; Initializer SignedInt 1
	dd 1

section .data

@2282$SEEK_END:
	; Initializer SignedInt 2
	dd 2

section .data

@2283$READ:
	; Initializer SignedInt 0
	dd 0

section .data

@2284$WRITE:
	; Initializer SignedInt 1
	dd 1

section .data

@2285$READ_WRITE:
	; Initializer SignedInt 3
	dd 3

section .text

 filecreate:
	; AssignRegister rax integral8$85#
	mov rax, 85

 filecreate$1:
	; IntegralToIntegral £temporary817 name
	mov rdi, [rbp + 24]

 filecreate$2:
	; AssignRegister rdi £temporary817

 filecreate$3:
	; AssignRegister rsi integral8$511#
	mov rsi, 511

 filecreate$4:
	; SysCall
	syscall

 filecreate$5:
	; InspectRegister £temporary819 eax

 filecreate$6:
	; Return £temporary819
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 filecreate$7:
	; FunctionEnd filecreate

section .data

@2499string_r#:
	; Initializer String r
	db "r", 0

section .data

@2501string_0Afileexists2025s2025p0A#:
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
	; Parameter 64 string string_r#
	mov qword [rbp + 64], @2499string_r#

 fileexistsX$3:
	; Call 32 fopen 0
	mov qword [rbp + 32], fileexistsX$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 fileexistsX$4:
	; PostCall 32

 fileexistsX$5:
	; GetReturnValue £temporary820

 fileexistsX$6:
	; Assign filePtr £temporary820
	mov [rbp + 32], rbx

 fileexistsX$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fileexistsX$8:
	; Parameter 64 string string_0Afileexists2025s2025p0A#
	mov qword [rbp + 64], @2501string_0Afileexists2025s2025p0A#

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
	; Equal 19 filePtr integral8$0#
	cmp qword [rbp + 32], 0
	je fileexistsX$19

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
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$19:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexistsX$20:
	; FunctionEnd fileexistsX

section .text

 fileexists:
	; AssignRegister rax integral8$21#
	mov rax, 21

 fileexists$1:
	; IntegralToIntegral £temporary828 name
	mov rdi, [rbp + 24]

 fileexists$2:
	; AssignRegister rdi £temporary828

 fileexists$3:
	; AssignRegister rsi integral8$0#
	mov rsi, 0

 fileexists$4:
	; SysCall
	syscall

 fileexists$5:
	; InspectRegister £temporary830 eax

 fileexists$6:
	; NotEqual 9 £temporary830 integral4$0#
	cmp eax, 0
	jne fileexists$9

 fileexists$7:
	; Assign £temporary832 integral4$1#
	mov ebx, 1

 fileexists$8:
	; Jump 10
	jmp fileexists$10

 fileexists$9:
	; Assign £temporary832 integral4$0#
	mov ebx, 0

 fileexists$10:
	; Return £temporary832
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$11:
	; FunctionEnd fileexists

section .text

 @2522$fileopen:
	; AssignRegister rax integral8$2#
	mov rax, 2

 @2522$fileopen$1:
	; IntegralToIntegral £temporary835 name
	mov rdi, [rbp + 24]

 @2522$fileopen$2:
	; AssignRegister rdi £temporary835

 @2522$fileopen$3:
	; IntegralToIntegral £temporary837 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2522$fileopen$4:
	; AssignRegister rsi £temporary837

 @2522$fileopen$5:
	; SysCall
	syscall

 @2522$fileopen$6:
	; InspectRegister £temporary838 eax

 @2522$fileopen$7:
	; Return £temporary838
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2522$fileopen$8:
	; FunctionEnd fileopen

section .data

@2531integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2534integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fopen:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 fopen$1:
	; GreaterThanEqual 22 index integral4$20#
	cmp dword [rbp + 40], 20
	jge fopen$22

 fopen$2:
	; Multiply £temporary841 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2531integral4$41#]

 fopen$3:
	; IntegralToIntegral £temporary842 £temporary841
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; Add £temporary843 g_fileArray £temporary842
	mov rsi, g_fileArray
	add rsi, rax

 fopen$5:
	; Dereference £temporary844 £temporary843 0

 fopen$6:
	; NotEqual 20 £temporary844.open integral4$0#
	cmp dword [rsi], 0
	jne fopen$20

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
	; Multiply £temporary847 index integral4$41#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@2534integral4$41#]

 fopen$11:
	; IntegralToIntegral £temporary848 £temporary847
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; Add £temporary849 g_fileArray £temporary848
	mov rsi, g_fileArray
	add rsi, rax

 fopen$13:
	; Dereference £temporary850 £temporary849 0

 fopen$14:
	; Address £temporary851 £temporary850

 fopen$15:
	; Parameter 84 pointer £temporary851
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
	; GetReturnValue £temporary852

 fopen$19:
	; Return £temporary852
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$20:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 fopen$21:
	; Jump 1
	jmp fopen$1

 fopen$22:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$23:
	; FunctionEnd fopen

section .data

@2545string_r#:
	; Initializer String r
	db "r", 0

section .data

@2548string_w#:
	; Initializer String w
	db "w", 0

section .data

@2550string_a#:
	; Initializer String a
	db "a", 0

section .data

@2557string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@2559string_r2B10A#:
	; Initializer String r+1\n
	db "r+1", 10, 0

section .data

@2561string_r2B20A#:
	; Initializer String r+2\n
	db "r+2", 10, 0

section .data

@2562string_w2B#:
	; Initializer String w+
	db "w+", 0

section .data

@2566string_a2B#:
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
	; Parameter 84 string string_r#
	mov qword [rbp + 84], @2545string_r#

 freopen$4:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; PostCall 52

 freopen$6:
	; GetReturnValue £temporary855

 freopen$7:
	; NotEqual 16 £temporary855 integral4$0#
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
	jmp @2522$fileopen

 freopen$12:
	; PostCall 52

 freopen$13:
	; GetReturnValue £temporary857

 freopen$14:
	; Assign handle £temporary857
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
	; Parameter 84 string string_w#
	mov qword [rbp + 84], @2548string_w#

 freopen$19:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; PostCall 52

 freopen$21:
	; GetReturnValue £temporary858

 freopen$22:
	; NotEqual 30 £temporary858 integral4$0#
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
	; GetReturnValue £temporary860

 freopen$28:
	; Assign handle £temporary860
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
	; Parameter 84 string string_a#
	mov qword [rbp + 84], @2550string_a#

 freopen$33:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; PostCall 52

 freopen$35:
	; GetReturnValue £temporary861

 freopen$36:
	; NotEqual 59 £temporary861 integral4$0#
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
	jmp @2522$fileopen

 freopen$41:
	; PostCall 52

 freopen$42:
	; GetReturnValue £temporary863

 freopen$43:
	; Assign handle £temporary863
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
	; GetReturnValue £temporary866

 freopen$57:
	; Assign handle £temporary866
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
	; Parameter 84 string string_r2B#
	mov qword [rbp + 84], @2557string_r2B#

 freopen$62:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; PostCall 52

 freopen$64:
	; GetReturnValue £temporary869

 freopen$65:
	; NotEqual 82 £temporary869 integral4$0#
	cmp ebx, 0
	jne freopen$82

 freopen$66:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; Parameter 76 string string_r2B10A#
	mov qword [rbp + 76], @2559string_r2B10A#

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
	jmp @2522$fileopen

 freopen$74:
	; PostCall 52

 freopen$75:
	; GetReturnValue £temporary872

 freopen$76:
	; Assign handle £temporary872
	mov [rbp + 48], ebx

 freopen$77:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$78:
	; Parameter 76 string string_r2B20A#
	mov qword [rbp + 76], @2561string_r2B20A#

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
	; Parameter 84 string string_w2B#
	mov qword [rbp + 84], @2562string_w2B#

 freopen$85:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$86
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$86:
	; PostCall 52

 freopen$87:
	; GetReturnValue £temporary874

 freopen$88:
	; NotEqual 110 £temporary874 integral4$0#
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
	; GetReturnValue £temporary876

 freopen$94:
	; Equal 103 £temporary876 integral4$0#
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
	jmp @2522$fileopen

 freopen$99:
	; PostCall 52

 freopen$100:
	; GetReturnValue £temporary877

 freopen$101:
	; Assign handle £temporary877
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
	; GetReturnValue £temporary878

 freopen$108:
	; Assign handle £temporary878
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
	; Parameter 84 string string_a2B#
	mov qword [rbp + 84], @2566string_a2B#

 freopen$113:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$114
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$114:
	; PostCall 52

 freopen$115:
	; GetReturnValue £temporary882

 freopen$116:
	; NotEqual 138 £temporary882 integral4$0#
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
	jmp @2522$fileopen

 freopen$121:
	; PostCall 52

 freopen$122:
	; GetReturnValue £temporary884

 freopen$123:
	; Assign handle £temporary884
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
	; GetReturnValue £temporary887

 freopen$137:
	; Assign handle £temporary887
	mov [rbp + 48], ebx

 freopen$138:
	; Equal 154 handle integral4$minus1#
	cmp dword [rbp + 48], -1
	je freopen$154

 freopen$139:
	; Dereference £temporary903 stream 0
	mov rsi, [rbp + 40]

 freopen$140:
	; Assign £temporary903.open integral4$1#
	mov dword [rsi], 1

 freopen$141:
	; Dereference £temporary904 stream 0
	mov rsi, [rbp + 40]

 freopen$142:
	; Assign £temporary904.handle handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$143:
	; Dereference £temporary905 stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; Assign £temporary905.size integral4$0#
	mov dword [rsi + 33], 0

 freopen$145:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$146:
	; Dereference £temporary906 stream 0
	mov rsi, [rbp + 40]

 freopen$147:
	; Parameter 76 array £temporary906.name
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
	; Dereference £temporary908 stream 0
	mov rsi, [rbp + 40]

 freopen$152:
	; Assign £temporary908.temporary integral4$0#
	mov dword [rsi + 37], 0

 freopen$153:
	; Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$154:
	; Dereference £temporary909 stream 0
	mov rsi, [rbp + 40]

 freopen$155:
	; Assign £temporary909.open integral4$0#
	mov dword [rsi], 0

 freopen$156:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$157:
	; FunctionEnd freopen

section .data

@2631integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2633integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fflush:
	; NotEqual 22 stream integral8$0#
	cmp qword [rbp + 24], 0
	jne fflush$22

 fflush$1:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 fflush$2:
	; GreaterThanEqual 22 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fflush$22

 fflush$3:
	; Multiply £temporary915 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2631integral4$41#]

 fflush$4:
	; IntegralToIntegral £temporary916 £temporary915
	mov rbx, 4294967295
	and rax, rbx

 fflush$5:
	; Add £temporary917 g_fileArray £temporary916
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; Dereference £temporary918 £temporary917 0

 fflush$7:
	; Equal 20 £temporary918.open integral4$0#
	cmp dword [rsi], 0
	je fflush$20

 fflush$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; Multiply £temporary919 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2633integral4$41#]

 fflush$10:
	; IntegralToIntegral £temporary920 £temporary919
	mov rbx, 4294967295
	and rax, rbx

 fflush$11:
	; Add £temporary921 g_fileArray £temporary920
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; Dereference £temporary922 £temporary921 0

 fflush$13:
	; Address £temporary923 £temporary922

 fflush$14:
	; Parameter 60 pointer £temporary923
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
	; GetReturnValue £temporary924

 fflush$18:
	; NotEqual 20 £temporary924 integral4$minus1#
	cmp ebx, -1
	jne fflush$20

 fflush$19:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$20:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 fflush$21:
	; Jump 2
	jmp fflush$2

 fflush$22:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$23:
	; FunctionEnd fflush

section .data

@2649integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .data

@2651integral4$41#:
	; Initializer SignedInt 41
	dd 41

section .text

 fclose:
	; Equal 7 stream integral8$0#
	cmp qword [rbp + 24], 0
	je fclose$7

 fclose$1:
	; AssignRegister rax integral8$3#
	mov rax, 3

 fclose$2:
	; Dereference £temporary936 stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; IntegralToIntegral £temporary937 £temporary936.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; AssignRegister rdi £temporary937

 fclose$5:
	; SysCall
	syscall

 fclose$6:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$7:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 fclose$8:
	; GreaterThanEqual 28 index integral4$20#
	cmp dword [rbp + 32], 20
	jge fclose$28

 fclose$9:
	; Multiply £temporary940 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2649integral4$41#]

 fclose$10:
	; IntegralToIntegral £temporary941 £temporary940
	mov rbx, 4294967295
	and rax, rbx

 fclose$11:
	; Add £temporary942 g_fileArray £temporary941
	mov rsi, g_fileArray
	add rsi, rax

 fclose$12:
	; Dereference £temporary943 £temporary942 0

 fclose$13:
	; Equal 26 £temporary943.open integral4$0#
	cmp dword [rsi], 0
	je fclose$26

 fclose$14:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$15:
	; Multiply £temporary944 index integral4$41#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@2651integral4$41#]

 fclose$16:
	; IntegralToIntegral £temporary945 £temporary944
	mov rbx, 4294967295
	and rax, rbx

 fclose$17:
	; Add £temporary946 g_fileArray £temporary945
	mov rsi, g_fileArray
	add rsi, rax

 fclose$18:
	; Dereference £temporary947 £temporary946 0

 fclose$19:
	; Address £temporary948 £temporary947

 fclose$20:
	; Parameter 60 pointer £temporary948
	mov [rbp + 60], rsi

 fclose$21:
	; Call 36 fclose 0
	mov qword [rbp + 36], fclose$22
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 fclose$22:
	; PostCall 36

 fclose$23:
	; GetReturnValue £temporary949

 fclose$24:
	; NotEqual 26 £temporary949 integral4$minus1#
	cmp ebx, -1
	jne fclose$26

 fclose$25:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$26:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 fclose$27:
	; Jump 8
	jmp fclose$8

 fclose$28:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$29:
	; FunctionEnd fclose

section .text

 remove:
	; AssignRegister rax integral8$88#
	mov rax, 88

 remove$1:
	; IntegralToIntegral £temporary960 name
	mov rdi, [rbp + 24]

 remove$2:
	; AssignRegister rdi £temporary960

 remove$3:
	; SysCall
	syscall

 remove$4:
	; InspectRegister £temporary961 ebx

 remove$5:
	; NotEqual 7 £temporary961 integral4$0#
	cmp ebx, 0
	jne remove$7

 remove$6:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$7:
	; Assign errno FREMOVE
	mov dword [errno], 18

 remove$8:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$9:
	; FunctionEnd remove

section .text

 rename:
	; AssignRegister rax integral8$82#
	mov rax, 82

 rename$1:
	; IntegralToIntegral £temporary967 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; AssignRegister rdi £temporary967

 rename$3:
	; IntegralToIntegral £temporary969 newName
	mov rsi, [rbp + 32]

 rename$4:
	; AssignRegister rsi £temporary969

 rename$5:
	; SysCall
	syscall

 rename$6:
	; InspectRegister £temporary970 eax

 rename$7:
	; NotEqual 9 £temporary970 integral4$0#
	cmp eax, 0
	jne rename$9

 rename$8:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$9:
	; Assign errno FRENAME
	mov dword [errno], 19

 rename$10:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$11:
	; FunctionEnd rename

section .text

 setvbuf:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setvbuf$1:
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
	; Address £temporary974 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; Parameter 57 pointer £temporary974
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
	; GetReturnValue £temporary975

 fgetc$10:
	; LessThanEqual 13 £temporary975 integral4$0#
	cmp ebx, 0
	jle fgetc$13

 fgetc$11:
	; IntegralToIntegral £temporary977 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; Return £temporary977
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$13:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; FunctionEnd fgetc

section .data

@2696string_25c#:
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
	; Subtract £temporary981 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; GreaterThanEqual 36 count £temporary981
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
	; Parameter 82 string string_25c#
	mov qword [rbp + 82], @2696string_25c#

 fgets$8:
	; Address £temporary983 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; Parameter 90 pointer £temporary983
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
	; IntegralToIntegral £temporary989 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; Add £temporary990 text £temporary989
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; Dereference £temporary991 £temporary990 0

 fgets$17:
	; Assign £temporary991 integral1$0#
	mov byte [rsi], 0

 fgets$18:
	; Jump 36
	jmp fgets$36

 fgets$19:
	; IntegralToIntegral £temporary994 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; NotEqual 26 £temporary994 integral4$minus1#
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; IntegralToIntegral £temporary997 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; Add £temporary998 text £temporary997
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; Dereference £temporary999 £temporary998 0

 fgets$24:
	; Assign £temporary999 integral1$0#
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
	; Assign £temporary1007 count
	mov eax, [rbp + 44]

 fgets$29:
	; Add count count integral4$1#
	inc dword [rbp + 44]

 fgets$30:
	; IntegralToIntegral £temporary1008 £temporary1007
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; Add £temporary1009 text £temporary1008
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; Dereference £temporary1010 £temporary1009 0

 fgets$33:
	; Assign £temporary1010 currChar
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
	; Return text
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgets$37:
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
	; GetReturnValue £temporary1014

 fputs$5:
	; Add size £temporary1014 integral4$1#
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
	; GetReturnValue £temporary1017

 fputs$14:
	; NotEqual 17 £temporary1017 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; Assign £temporary1019 integral4$0#
	mov ebx, 0

 fputs$16:
	; Jump 18
	jmp fputs$18

 fputs$17:
	; Assign £temporary1019 integral4$minus1#
	mov ebx, -1

 fputs$18:
	; Return £temporary1019
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputs$19:
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
	; GetReturnValue £temporary1020

 getchar$5:
	; Return £temporary1020
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getchar$6:
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
	; GetReturnValue £temporary1021

 gets$7:
	; Equal 21 £temporary1021 integral8$0#
	cmp rbx, 0
	je gets$21

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
	; GetReturnValue £temporary1023

 gets$13:
	; Assign size £temporary1023
	mov [rbp + 32], ebx

 gets$14:
	; LessThanEqual 20 size integral4$0#
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; Subtract £temporary1026 size integral4$1#
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; IntegralToIntegral £temporary1027 £temporary1026
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; Add £temporary1028 s £temporary1027
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; Dereference £temporary1029 £temporary1028 0

 gets$19:
	; Assign £temporary1029 integral1$0#
	mov byte [rsi], 0

 gets$20:
	; Return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$21:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$22:
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
	; GetReturnValue £temporary1034

 puts$6:
	; Equal 14 £temporary1034 integral4$0#
	cmp ebx, 0
	je puts$14

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
	; GetReturnValue £temporary1036

 puts$13:
	; Return £temporary1036
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$14:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; FunctionEnd puts

section .text

 ungetc:
	; Dereference £temporary1039 stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; IntegralToIntegral £temporary1040 £temporary1039.ungetc
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; Equal 6 £temporary1040 integral4$minus1#
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; Dereference £temporary1042 stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; IntegralToIntegral £temporary1043 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; Assign £temporary1042.ungetc £temporary1043
	mov [rsi + 24], al

 ungetc$6:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ungetc$7:
	; FunctionEnd ungetc

section .text

 fread:
	; Dereference £temporary1047 stream 0
	mov rsi, [rbp + 40]

 fread$1:
	; IntegralToIntegral £temporary1048 £temporary1047.handle
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fread$2:
	; AssignRegister rdi £temporary1048

 fread$3:
	; IntegralToIntegral £temporary1050 ptr
	mov rsi, [rbp + 24]

 fread$4:
	; AssignRegister rsi £temporary1050

 fread$5:
	; Multiply £temporary1052 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$6:
	; IntegralToIntegral £temporary1053 £temporary1052
	mov rbx, 4294967295
	and rax, rbx

 fread$7:
	; AssignRegister rdx £temporary1053
	mov rdx, rax

 fread$8:
	; AssignRegister rax integral8$0#
	mov rax, 0

 fread$9:
	; SysCall
	syscall

 fread$10:
	; InspectRegister £temporary1055 eax

 fread$11:
	; Return £temporary1055
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$12:
	; FunctionEnd fread

section .text

 fwrite:
	; Dereference £temporary1057 stream 0
	mov rsi, [rbp + 40]

 fwrite$1:
	; IntegralToIntegral £temporary1058 £temporary1057.handle
	mov edi, [rsi + 4]
	mov rax, 4294967295
	and rdi, rax

 fwrite$2:
	; AssignRegister rdi £temporary1058

 fwrite$3:
	; IntegralToIntegral £temporary1060 ptr
	mov rsi, [rbp + 24]

 fwrite$4:
	; AssignRegister rsi £temporary1060

 fwrite$5:
	; Multiply £temporary1062 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$6:
	; IntegralToIntegral £temporary1063 £temporary1062
	mov rbx, 4294967295
	and rax, rbx

 fwrite$7:
	; AssignRegister rdx £temporary1063
	mov rdx, rax

 fwrite$8:
	; AssignRegister rax integral8$1#
	mov rax, 1

 fwrite$9:
	; SysCall
	syscall

 fwrite$10:
	; InspectRegister £temporary1065 eax

 fwrite$11:
	; Return £temporary1065
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$12:
	; FunctionEnd fwrite

section .text

 fseek:
	; AssignRegister rax integral8$8#
	mov rax, 8

 fseek$1:
	; Dereference £temporary1068 stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; IntegralToIntegral £temporary1069 £temporary1068.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; AssignRegister rdi £temporary1069

 fseek$4:
	; IntegralToIntegral £temporary1071 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; AssignRegister rsi £temporary1071

 fseek$6:
	; IntegralToIntegral £temporary1073 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; AssignRegister rdx £temporary1073

 fseek$8:
	; SysCall
	syscall

 fseek$9:
	; InspectRegister £temporary1074 eax

 fseek$10:
	; Return £temporary1074
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$11:
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
	; GetReturnValue £temporary1075

 ftell$7:
	; Return £temporary1075
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$8:
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
	; Dereference £temporary1078 ptr 0
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
	; GetReturnValue £temporary1079

 fgetpos$6:
	; IntegralToIntegral £temporary1080 £temporary1079

 fgetpos$7:
	; Assign £temporary1078 £temporary1080
	mov [rsi], ebx

 fgetpos$8:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetpos$9:
	; FunctionEnd fgetpos

section .text

 fsetpos:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fsetpos$1:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fsetpos$2:
	; Dereference £temporary1081 ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; Parameter 72 signed int £temporary1081
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
	; GetReturnValue £temporary1082

 fsetpos$8:
	; IntegralToIntegral £temporary1083 £temporary1082

 fsetpos$9:
	; Return £temporary1083
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$10:
	; FunctionEnd fsetpos

section .text

 clearerr:
	; Dereference £temporary1084 stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; Assign errno integral4$0#
	mov dword [errno], 0

 clearerr$2:
	; Assign £temporary1084.errno errno
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
	; GetReturnValue £temporary1085

 feof$7:
	; IntegralToIntegral £temporary1086 £temporary1085
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; Assign currPosition £temporary1086
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
	; GetReturnValue £temporary1087

 feof$16:
	; IntegralToIntegral £temporary1088 £temporary1087
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; Assign lastPosition £temporary1088
	mov [rbp + 40], rbx

 feof$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; Parameter 72 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; IntegralToIntegral £temporary1089 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; Parameter 80 signed int £temporary1089
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
	; Assign £temporary1092 integral4$1#
	mov eax, 1

 feof$27:
	; Jump 29
	jmp feof$29

 feof$28:
	; Assign £temporary1092 integral4$0#
	mov eax, 0

 feof$29:
	; Assign endOfFile £temporary1092
	mov [rbp + 48], eax

 feof$30:
	; Return endOfFile
	mov ebx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 feof$31:
	; FunctionEnd feof

section .text

 ferror:
	; Dereference £temporary1093 stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; Return £temporary1093.errno
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$2:
	; FunctionEnd ferror

section .data

@2823string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; Parameter 56 string string_25s3A2025s2E0A#
	mov qword [rbp + 56], @2823string_25s3A2025s2E0A#

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
	; GetReturnValue £temporary1094

 perror$8:
	; Parameter 72 pointer £temporary1094
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
