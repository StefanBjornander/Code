	global g_fileArray
	global stdin
	global stdout
	global stderr
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

	extern strcmp
	extern strcpy
	extern fscanf
	extern strlen
	extern fputc
	extern errno
	extern strerror
	extern printf
	extern $StackTop


section .data

g_fileArray:
	; Initializer SignedInt 1
	dd 1
	; Initializer Unsigned_Int 0
	dd 0
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer Unsigned_Int 1
	dd 1
	; InitializerZero 33
	times 33 db 0
	; Initializer SignedInt 1
	dd 1
	; Initializer Unsigned_Int 2
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

@2192$EEXIST:
	; Initializer SignedInt 0
	dd 0

section .data

@2193$ENOENT:
	; Initializer SignedInt 1
	dd 1

section .data

@2194$EACCES:
	; Initializer SignedInt 2
	dd 2

section .data

@2195$SEEK_SET:
	; Initializer SignedInt 0
	dd 0

section .data

@2196$SEEK_CUR:
	; Initializer SignedInt 1
	dd 1

section .data

@2197$SEEK_END:
	; Initializer SignedInt 2
	dd 2

section .data

@2198$READ:
	; Initializer SignedInt 64
	dd 64

section .data

@2199$WRITE:
	; Initializer SignedInt 65
	dd 65

section .data

@2200$READ_WRITE:
	; Initializer SignedInt 66
	dd 66

section .text

 @2202$filecreate:
	; AssignRegister rax 85
	mov rax, 85

 @2202$filecreate$1:
	; IntegralToIntegral ┬útemporary711 name
	mov rdi, [rbp + 24]

 @2202$filecreate$2:
	; AssignRegister rdi ┬útemporary711

 @2202$filecreate$3:
	; AssignRegister rsi 511
	mov rsi, 511

 @2202$filecreate$4:
	; SysCall
	syscall

 @2202$filecreate$5:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2202$filecreate$6:
	; FunctionEnd filecreate

section .text

 fileexists:
	; Return 1
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$1:
	; FunctionEnd fileexists

section .text

 @2206$fileopen:
	; AssignRegister rax 2
	mov rax, 2

 @2206$fileopen$1:
	; IntegralToIntegral ┬útemporary715 name
	mov rdi, [rbp + 24]

 @2206$fileopen$2:
	; AssignRegister rdi ┬útemporary715

 @2206$fileopen$3:
	; IntegralToIntegral ┬útemporary717 mode
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2206$fileopen$4:
	; AssignRegister rsi ┬útemporary717

 @2206$fileopen$5:
	; SysCall
	syscall

 @2206$fileopen$6:
	; InspectRegister ┬útemporary718 rax

 @2206$fileopen$7:
	; IntegralToIntegral ┬útemporary719 ┬útemporary718

 @2206$fileopen$8:
	; Return ┬útemporary719
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2206$fileopen$9:
	; FunctionEnd fileopen

section .data

Array_41#:
	; Initializer Array 41
	dq 41

section .text

 fopen:
	; Assign index 0
	mov dword [rbp + 40], 0

 fopen$1:
	; SignedGreaterThanEqual 22 index 20
	cmp dword [rbp + 40], 20
	jge fopen$22

 fopen$2:
	; IntegralToIntegral ┬útemporary723 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 fopen$3:
	; UnsignedMultiply ┬útemporary724 ┬útemporary723 41
	xor rdx, rdx
	mul qword [Array_41#]

 fopen$4:
	; BinaryAdd ┬útemporary725 g_fileArray ┬útemporary724
	mov rsi, g_fileArray
	add rsi, rax

 fopen$5:
	; Dereference ┬útemporary722 -> ┬útemporary725 ┬útemporary725 0

 fopen$6:
	; NotEqual 20 ┬útemporary722.open -> ┬útemporary725 0
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
	; IntegralToIntegral ┬útemporary729 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 fopen$11:
	; UnsignedMultiply ┬útemporary730 ┬útemporary729 41
	xor rdx, rdx
	mul qword [Array_41#]

 fopen$12:
	; BinaryAdd ┬útemporary731 g_fileArray ┬útemporary730
	mov rsi, g_fileArray
	add rsi, rax

 fopen$13:
	; Dereference ┬útemporary728 -> ┬útemporary731 ┬útemporary731 0

 fopen$14:
	; Address ┬útemporary732 ┬útemporary728 -> ┬útemporary731

 fopen$15:
	; Parameter 84 pointer ┬útemporary732
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
	; GetReturnValue ┬útemporary733

 fopen$19:
	; Return ┬útemporary733
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$20:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 fopen$21:
	; Goto 1
	jmp fopen$1

 fopen$22:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$23:
	; FunctionEnd fopen

section .data

string_r#:
	; Initializer String r
	db "r", 0

section .data

string_w#:
	; Initializer String w
	db "w", 0

section .data

string_a#:
	; Initializer String a
	db "a", 0

section .data

string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

string_w2B#:
	; Initializer String w+
	db "w+", 0

section .data

string_a2B#:
	; Initializer String a+
	db "a+", 0

section .text

 freopen:
	; Assign handle -1
	mov dword [rbp + 48], -1

 freopen$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$2:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; Parameter 84 pointer "r"
	mov qword [rbp + 84], string_r#

 freopen$4:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; PostCall 52

 freopen$6:
	; GetReturnValue ┬útemporary734

 freopen$7:
	; NotEqual 16 ┬útemporary734 0
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$9:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; Parameter 84 unsignedshortint 64
	mov word [rbp + 84], 64

 freopen$11:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2206$fileopen

 freopen$12:
	; PostCall 52

 freopen$13:
	; GetReturnValue ┬útemporary736

 freopen$14:
	; Assign handle ┬útemporary736
	mov [rbp + 48], ebx

 freopen$15:
	; Goto 130
	jmp freopen$130

 freopen$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$17:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; Parameter 84 pointer "w"
	mov qword [rbp + 84], string_w#

 freopen$19:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; PostCall 52

 freopen$21:
	; GetReturnValue ┬útemporary737

 freopen$22:
	; NotEqual 30 ┬útemporary737 0
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
	jmp @2202$filecreate

 freopen$26:
	; PostCall 52

 freopen$27:
	; GetReturnValue ┬útemporary739

 freopen$28:
	; Assign handle ┬útemporary739
	mov [rbp + 48], ebx

 freopen$29:
	; Goto 130
	jmp freopen$130

 freopen$30:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$31:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; Parameter 84 pointer "a"
	mov qword [rbp + 84], string_a#

 freopen$33:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; PostCall 52

 freopen$35:
	; GetReturnValue ┬útemporary740

 freopen$36:
	; NotEqual 59 ┬útemporary740 0
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$38:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; Parameter 84 unsignedshortint 65
	mov word [rbp + 84], 65

 freopen$40:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2206$fileopen

 freopen$41:
	; PostCall 52

 freopen$42:
	; GetReturnValue ┬útemporary742

 freopen$43:
	; Assign handle ┬útemporary742
	mov [rbp + 48], ebx

 freopen$44:
	; Equal 52 handle -1
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$46:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; Parameter 84 signedint 0
	mov dword [rbp + 84], 0

 freopen$48:
	; Parameter 88 signedint 2
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
	; Goto 130
	jmp freopen$130

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
	jmp @2202$filecreate

 freopen$55:
	; PostCall 52

 freopen$56:
	; GetReturnValue ┬útemporary745

 freopen$57:
	; Assign handle ┬útemporary745
	mov [rbp + 48], ebx

 freopen$58:
	; Goto 130
	jmp freopen$130

 freopen$59:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$60:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; Parameter 84 pointer "r+"
	mov qword [rbp + 84], string_r2B#

 freopen$62:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; PostCall 52

 freopen$64:
	; GetReturnValue ┬útemporary746

 freopen$65:
	; NotEqual 74 ┬útemporary746 0
	cmp ebx, 0
	jne freopen$74

 freopen$66:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$67:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$68:
	; Parameter 84 unsignedshortint 66
	mov word [rbp + 84], 66

 freopen$69:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$70
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2206$fileopen

 freopen$70:
	; PostCall 52

 freopen$71:
	; GetReturnValue ┬útemporary748

 freopen$72:
	; Assign handle ┬útemporary748
	mov [rbp + 48], ebx

 freopen$73:
	; Goto 130
	jmp freopen$130

 freopen$74:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$75:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$76:
	; Parameter 84 pointer "w+"
	mov qword [rbp + 84], string_w2B#

 freopen$77:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$78
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$78:
	; PostCall 52

 freopen$79:
	; GetReturnValue ┬útemporary749

 freopen$80:
	; NotEqual 102 ┬útemporary749 0
	cmp ebx, 0
	jne freopen$102

 freopen$81:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$82:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$83:
	; Call 52 fileexists 0
	mov qword [rbp + 52], freopen$84
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$84:
	; PostCall 52

 freopen$85:
	; GetReturnValue ┬útemporary751

 freopen$86:
	; Equal 95 ┬útemporary751 0
	cmp ebx, 0
	je freopen$95

 freopen$87:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$88:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$89:
	; Parameter 84 unsignedshortint 66
	mov word [rbp + 84], 66

 freopen$90:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$91
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2206$fileopen

 freopen$91:
	; PostCall 52

 freopen$92:
	; GetReturnValue ┬útemporary752

 freopen$93:
	; Assign handle ┬útemporary752
	mov [rbp + 48], ebx

 freopen$94:
	; Goto 130
	jmp freopen$130

 freopen$95:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$96:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$98
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2202$filecreate

 freopen$98:
	; PostCall 52

 freopen$99:
	; GetReturnValue ┬útemporary753

 freopen$100:
	; Assign handle ┬útemporary753
	mov [rbp + 48], ebx

 freopen$101:
	; Goto 130
	jmp freopen$130

 freopen$102:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$103:
	; Parameter 76 pointer mode
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$104:
	; Parameter 84 pointer "a+"
	mov qword [rbp + 84], string_a2B#

 freopen$105:
	; Call 52 strcmp 0
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$106:
	; PostCall 52

 freopen$107:
	; GetReturnValue ┬útemporary755

 freopen$108:
	; NotEqual 130 ┬útemporary755 0
	cmp ebx, 0
	jne freopen$130

 freopen$109:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$110:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$111:
	; Parameter 84 unsignedshortint 66
	mov word [rbp + 84], 66

 freopen$112:
	; Call 52 fileopen 0
	mov qword [rbp + 52], freopen$113
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2206$fileopen

 freopen$113:
	; PostCall 52

 freopen$114:
	; GetReturnValue ┬útemporary757

 freopen$115:
	; Assign handle ┬útemporary757
	mov [rbp + 48], ebx

 freopen$116:
	; Equal 124 handle -1
	cmp dword [rbp + 48], -1
	je freopen$124

 freopen$117:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$118:
	; Parameter 76 pointer stream
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$119:
	; Parameter 84 signedint 0
	mov dword [rbp + 84], 0

 freopen$120:
	; Parameter 88 signedint 2
	mov dword [rbp + 88], 2

 freopen$121:
	; Call 52 fseek 0
	mov qword [rbp + 52], freopen$122
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$122:
	; PostCall 52

 freopen$123:
	; Goto 130
	jmp freopen$130

 freopen$124:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$125:
	; Parameter 76 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$126:
	; Call 52 filecreate 0
	mov qword [rbp + 52], freopen$127
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2202$filecreate

 freopen$127:
	; PostCall 52

 freopen$128:
	; GetReturnValue ┬útemporary760

 freopen$129:
	; Assign handle ┬útemporary760
	mov [rbp + 48], ebx

 freopen$130:
	; Equal 146 handle -1
	cmp dword [rbp + 48], -1
	je freopen$146

 freopen$131:
	; Dereference ┬útemporary762 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$132:
	; Assign ┬útemporary762 -> stream 1
	mov dword [rsi], 1

 freopen$133:
	; Dereference ┬útemporary763 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$134:
	; Assign ┬útemporary763 -> stream handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$135:
	; Dereference ┬útemporary764 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$136:
	; Assign ┬útemporary764 -> stream 0
	mov dword [rsi + 33], 0

 freopen$137:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 freopen$138:
	; Dereference ┬útemporary765 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$139:
	; Parameter 76 pointer ┬útemporary765 -> stream
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$140:
	; Parameter 84 pointer name
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$141:
	; Call 52 strcpy 0
	mov qword [rbp + 52], freopen$142
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$142:
	; PostCall 52

 freopen$143:
	; Dereference ┬útemporary767 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$144:
	; Assign ┬útemporary767 -> stream 0
	mov dword [rsi + 37], 0

 freopen$145:
	; Return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$146:
	; Dereference ┬útemporary768 -> stream stream 0
	mov rsi, [rbp + 40]

 freopen$147:
	; Assign ┬útemporary768 -> stream 0
	mov dword [rsi], 0

 freopen$148:
	; Return 0
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$149:
	; FunctionEnd freopen

section .text

 fflush:
	; NotEqual 22 stream 0
	cmp qword [rbp + 24], 0
	jne fflush$22

 fflush$1:
	; Assign index 0
	mov dword [rbp + 32], 0

 fflush$2:
	; SignedGreaterThanEqual 22 index 20
	cmp dword [rbp + 32], 20
	jge fflush$22

 fflush$3:
	; IntegralToIntegral ┬útemporary773 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fflush$4:
	; UnsignedMultiply ┬útemporary774 ┬útemporary773 41
	xor rdx, rdx
	mul qword [Array_41#]

 fflush$5:
	; BinaryAdd ┬útemporary775 g_fileArray ┬útemporary774
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; Dereference ┬útemporary772 -> ┬útemporary775 ┬útemporary775 0

 fflush$7:
	; Equal 20 ┬útemporary772.open -> ┬útemporary775 0
	cmp dword [rsi], 0
	je fflush$20

 fflush$8:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fflush$9:
	; IntegralToIntegral ┬útemporary777 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fflush$10:
	; UnsignedMultiply ┬útemporary778 ┬útemporary777 41
	xor rdx, rdx
	mul qword [Array_41#]

 fflush$11:
	; BinaryAdd ┬útemporary779 g_fileArray ┬útemporary778
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; Dereference ┬útemporary776 -> ┬útemporary779 ┬útemporary779 0

 fflush$13:
	; Address ┬útemporary780 ┬útemporary776 -> ┬útemporary779

 fflush$14:
	; Parameter 60 pointer ┬útemporary780
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
	; GetReturnValue ┬útemporary781

 fflush$18:
	; NotEqual 20 ┬útemporary781 -1
	cmp ebx, -1
	jne fflush$20

 fflush$19:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$20:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 fflush$21:
	; Goto 2
	jmp fflush$2

 fflush$22:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$23:
	; FunctionEnd fflush

section .text

 fclose:
	; Equal 7 stream 0
	cmp qword [rbp + 24], 0
	je fclose$7

 fclose$1:
	; AssignRegister rax 3
	mov rax, 3

 fclose$2:
	; Dereference ┬útemporary787 -> stream stream 0
	mov rsi, [rbp + 24]

 fclose$3:
	; IntegralToIntegral ┬útemporary788 ┬útemporary787 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; AssignRegister rdi ┬útemporary788

 fclose$5:
	; SysCall
	syscall

 fclose$6:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$7:
	; Assign index 0
	mov dword [rbp + 32], 0

 fclose$8:
	; SignedGreaterThanEqual 28 index 20
	cmp dword [rbp + 32], 20
	jge fclose$28

 fclose$9:
	; IntegralToIntegral ┬útemporary792 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fclose$10:
	; UnsignedMultiply ┬útemporary793 ┬útemporary792 41
	xor rdx, rdx
	mul qword [Array_41#]

 fclose$11:
	; BinaryAdd ┬útemporary794 g_fileArray ┬útemporary793
	mov rsi, g_fileArray
	add rsi, rax

 fclose$12:
	; Dereference ┬útemporary791 -> ┬útemporary794 ┬útemporary794 0

 fclose$13:
	; Equal 26 ┬útemporary791.open -> ┬útemporary794 0
	cmp dword [rsi], 0
	je fclose$26

 fclose$14:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fclose$15:
	; IntegralToIntegral ┬útemporary796 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fclose$16:
	; UnsignedMultiply ┬útemporary797 ┬útemporary796 41
	xor rdx, rdx
	mul qword [Array_41#]

 fclose$17:
	; BinaryAdd ┬útemporary798 g_fileArray ┬útemporary797
	mov rsi, g_fileArray
	add rsi, rax

 fclose$18:
	; Dereference ┬útemporary795 -> ┬útemporary798 ┬útemporary798 0

 fclose$19:
	; Address ┬útemporary799 ┬útemporary795 -> ┬útemporary798

 fclose$20:
	; Parameter 60 pointer ┬útemporary799
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
	; GetReturnValue ┬útemporary800

 fclose$24:
	; NotEqual 26 ┬útemporary800 -1
	cmp ebx, -1
	jne fclose$26

 fclose$25:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$26:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 fclose$27:
	; Goto 8
	jmp fclose$8

 fclose$28:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$29:
	; FunctionEnd fclose

section .text

 remove:
	; AssignRegister rax 88
	mov rax, 88

 remove$1:
	; IntegralToIntegral ┬útemporary805 name
	mov rdi, [rbp + 24]

 remove$2:
	; AssignRegister rdi ┬útemporary805

 remove$3:
	; SysCall
	syscall

 remove$4:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$5:
	; FunctionEnd remove

section .text

 rename:
	; AssignRegister rax 82
	mov rax, 82

 rename$1:
	; IntegralToIntegral ┬útemporary808 oldName
	mov rdi, [rbp + 24]

 rename$2:
	; AssignRegister rdi ┬útemporary808

 rename$3:
	; IntegralToIntegral ┬útemporary810 newName
	mov rsi, [rbp + 32]

 rename$4:
	; AssignRegister rsi ┬útemporary810

 rename$5:
	; SysCall
	syscall

 rename$6:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$7:
	; FunctionEnd rename

section .text

 setvbuf:
	; Return 0
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
	; Assign c 0
	mov byte [rbp + 32], 0

 fgetc$1:
	; PreCall 33 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgetc$2:
	; Address ┬útemporary811 c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; Parameter 57 pointer ┬útemporary811
	mov [rbp + 57], rsi

 fgetc$4:
	; Parameter 65 signedint 1
	mov dword [rbp + 65], 1

 fgetc$5:
	; Parameter 69 signedint 1
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
	; GetReturnValue ┬útemporary812

 fgetc$10:
	; SignedLessThanEqual 13 ┬útemporary812 0
	cmp ebx, 0
	jle fgetc$13

 fgetc$11:
	; IntegralToIntegral ┬útemporary814 c
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; Return ┬útemporary814
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$13:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; FunctionEnd fgetc

section .data

string_25c#:
	; Initializer String %c
	db "%c", 0

section .text

 fgets:
	; Assign count 0
	mov dword [rbp + 44], 0

 fgets$1:
	; Assign prevChar 0
	mov byte [rbp + 48], 0

 fgets$2:
	; BinarySubtract ┬útemporary816 size 1
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; SignedGreaterThanEqual 36 count ┬útemporary816
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; Assign currChar 0
	mov byte [rbp + 49], 0

 fgets$5:
	; PreCall 50 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fgets$6:
	; Parameter 74 pointer stream
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; Parameter 82 pointer "%c"
	mov qword [rbp + 82], string_25c#

 fgets$8:
	; Address ┬útemporary818 currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; Parameter 90 pointer ┬útemporary818
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
	; NotEqual 19 prevChar 13
	cmp byte [rbp + 48], 13
	jne fgets$19

 fgets$13:
	; NotEqual 19 currChar 10
	cmp byte [rbp + 49], 10
	jne fgets$19

 fgets$14:
	; IntegralToIntegral ┬útemporary824 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; BinaryAdd ┬útemporary826 text ┬útemporary824
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; Dereference ┬útemporary823 -> ┬útemporary826 ┬útemporary826 0

 fgets$17:
	; Assign ┬útemporary823 -> ┬útemporary826 0
	mov byte [rsi], 0

 fgets$18:
	; Goto 36
	jmp fgets$36

 fgets$19:
	; IntegralToIntegral ┬útemporary827 currChar
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; NotEqual 26 ┬útemporary827 -1
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; IntegralToIntegral ┬útemporary830 count
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; BinaryAdd ┬útemporary832 text ┬útemporary830
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; Dereference ┬útemporary829 -> ┬útemporary832 ┬útemporary832 0

 fgets$24:
	; Assign ┬útemporary829 -> ┬útemporary832 0
	mov byte [rsi], 0

 fgets$25:
	; Goto 36
	jmp fgets$36

 fgets$26:
	; Equal 34 currChar 13
	cmp byte [rbp + 49], 13
	je fgets$34

 fgets$27:
	; Equal 34 currChar 10
	cmp byte [rbp + 49], 10
	je fgets$34

 fgets$28:
	; Assign ┬útemporary836 count
	mov eax, [rbp + 44]

 fgets$29:
	; BinaryAdd count count 1
	inc dword [rbp + 44]

 fgets$30:
	; IntegralToIntegral ┬útemporary838 ┬útemporary836
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; BinaryAdd ┬útemporary840 text ┬útemporary838
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; Dereference ┬útemporary837 -> ┬útemporary840 ┬útemporary840 0

 fgets$33:
	; Assign ┬útemporary837 -> ┬útemporary840 currChar
	mov al, [rbp + 49]
	mov [rsi], al

 fgets$34:
	; Assign prevChar currChar
	mov al, [rbp + 49]
	mov [rbp + 48], al

 fgets$35:
	; Goto 2
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
	; GetReturnValue ┬útemporary842

 fputs$5:
	; BinaryAdd size ┬útemporary842 1
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputs$7:
	; Parameter 68 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; Parameter 76 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; Parameter 80 signedint 1
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
	; GetReturnValue ┬útemporary845

 fputs$14:
	; NotEqual 17 ┬útemporary845 size
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; Assign ┬útemporary847 0
	mov ebx, 0

 fputs$16:
	; Goto 18
	jmp fputs$18

 fputs$17:
	; Assign ┬útemporary847 -1
	mov ebx, -1

 fputs$18:
	; Return ┬útemporary847
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
	; GetReturnValue ┬útemporary848

 getchar$5:
	; Return ┬útemporary848
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
	; Parameter 64 signedint -1
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
	; GetReturnValue ┬útemporary849

 gets$7:
	; Equal 21 ┬útemporary849 0
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
	; GetReturnValue ┬útemporary851

 gets$13:
	; Assign size ┬útemporary851
	mov [rbp + 32], ebx

 gets$14:
	; SignedLessThanEqual 20 size 0
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; BinarySubtract ┬útemporary853 size 1
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; IntegralToIntegral ┬útemporary855 ┬útemporary853
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; BinaryAdd ┬útemporary857 s ┬útemporary855
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; Dereference ┬útemporary854 -> ┬útemporary857 ┬útemporary857 0

 gets$19:
	; Assign ┬útemporary854 -> ┬útemporary857 0
	mov byte [rsi], 0

 gets$20:
	; Return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$21:
	; Return 0
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
	; GetReturnValue ┬útemporary858

 puts$6:
	; Equal 14 ┬útemporary858 0
	cmp ebx, 0
	je puts$14

 puts$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 puts$8:
	; Parameter 56 signedint 10
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
	; GetReturnValue ┬útemporary860

 puts$13:
	; Return ┬útemporary860
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$14:
	; Return -1
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; FunctionEnd puts

section .text

 ungetc:
	; Dereference ┬útemporary861 -> stream stream 0
	mov rsi, [rbp + 28]

 ungetc$1:
	; IntegralToIntegral ┬útemporary862 ┬útemporary861 -> stream
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; Equal 6 ┬útemporary862 -1
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; Dereference ┬útemporary864 -> stream stream 0
	mov rsi, [rbp + 28]

 ungetc$4:
	; IntegralToIntegral ┬útemporary865 c
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; Assign ┬útemporary864 -> stream ┬útemporary865
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
	; AssignRegister rax 0
	mov rax, 0

 fread$1:
	; Dereference ┬útemporary868 -> stream stream 0
	mov rsi, [rbp + 40]

 fread$2:
	; IntegralToIntegral ┬útemporary869 ┬útemporary868 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fread$3:
	; AssignRegister rdi ┬útemporary869

 fread$4:
	; IntegralToIntegral ┬útemporary871 ptr
	mov rsi, [rbp + 24]

 fread$5:
	; AssignRegister rsi ┬útemporary871

 fread$6:
	; SignedMultiply ┬útemporary873 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$7:
	; IntegralToIntegral ┬útemporary874 ┬útemporary873
	mov rbx, 4294967295
	and rax, rbx

 fread$8:
	; AssignRegister rdx ┬útemporary874
	mov rdx, rax

 fread$9:
	; SysCall
	syscall

 fread$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$11:
	; FunctionEnd fread

section .text

 fwrite:
	; AssignRegister rax 0
	mov rax, 0

 fwrite$1:
	; Dereference ┬útemporary877 -> stream stream 0
	mov rsi, [rbp + 40]

 fwrite$2:
	; IntegralToIntegral ┬útemporary878 ┬útemporary877 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fwrite$3:
	; AssignRegister rdi ┬útemporary878

 fwrite$4:
	; IntegralToIntegral ┬útemporary880 ptr
	mov rsi, [rbp + 24]

 fwrite$5:
	; AssignRegister rsi ┬útemporary880

 fwrite$6:
	; SignedMultiply ┬útemporary882 size nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$7:
	; IntegralToIntegral ┬útemporary883 ┬útemporary882
	mov rbx, 4294967295
	and rax, rbx

 fwrite$8:
	; AssignRegister rdx ┬útemporary883
	mov rdx, rax

 fwrite$9:
	; SysCall
	syscall

 fwrite$10:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$11:
	; FunctionEnd fwrite

section .text

 fseek:
	; AssignRegister rax 8
	mov rax, 8

 fseek$1:
	; Dereference ┬útemporary886 -> stream stream 0
	mov rsi, [rbp + 24]

 fseek$2:
	; IntegralToIntegral ┬útemporary887 ┬útemporary886 -> stream
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; AssignRegister rdi ┬útemporary887

 fseek$4:
	; IntegralToIntegral ┬útemporary889 offset
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; AssignRegister rsi ┬útemporary889

 fseek$6:
	; IntegralToIntegral ┬útemporary891 origin
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; AssignRegister rdx ┬útemporary891

 fseek$8:
	; SysCall
	syscall

 fseek$9:
	; Return 0
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$10:
	; FunctionEnd fseek

section .text

 ftell:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ftell$1:
	; Parameter 56 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ftell$2:
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 ftell$3:
	; Parameter 68 signedint 1
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
	; GetReturnValue ┬útemporary892

 ftell$7:
	; Return ┬útemporary892
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$8:
	; FunctionEnd ftell

section .text

 rewind:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rewind$1:
	; FunctionEnd rewind

section .text

 fgetpos:
	; Dereference ┬útemporary895 -> ptr ptr 0
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
	; GetReturnValue ┬útemporary896

 fgetpos$6:
	; IntegralToIntegral ┬útemporary897 ┬útemporary896

 fgetpos$7:
	; Assign ┬útemporary895 -> ptr ┬útemporary897
	mov [rsi], ebx

 fgetpos$8:
	; Return 0
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
	; Dereference ┬útemporary898 -> ptr ptr 0
	mov rsi, [rbp + 32]

 fsetpos$3:
	; Parameter 72 signedint ┬útemporary898 -> ptr
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; Parameter 76 signedint 0
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
	; GetReturnValue ┬útemporary899

 fsetpos$8:
	; IntegralToIntegral ┬útemporary900 ┬útemporary899

 fsetpos$9:
	; Return ┬útemporary900
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$10:
	; FunctionEnd fsetpos

section .text

 clearerr:
	; Dereference ┬útemporary901 -> stream stream 0
	mov rsi, [rbp + 24]

 clearerr$1:
	; Assign errno 0
	mov dword [errno], 0

 clearerr$2:
	; Assign ┬útemporary901 -> stream errno
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
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 feof$3:
	; Parameter 68 signedint 1
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
	; GetReturnValue ┬útemporary902

 feof$7:
	; IntegralToIntegral ┬útemporary903 ┬útemporary902
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; Assign currPosition ┬útemporary903
	mov [rbp + 32], rbx

 feof$9:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$10:
	; Parameter 64 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; Parameter 72 signedint 0
	mov dword [rbp + 72], 0

 feof$12:
	; Parameter 76 signedint 2
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
	; GetReturnValue ┬útemporary904

 feof$16:
	; IntegralToIntegral ┬útemporary905 ┬útemporary904
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; Assign lastPosition ┬útemporary905
	mov [rbp + 40], rbx

 feof$18:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 feof$19:
	; Parameter 72 pointer stream
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; IntegralToIntegral ┬útemporary906 currPosition
	mov rax, [rbp + 32]

 feof$21:
	; Parameter 80 signedint ┬útemporary906
	mov [rbp + 80], eax

 feof$22:
	; Parameter 84 signedint 0
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
	; Assign ┬útemporary909 1
	mov eax, 1

 feof$27:
	; Goto 29
	jmp feof$29

 feof$28:
	; Assign ┬útemporary909 0
	mov eax, 0

 feof$29:
	; Assign endOfFile ┬útemporary909
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
	; Dereference ┬útemporary910 -> stream stream 0
	mov rsi, [rbp + 24]

 ferror$1:
	; Return ┬útemporary910 -> stream
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$2:
	; FunctionEnd ferror

section .data

string_25s3A2025s2E0A#:
	; Initializer String %s: %s.\n
	db "%s: %s.", 10, 0

section .text

 perror:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$1:
	; Parameter 56 pointer "%s: %s.\n"
	mov qword [rbp + 56], string_25s3A2025s2E0A#

 perror$2:
	; Parameter 64 pointer s
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 perror$4:
	; Parameter 96 signedint errno
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
	; GetReturnValue ┬útemporary911

 perror$8:
	; Parameter 72 pointer ┬útemporary911
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
