	global g_inStatus
	global g_inChars
	global g_inDevice
	global g_inCount
	global scanChar
	global unscanChar
	global scanPattern
	global scanString
	global scanLongInt
	global scanUnsignedLongInt
	global scanLongDouble
	global scanFormat
	global scanf
	global vscanf
	global fscanf
	global vfscanf
	global sscanf
	global vsscanf

	extern isspace
	extern isdigit
	extern islower
	extern isupper
	extern tolower
	extern pow
	extern stdin
	extern $StackTop


section .data

g_inStatus:
	; InitializerZero 4
	times 4 db 0

section .data

g_inChars:
	; InitializerZero 4
	times 4 db 0

section .data

g_inDevice:
	; InitializerZero 8
	times 8 db 0

section .data

g_inCount:
	; InitializerZero 4
	times 4 db 0

section .text

 scanChar:
	; Assign c integral1$0#
	mov byte [rbp + 24], 0

 scanChar$1:
	; Case 5 g_inStatus integral4$0#
	mov eax, [g_inStatus]
	cmp eax, 0
	je scanChar$5

 scanChar$2:
	; Case 21 g_inStatus integral4$1#
	cmp eax, 1
	je scanChar$21

 scanChar$3:
	; CaseEnd g_inStatus

 scanChar$4:
	; Jump 30
	jmp scanChar$30

 scanChar$5:
	; IntegralToIntegral £temporary1043 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; Assign stream £temporary1043
	mov [rbp + 25], rax

 scanChar$7:
	; Dereference £temporary1044 stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; Assign handle £temporary1044.handle
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; AssignRegister rax integral8$0#
	mov rax, 0

 scanChar$10:
	; Dereference £temporary1047 stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; IntegralToIntegral £temporary1048 £temporary1047.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; AssignRegister rdi £temporary1048

 scanChar$13:
	; Address £temporary1050 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; IntegralToIntegral £temporary1051 £temporary1050

 scanChar$15:
	; AssignRegister rsi £temporary1051

 scanChar$16:
	; AssignRegister rdx integral8$1#
	mov rdx, 1

 scanChar$17:
	; SysCall
	syscall

 scanChar$18:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanChar$19:
	; SetReturnValue

 scanChar$20:
	; Return c
	mov bl, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$21:
	; IntegralToIntegral £temporary1054 g_inDevice
	mov rax, [g_inDevice]

 scanChar$22:
	; Assign inString £temporary1054
	mov [rbp + 37], rax

 scanChar$23:
	; Assign £temporary1055 g_inChars
	mov eax, [g_inChars]

 scanChar$24:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanChar$25:
	; IntegralToIntegral £temporary1057 £temporary1055
	mov rbx, 4294967295
	and rax, rbx

 scanChar$26:
	; Add £temporary1058 inString £temporary1057
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$27:
	; Dereference £temporary1059 £temporary1058 0

 scanChar$28:
	; SetReturnValue

 scanChar$29:
	; Return £temporary1059
	mov bl, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$30:
	; SetReturnValue

 scanChar$31:
	; Return integral1$0#
	mov bl, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$32:
	; FunctionEnd scanChar

section .text

 unscanChar:
	; Case 4 g_inStatus integral4$0#
	mov eax, [g_inStatus]
	cmp eax, 0
	je unscanChar$4

 unscanChar$1:
	; Case 6 g_inStatus integral4$1#
	cmp eax, 1
	je unscanChar$6

 unscanChar$2:
	; CaseEnd g_inStatus

 unscanChar$3:
	; Jump 7
	jmp unscanChar$7

 unscanChar$4:
	; Subtract g_inChars g_inChars integral4$1#
	dec dword [g_inChars]

 unscanChar$5:
	; Jump 7
	jmp unscanChar$7

 unscanChar$6:
	; Subtract g_inChars g_inChars integral4$1#
	dec dword [g_inChars]

 unscanChar$7:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 unscanChar$8:
	; FunctionEnd unscanChar

section .text

 @3302$strnchr:
	; IntegralToIntegral £temporary1063 i
	mov eax, [rbp + 36]
	cmp eax, 0
	jge @3302$strnchr$1
	neg eax
	neg al

 @3302$strnchr$1:
	; Assign c £temporary1063
	mov [rbp + 44], al

 @3302$strnchr$2:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 @3302$strnchr$3:
	; GreaterThanEqual 16 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge @3302$strnchr$16

 @3302$strnchr$4:
	; IntegralToIntegral £temporary1066 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3302$strnchr$5:
	; Add £temporary1067 text £temporary1066
	mov rsi, [rbp + 24]
	add rsi, rax

 @3302$strnchr$6:
	; Dereference £temporary1068 £temporary1067 0

 @3302$strnchr$7:
	; NotEqual 14 £temporary1068 c
	mov al, [rbp + 44]
	cmp [rsi], al
	jne @3302$strnchr$14

 @3302$strnchr$8:
	; IntegralToIntegral £temporary1070 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3302$strnchr$9:
	; Add £temporary1071 text £temporary1070
	mov rbx, [rbp + 24]
	add rbx, rax

 @3302$strnchr$10:
	; Dereference £temporary1072 £temporary1071 0

 @3302$strnchr$11:
	; Address £temporary1073 £temporary1072

 @3302$strnchr$12:
	; SetReturnValue

 @3302$strnchr$13:
	; Return £temporary1073
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3302$strnchr$14:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 @3302$strnchr$15:
	; Jump 3
	jmp @3302$strnchr$3

 @3302$strnchr$16:
	; SetReturnValue

 @3302$strnchr$17:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3302$strnchr$18:
	; FunctionEnd strnchr

section .text

 scanPattern:
	; Assign index integral4$0#
	mov dword [rbp + 48], 0

 scanPattern$1:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$2:
	; Call 52 scanChar 0
	mov qword [rbp + 52], scanPattern$3
	mov [rbp + 60], rbp
	add rbp, 52
	jmp scanChar

 scanPattern$3:
	; PostCall 52

 scanPattern$4:
	; GetReturnValue £temporary1076

 scanPattern$5:
	; Assign input £temporary1076
	mov [rbp + 52], bl

 scanPattern$6:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; IntegralToIntegral £temporary1077 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; Parameter 77 signed int £temporary1077
	mov [rbp + 77], eax

 scanPattern$9:
	; Call 53 isspace 0
	mov qword [rbp + 53], scanPattern$10
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isspace

 scanPattern$10:
	; PostCall 53

 scanPattern$11:
	; GetReturnValue £temporary1078

 scanPattern$12:
	; Equal 19 £temporary1078 integral4$0#
	cmp ebx, 0
	je scanPattern$19

 scanPattern$13:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$14:
	; Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$15
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$15:
	; PostCall 53

 scanPattern$16:
	; GetReturnValue £temporary1079

 scanPattern$17:
	; Assign input £temporary1079
	mov [rbp + 52], bl

 scanPattern$18:
	; Jump 6
	jmp scanPattern$6

 scanPattern$19:
	; Equal 57 string integral8$0#
	cmp qword [rbp + 24], 0
	je scanPattern$57

 scanPattern$20:
	; NotEqual 30 not integral4$0#
	cmp dword [rbp + 44], 0
	jne scanPattern$30

 scanPattern$21:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$22:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$23:
	; Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$24:
	; IntegralToIntegral £temporary1084 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$25
	neg al
	neg eax

 scanPattern$25:
	; Parameter 89 signed int £temporary1084
	mov [rbp + 89], eax

 scanPattern$26:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$27
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3302$strnchr

 scanPattern$27:
	; PostCall 53

 scanPattern$28:
	; GetReturnValue £temporary1085

 scanPattern$29:
	; NotEqual 40 £temporary1085 integral4$0#
	cmp rbx, 0
	jne scanPattern$40

 scanPattern$30:
	; Equal 52 not integral4$0#
	cmp dword [rbp + 44], 0
	je scanPattern$52

 scanPattern$31:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$32:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$33:
	; Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$34:
	; IntegralToIntegral £temporary1088 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$35
	neg al
	neg eax

 scanPattern$35:
	; Parameter 89 signed int £temporary1088
	mov [rbp + 89], eax

 scanPattern$36:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$37
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3302$strnchr

 scanPattern$37:
	; PostCall 53

 scanPattern$38:
	; GetReturnValue £temporary1089

 scanPattern$39:
	; NotEqual 52 £temporary1089 integral4$0#
	cmp rbx, 0
	jne scanPattern$52

 scanPattern$40:
	; Assign £temporary1095 index
	mov eax, [rbp + 48]

 scanPattern$41:
	; Add index index integral4$1#
	inc dword [rbp + 48]

 scanPattern$42:
	; IntegralToIntegral £temporary1097 £temporary1095
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$43:
	; Add £temporary1098 string £temporary1097
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$44:
	; Dereference £temporary1099 £temporary1098 0

 scanPattern$45:
	; Assign £temporary1099 input
	mov al, [rbp + 52]
	mov [rsi], al

 scanPattern$46:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$47:
	; Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$48
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$48:
	; PostCall 53

 scanPattern$49:
	; GetReturnValue £temporary1100

 scanPattern$50:
	; Assign input £temporary1100
	mov [rbp + 52], bl

 scanPattern$51:
	; Jump 20
	jmp scanPattern$20

 scanPattern$52:
	; IntegralToIntegral £temporary1101 index
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$53:
	; Add £temporary1102 string £temporary1101
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$54:
	; Dereference £temporary1103 £temporary1102 0

 scanPattern$55:
	; Assign £temporary1103 integral1$0#
	mov byte [rsi], 0

 scanPattern$56:
	; Jump 83
	jmp scanPattern$83

 scanPattern$57:
	; NotEqual 67 not integral4$0#
	cmp dword [rbp + 44], 0
	jne scanPattern$67

 scanPattern$58:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$59:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$60:
	; Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$61:
	; IntegralToIntegral £temporary1106 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$62
	neg al
	neg eax

 scanPattern$62:
	; Parameter 89 signed int £temporary1106
	mov [rbp + 89], eax

 scanPattern$63:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$64
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3302$strnchr

 scanPattern$64:
	; PostCall 53

 scanPattern$65:
	; GetReturnValue £temporary1107

 scanPattern$66:
	; NotEqual 77 £temporary1107 integral4$0#
	cmp rbx, 0
	jne scanPattern$77

 scanPattern$67:
	; Equal 83 not integral4$0#
	cmp dword [rbp + 44], 0
	je scanPattern$83

 scanPattern$68:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$69:
	; Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$70:
	; Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$71:
	; IntegralToIntegral £temporary1110 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$72
	neg al
	neg eax

 scanPattern$72:
	; Parameter 89 signed int £temporary1110
	mov [rbp + 89], eax

 scanPattern$73:
	; Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$74
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3302$strnchr

 scanPattern$74:
	; PostCall 53

 scanPattern$75:
	; GetReturnValue £temporary1111

 scanPattern$76:
	; NotEqual 83 £temporary1111 integral4$0#
	cmp rbx, 0
	jne scanPattern$83

 scanPattern$77:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$78:
	; Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$79
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$79:
	; PostCall 53

 scanPattern$80:
	; GetReturnValue £temporary1117

 scanPattern$81:
	; Assign input £temporary1117
	mov [rbp + 52], bl

 scanPattern$82:
	; Jump 57
	jmp scanPattern$57

 scanPattern$83:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanPattern$84:
	; FunctionEnd scanPattern

section .text

 scanString:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 scanString$1:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$2:
	; Call 40 scanChar 0
	mov qword [rbp + 40], scanString$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

 scanString$3:
	; PostCall 40

 scanString$4:
	; GetReturnValue £temporary1120

 scanString$5:
	; Assign input £temporary1120
	mov [rbp + 40], bl

 scanString$6:
	; Assign found integral4$0#
	mov dword [rbp + 41], 0

 scanString$7:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; IntegralToIntegral £temporary1121 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; Parameter 69 signed int £temporary1121
	mov [rbp + 69], eax

 scanString$10:
	; Call 45 isspace 0
	mov qword [rbp + 45], scanString$11
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$11:
	; PostCall 45

 scanString$12:
	; GetReturnValue £temporary1122

 scanString$13:
	; Equal 20 £temporary1122 integral4$0#
	cmp ebx, 0
	je scanString$20

 scanString$14:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$15:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanString$16
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$16:
	; PostCall 45

 scanString$17:
	; GetReturnValue £temporary1123

 scanString$18:
	; Assign input £temporary1123
	mov [rbp + 40], bl

 scanString$19:
	; Jump 7
	jmp scanString$7

 scanString$20:
	; Equal 86 string integral8$0#
	cmp qword [rbp + 24], 0
	je scanString$86

 scanString$21:
	; NotEqual 52 precision integral4$0#
	cmp dword [rbp + 32], 0
	jne scanString$52

 scanString$22:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$23:
	; IntegralToIntegral £temporary1127 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; Parameter 69 signed int £temporary1127
	mov [rbp + 69], eax

 scanString$25:
	; Call 45 isspace 0
	mov qword [rbp + 45], scanString$26
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$26:
	; PostCall 45

 scanString$27:
	; GetReturnValue £temporary1128

 scanString$28:
	; NotEqual 46 £temporary1128 integral4$0#
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; IntegralToIntegral £temporary1131 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; Equal 46 £temporary1131 integral4$minus1#
	cmp eax, -1
	je scanString$46

 scanString$31:
	; Equal 46 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; Assign £temporary1136 index
	mov eax, [rbp + 36]

 scanString$33:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 scanString$34:
	; IntegralToIntegral £temporary1138 £temporary1136
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; Add £temporary1139 string £temporary1138
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; Dereference £temporary1140 £temporary1139 0

 scanString$37:
	; Assign £temporary1140 input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$38:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$39:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanString$40
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$40:
	; PostCall 45

 scanString$41:
	; GetReturnValue £temporary1141

 scanString$42:
	; Assign input £temporary1141
	mov [rbp + 40], bl

 scanString$43:
	; Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$44:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$45:
	; Jump 22
	jmp scanString$22

 scanString$46:
	; IntegralToIntegral £temporary1143 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; Add £temporary1144 string £temporary1143
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; Dereference £temporary1145 £temporary1144 0

 scanString$49:
	; Assign £temporary1145 integral1$0#
	mov byte [rsi], 0

 scanString$50:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$51:
	; Jump 130
	jmp scanString$130

 scanString$52:
	; Assign £temporary1147 precision
	mov eax, [rbp + 32]

 scanString$53:
	; Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 scanString$54:
	; LessThanEqual 79 £temporary1147 integral4$0#
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; IntegralToIntegral £temporary1150 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; Parameter 69 signed int £temporary1150
	mov [rbp + 69], eax

 scanString$58:
	; Call 45 isspace 0
	mov qword [rbp + 45], scanString$59
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$59:
	; PostCall 45

 scanString$60:
	; GetReturnValue £temporary1151

 scanString$61:
	; NotEqual 79 £temporary1151 integral4$0#
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; IntegralToIntegral £temporary1154 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; Equal 79 £temporary1154 integral4$minus1#
	cmp eax, -1
	je scanString$79

 scanString$64:
	; Equal 79 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; Assign £temporary1160 index
	mov eax, [rbp + 36]

 scanString$66:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 scanString$67:
	; IntegralToIntegral £temporary1162 £temporary1160
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; Add £temporary1163 string £temporary1162
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; Dereference £temporary1164 £temporary1163 0

 scanString$70:
	; Assign £temporary1164 input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$71:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$72:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanString$73
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$73:
	; PostCall 45

 scanString$74:
	; GetReturnValue £temporary1165

 scanString$75:
	; Assign input £temporary1165
	mov [rbp + 40], bl

 scanString$76:
	; Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$77:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$78:
	; Jump 52
	jmp scanString$52

 scanString$79:
	; LessThanEqual 130 precision integral4$0#
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$80:
	; IntegralToIntegral £temporary1168 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; Add £temporary1169 string £temporary1168
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; Dereference £temporary1170 £temporary1169 0

 scanString$83:
	; Assign £temporary1170 integral1$0#
	mov byte [rsi], 0

 scanString$84:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$85:
	; Jump 130
	jmp scanString$130

 scanString$86:
	; NotEqual 107 precision integral4$0#
	cmp dword [rbp + 32], 0
	jne scanString$107

 scanString$87:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$88:
	; IntegralToIntegral £temporary1177 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; Parameter 69 signed int £temporary1177
	mov [rbp + 69], eax

 scanString$90:
	; Call 45 isspace 0
	mov qword [rbp + 45], scanString$91
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$91:
	; PostCall 45

 scanString$92:
	; GetReturnValue £temporary1178

 scanString$93:
	; NotEqual 105 £temporary1178 integral4$0#
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; IntegralToIntegral £temporary1181 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; Equal 105 £temporary1181 integral4$minus1#
	cmp eax, -1
	je scanString$105

 scanString$96:
	; Equal 105 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$105

 scanString$97:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$98:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanString$99
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$99:
	; PostCall 45

 scanString$100:
	; GetReturnValue £temporary1186

 scanString$101:
	; Assign input £temporary1186
	mov [rbp + 40], bl

 scanString$102:
	; Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$103:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$104:
	; Jump 87
	jmp scanString$87

 scanString$105:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$106:
	; Jump 130
	jmp scanString$130

 scanString$107:
	; Assign £temporary1189 precision
	mov eax, [rbp + 32]

 scanString$108:
	; Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 scanString$109:
	; LessThanEqual 128 £temporary1189 integral4$0#
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; IntegralToIntegral £temporary1192 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; Parameter 69 signed int £temporary1192
	mov [rbp + 69], eax

 scanString$113:
	; Call 45 isspace 0
	mov qword [rbp + 45], scanString$114
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$114:
	; PostCall 45

 scanString$115:
	; GetReturnValue £temporary1193

 scanString$116:
	; NotEqual 128 £temporary1193 integral4$0#
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; IntegralToIntegral £temporary1196 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; Equal 128 £temporary1196 integral4$minus1#
	cmp eax, -1
	je scanString$128

 scanString$119:
	; Equal 128 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$128

 scanString$120:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$121:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanString$122
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$122:
	; PostCall 45

 scanString$123:
	; GetReturnValue £temporary1202

 scanString$124:
	; Assign input £temporary1202
	mov [rbp + 40], bl

 scanString$125:
	; Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$126:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$127:
	; Jump 107
	jmp scanString$107

 scanString$128:
	; LessThanEqual 130 precision integral4$0#
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$129:
	; Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$130:
	; Equal 132 found integral4$0#
	cmp dword [rbp + 41], 0
	je scanString$132

 scanString$131:
	; Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanString$132:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanString$133:
	; FunctionEnd scanString

section .text

 @3397$isDigitInBase:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3397$isDigitInBase$1:
	; IntegralToIntegral £temporary1216 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3397$isDigitInBase$2
	neg al
	neg eax

 @3397$isDigitInBase$2:
	; Parameter 53 signed int £temporary1216
	mov [rbp + 53], eax

 @3397$isDigitInBase$3:
	; Call 29 isdigit 0
	mov qword [rbp + 29], @3397$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @3397$isDigitInBase$4:
	; PostCall 29

 @3397$isDigitInBase$5:
	; GetReturnValue £temporary1217

 @3397$isDigitInBase$6:
	; Equal 17 £temporary1217 integral4$0#
	cmp ebx, 0
	je @3397$isDigitInBase$17

 @3397$isDigitInBase$7:
	; Subtract £temporary1218 c integral1$48#
	mov al, [rbp + 24]
	sub al, 48

 @3397$isDigitInBase$8:
	; IntegralToIntegral £temporary1219 £temporary1218
	and eax, 255
	cmp al, 0
	jge @3397$isDigitInBase$9
	neg al
	neg eax

 @3397$isDigitInBase$9:
	; Assign value £temporary1219
	mov [rbp + 29], eax

 @3397$isDigitInBase$10:
	; LessThan 14 value integral4$0#
	cmp dword [rbp + 29], 0
	jl @3397$isDigitInBase$14

 @3397$isDigitInBase$11:
	; GreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3397$isDigitInBase$14

 @3397$isDigitInBase$12:
	; Assign £temporary1223 integral4$1#
	mov ebx, 1

 @3397$isDigitInBase$13:
	; Jump 15
	jmp @3397$isDigitInBase$15

 @3397$isDigitInBase$14:
	; Assign £temporary1223 integral4$0#
	mov ebx, 0

 @3397$isDigitInBase$15:
	; SetReturnValue

 @3397$isDigitInBase$16:
	; Return £temporary1223
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3397$isDigitInBase$17:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3397$isDigitInBase$18:
	; IntegralToIntegral £temporary1224 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3397$isDigitInBase$19
	neg al
	neg eax

 @3397$isDigitInBase$19:
	; Parameter 53 signed int £temporary1224
	mov [rbp + 53], eax

 @3397$isDigitInBase$20:
	; Call 29 islower 0
	mov qword [rbp + 29], @3397$isDigitInBase$21
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @3397$isDigitInBase$21:
	; PostCall 29

 @3397$isDigitInBase$22:
	; GetReturnValue £temporary1225

 @3397$isDigitInBase$23:
	; Equal 34 £temporary1225 integral4$0#
	cmp ebx, 0
	je @3397$isDigitInBase$34

 @3397$isDigitInBase$24:
	; Subtract £temporary1226 c integral1$97#
	mov al, [rbp + 24]
	sub al, 97

 @3397$isDigitInBase$25:
	; IntegralToIntegral £temporary1228 £temporary1226
	and eax, 255
	cmp al, 0
	jge @3397$isDigitInBase$26
	neg al
	neg eax

 @3397$isDigitInBase$26:
	; Add value £temporary1228 integral4$10#
	add eax, 10
	mov [rbp + 29], eax

 @3397$isDigitInBase$27:
	; LessThan 31 value integral4$0#
	cmp dword [rbp + 29], 0
	jl @3397$isDigitInBase$31

 @3397$isDigitInBase$28:
	; GreaterThanEqual 31 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3397$isDigitInBase$31

 @3397$isDigitInBase$29:
	; Assign £temporary1232 integral4$1#
	mov ebx, 1

 @3397$isDigitInBase$30:
	; Jump 32
	jmp @3397$isDigitInBase$32

 @3397$isDigitInBase$31:
	; Assign £temporary1232 integral4$0#
	mov ebx, 0

 @3397$isDigitInBase$32:
	; SetReturnValue

 @3397$isDigitInBase$33:
	; Return £temporary1232
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3397$isDigitInBase$34:
	; PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3397$isDigitInBase$35:
	; IntegralToIntegral £temporary1233 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3397$isDigitInBase$36
	neg al
	neg eax

 @3397$isDigitInBase$36:
	; Parameter 53 signed int £temporary1233
	mov [rbp + 53], eax

 @3397$isDigitInBase$37:
	; Call 29 isupper 0
	mov qword [rbp + 29], @3397$isDigitInBase$38
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @3397$isDigitInBase$38:
	; PostCall 29

 @3397$isDigitInBase$39:
	; GetReturnValue £temporary1234

 @3397$isDigitInBase$40:
	; Equal 51 £temporary1234 integral4$0#
	cmp ebx, 0
	je @3397$isDigitInBase$51

 @3397$isDigitInBase$41:
	; Subtract £temporary1235 c integral1$65#
	mov al, [rbp + 24]
	sub al, 65

 @3397$isDigitInBase$42:
	; IntegralToIntegral £temporary1237 £temporary1235
	and eax, 255
	cmp al, 0
	jge @3397$isDigitInBase$43
	neg al
	neg eax

 @3397$isDigitInBase$43:
	; Add value £temporary1237 integral4$10#
	add eax, 10
	mov [rbp + 29], eax

 @3397$isDigitInBase$44:
	; LessThan 48 value integral4$0#
	cmp dword [rbp + 29], 0
	jl @3397$isDigitInBase$48

 @3397$isDigitInBase$45:
	; GreaterThanEqual 48 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3397$isDigitInBase$48

 @3397$isDigitInBase$46:
	; Assign £temporary1241 integral4$1#
	mov ebx, 1

 @3397$isDigitInBase$47:
	; Jump 49
	jmp @3397$isDigitInBase$49

 @3397$isDigitInBase$48:
	; Assign £temporary1241 integral4$0#
	mov ebx, 0

 @3397$isDigitInBase$49:
	; SetReturnValue

 @3397$isDigitInBase$50:
	; Return £temporary1241
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3397$isDigitInBase$51:
	; SetReturnValue

 @3397$isDigitInBase$52:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3397$isDigitInBase$53:
	; FunctionEnd isDigitInBase

section .text

 @3423$digitToValue:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3423$digitToValue$1:
	; IntegralToIntegral £temporary1251 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3423$digitToValue$2
	neg al
	neg eax

 @3423$digitToValue$2:
	; Parameter 49 signed int £temporary1251
	mov [rbp + 49], eax

 @3423$digitToValue$3:
	; Call 25 isdigit 0
	mov qword [rbp + 25], @3423$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @3423$digitToValue$4:
	; PostCall 25

 @3423$digitToValue$5:
	; GetReturnValue £temporary1252

 @3423$digitToValue$6:
	; Equal 11 £temporary1252 integral4$0#
	cmp ebx, 0
	je @3423$digitToValue$11

 @3423$digitToValue$7:
	; Subtract £temporary1253 c integral1$48#
	mov bl, [rbp + 24]
	sub bl, 48

 @3423$digitToValue$8:
	; IntegralToIntegral £temporary1254 £temporary1253
	and ebx, 255
	cmp bl, 0
	jge @3423$digitToValue$9
	neg bl
	neg ebx

 @3423$digitToValue$9:
	; SetReturnValue

 @3423$digitToValue$10:
	; Return £temporary1254
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3423$digitToValue$11:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3423$digitToValue$12:
	; IntegralToIntegral £temporary1255 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3423$digitToValue$13
	neg al
	neg eax

 @3423$digitToValue$13:
	; Parameter 49 signed int £temporary1255
	mov [rbp + 49], eax

 @3423$digitToValue$14:
	; Call 25 islower 0
	mov qword [rbp + 25], @3423$digitToValue$15
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @3423$digitToValue$15:
	; PostCall 25

 @3423$digitToValue$16:
	; GetReturnValue £temporary1256

 @3423$digitToValue$17:
	; Equal 23 £temporary1256 integral4$0#
	cmp ebx, 0
	je @3423$digitToValue$23

 @3423$digitToValue$18:
	; Subtract £temporary1257 c integral1$97#
	mov bl, [rbp + 24]
	sub bl, 97

 @3423$digitToValue$19:
	; IntegralToIntegral £temporary1259 £temporary1257
	and ebx, 255
	cmp bl, 0
	jge @3423$digitToValue$20
	neg bl
	neg ebx

 @3423$digitToValue$20:
	; Add £temporary1258 £temporary1259 integral4$10#
	add ebx, 10

 @3423$digitToValue$21:
	; SetReturnValue

 @3423$digitToValue$22:
	; Return £temporary1258
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3423$digitToValue$23:
	; PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3423$digitToValue$24:
	; IntegralToIntegral £temporary1260 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3423$digitToValue$25
	neg al
	neg eax

 @3423$digitToValue$25:
	; Parameter 49 signed int £temporary1260
	mov [rbp + 49], eax

 @3423$digitToValue$26:
	; Call 25 isupper 0
	mov qword [rbp + 25], @3423$digitToValue$27
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @3423$digitToValue$27:
	; PostCall 25

 @3423$digitToValue$28:
	; GetReturnValue £temporary1261

 @3423$digitToValue$29:
	; Equal 35 £temporary1261 integral4$0#
	cmp ebx, 0
	je @3423$digitToValue$35

 @3423$digitToValue$30:
	; Subtract £temporary1262 c integral1$65#
	mov bl, [rbp + 24]
	sub bl, 65

 @3423$digitToValue$31:
	; IntegralToIntegral £temporary1264 £temporary1262
	and ebx, 255
	cmp bl, 0
	jge @3423$digitToValue$32
	neg bl
	neg ebx

 @3423$digitToValue$32:
	; Add £temporary1263 £temporary1264 integral4$10#
	add ebx, 10

 @3423$digitToValue$33:
	; SetReturnValue

 @3423$digitToValue$34:
	; Return £temporary1263
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3423$digitToValue$35:
	; SetReturnValue

 @3423$digitToValue$36:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3423$digitToValue$37:
	; FunctionEnd digitToValue

section .text

 scanLongInt:
	; Assign longValue integral8$0#
	mov qword [rbp + 28], 0

 scanLongInt$1:
	; Assign minus integral4$0#
	mov dword [rbp + 36], 0

 scanLongInt$2:
	; Assign found integral4$0#
	mov dword [rbp + 40], 0

 scanLongInt$3:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$4:
	; Call 44 scanChar 0
	mov qword [rbp + 44], scanLongInt$5
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanChar

 scanLongInt$5:
	; PostCall 44

 scanLongInt$6:
	; GetReturnValue £temporary1274

 scanLongInt$7:
	; Assign input £temporary1274
	mov [rbp + 44], bl

 scanLongInt$8:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; IntegralToIntegral £temporary1275 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; Parameter 69 signed int £temporary1275
	mov [rbp + 69], eax

 scanLongInt$11:
	; Call 45 isspace 0
	mov qword [rbp + 45], scanLongInt$12
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanLongInt$12:
	; PostCall 45

 scanLongInt$13:
	; GetReturnValue £temporary1276

 scanLongInt$14:
	; Equal 21 £temporary1276 integral4$0#
	cmp ebx, 0
	je scanLongInt$21

 scanLongInt$15:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$16:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$17
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$17:
	; PostCall 45

 scanLongInt$18:
	; GetReturnValue £temporary1277

 scanLongInt$19:
	; Assign input £temporary1277
	mov [rbp + 44], bl

 scanLongInt$20:
	; Jump 8
	jmp scanLongInt$8

 scanLongInt$21:
	; NotEqual 28 input integral1$43#
	cmp byte [rbp + 44], 43
	jne scanLongInt$28

 scanLongInt$22:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$23:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$24
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$24:
	; PostCall 45

 scanLongInt$25:
	; GetReturnValue £temporary1280

 scanLongInt$26:
	; Assign input £temporary1280
	mov [rbp + 44], bl

 scanLongInt$27:
	; Jump 35
	jmp scanLongInt$35

 scanLongInt$28:
	; NotEqual 35 input integral1$45#
	cmp byte [rbp + 44], 45
	jne scanLongInt$35

 scanLongInt$29:
	; Assign minus integral4$1#
	mov dword [rbp + 36], 1

 scanLongInt$30:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$31:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$32
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$32:
	; PostCall 45

 scanLongInt$33:
	; GetReturnValue £temporary1282

 scanLongInt$34:
	; Assign input £temporary1282
	mov [rbp + 44], bl

 scanLongInt$35:
	; NotEqual 59 base integral4$0#
	cmp dword [rbp + 24], 0
	jne scanLongInt$59

 scanLongInt$36:
	; NotEqual 58 input integral1$48#
	cmp byte [rbp + 44], 48
	jne scanLongInt$58

 scanLongInt$37:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$38:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$39
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$39:
	; PostCall 45

 scanLongInt$40:
	; GetReturnValue £temporary1289

 scanLongInt$41:
	; Assign input £temporary1289
	mov [rbp + 44], bl

 scanLongInt$42:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$43:
	; IntegralToIntegral £temporary1290 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$44
	neg al
	neg eax

 scanLongInt$44:
	; Parameter 69 signed int £temporary1290
	mov [rbp + 69], eax

 scanLongInt$45:
	; Call 45 tolower 0
	mov qword [rbp + 45], scanLongInt$46
	mov [rbp + 53], rbp
	add rbp, 45
	jmp tolower

 scanLongInt$46:
	; PostCall 45

 scanLongInt$47:
	; GetReturnValue £temporary1291

 scanLongInt$48:
	; NotEqual 56 £temporary1291 integral4$120#
	cmp ebx, 120
	jne scanLongInt$56

 scanLongInt$49:
	; Assign base integral4$16#
	mov dword [rbp + 24], 16

 scanLongInt$50:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$51:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$52
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$52:
	; PostCall 45

 scanLongInt$53:
	; GetReturnValue £temporary1293

 scanLongInt$54:
	; Assign input £temporary1293
	mov [rbp + 44], bl

 scanLongInt$55:
	; Jump 59
	jmp scanLongInt$59

 scanLongInt$56:
	; Assign base integral4$8#
	mov dword [rbp + 24], 8

 scanLongInt$57:
	; Jump 59
	jmp scanLongInt$59

 scanLongInt$58:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 scanLongInt$59:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$60:
	; Parameter 69 signed char input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$61:
	; Parameter 70 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 70], eax

 scanLongInt$62:
	; Call 45 isDigitInBase 0
	mov qword [rbp + 45], scanLongInt$63
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @3397$isDigitInBase

 scanLongInt$63:
	; PostCall 45

 scanLongInt$64:
	; GetReturnValue £temporary1300

 scanLongInt$65:
	; Equal 82 £temporary1300 integral4$0#
	cmp ebx, 0
	je scanLongInt$82

 scanLongInt$66:
	; IntegralToIntegral £temporary1302 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$67
	neg ebx
	neg rbx

 scanLongInt$67:
	; Multiply longValue longValue £temporary1302
	mov rax, [rbp + 28]
	xor rdx, rdx
	imul rbx
	mov [rbp + 28], rax

 scanLongInt$68:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$69:
	; Parameter 69 signed char input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$70:
	; Call 45 digitToValue 0
	mov qword [rbp + 45], scanLongInt$71
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @3423$digitToValue

 scanLongInt$71:
	; PostCall 45

 scanLongInt$72:
	; GetReturnValue £temporary1303

 scanLongInt$73:
	; IntegralToIntegral £temporary1305 £temporary1303
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$74
	neg ebx
	neg rbx

 scanLongInt$74:
	; Add longValue longValue £temporary1305
	add [rbp + 28], rbx

 scanLongInt$75:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$76:
	; Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$77
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$77:
	; PostCall 45

 scanLongInt$78:
	; GetReturnValue £temporary1306

 scanLongInt$79:
	; Assign input £temporary1306
	mov [rbp + 44], bl

 scanLongInt$80:
	; Assign found integral4$1#
	mov dword [rbp + 40], 1

 scanLongInt$81:
	; Jump 59
	jmp scanLongInt$59

 scanLongInt$82:
	; Equal 85 minus integral4$0#
	cmp dword [rbp + 36], 0
	je scanLongInt$85

 scanLongInt$83:
	; Minus £temporary1308 longValue
	mov rax, [rbp + 28]
	neg rax

 scanLongInt$84:
	; Assign longValue £temporary1308
	mov [rbp + 28], rax

 scanLongInt$85:
	; Equal 87 found integral4$0#
	cmp dword [rbp + 40], 0
	je scanLongInt$87

 scanLongInt$86:
	; Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanLongInt$87:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$88:
	; Parameter 69 signed char input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$89:
	; Call 45 unscanChar 0
	mov qword [rbp + 45], scanLongInt$90
	mov [rbp + 53], rbp
	add rbp, 45
	jmp unscanChar

 scanLongInt$90:
	; PostCall 45

 scanLongInt$91:
	; SetReturnValue

 scanLongInt$92:
	; Return longValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongInt$93:
	; FunctionEnd scanLongInt

section .text

 scanUnsignedLongInt:
	; Assign unsignedLongValue integral8$0#
	mov qword [rbp + 28], 0

 scanUnsignedLongInt$1:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$2:
	; Call 44 scanChar 0
	mov qword [rbp + 44], scanUnsignedLongInt$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanChar

 scanUnsignedLongInt$3:
	; PostCall 44

 scanUnsignedLongInt$4:
	; GetReturnValue £temporary1317

 scanUnsignedLongInt$5:
	; Assign input £temporary1317
	mov [rbp + 44], bl

 scanUnsignedLongInt$6:
	; Assign found integral4$1#
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$7:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; IntegralToIntegral £temporary1318 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; Parameter 73 signed int £temporary1318
	mov [rbp + 73], eax

 scanUnsignedLongInt$10:
	; Call 49 isspace 0
	mov qword [rbp + 49], scanUnsignedLongInt$11
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanUnsignedLongInt$11:
	; PostCall 49

 scanUnsignedLongInt$12:
	; GetReturnValue £temporary1319

 scanUnsignedLongInt$13:
	; Equal 20 £temporary1319 integral4$0#
	cmp ebx, 0
	je scanUnsignedLongInt$20

 scanUnsignedLongInt$14:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$15:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$16
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$16:
	; PostCall 49

 scanUnsignedLongInt$17:
	; GetReturnValue £temporary1320

 scanUnsignedLongInt$18:
	; Assign input £temporary1320
	mov [rbp + 44], bl

 scanUnsignedLongInt$19:
	; Jump 7
	jmp scanUnsignedLongInt$7

 scanUnsignedLongInt$20:
	; NotEqual 26 input integral1$43#
	cmp byte [rbp + 44], 43
	jne scanUnsignedLongInt$26

 scanUnsignedLongInt$21:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$22:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$23
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$23:
	; PostCall 49

 scanUnsignedLongInt$24:
	; GetReturnValue £temporary1323

 scanUnsignedLongInt$25:
	; Assign input £temporary1323
	mov [rbp + 44], bl

 scanUnsignedLongInt$26:
	; NotEqual 50 base integral4$0#
	cmp dword [rbp + 24], 0
	jne scanUnsignedLongInt$50

 scanUnsignedLongInt$27:
	; NotEqual 49 input integral1$48#
	cmp byte [rbp + 44], 48
	jne scanUnsignedLongInt$49

 scanUnsignedLongInt$28:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$29:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$30
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$30:
	; PostCall 49

 scanUnsignedLongInt$31:
	; GetReturnValue £temporary1328

 scanUnsignedLongInt$32:
	; Assign input £temporary1328
	mov [rbp + 44], bl

 scanUnsignedLongInt$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$34:
	; IntegralToIntegral £temporary1329 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$35
	neg al
	neg eax

 scanUnsignedLongInt$35:
	; Parameter 73 signed int £temporary1329
	mov [rbp + 73], eax

 scanUnsignedLongInt$36:
	; Call 49 tolower 0
	mov qword [rbp + 49], scanUnsignedLongInt$37
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanUnsignedLongInt$37:
	; PostCall 49

 scanUnsignedLongInt$38:
	; GetReturnValue £temporary1330

 scanUnsignedLongInt$39:
	; NotEqual 47 £temporary1330 integral4$120#
	cmp ebx, 120
	jne scanUnsignedLongInt$47

 scanUnsignedLongInt$40:
	; Assign base integral4$16#
	mov dword [rbp + 24], 16

 scanUnsignedLongInt$41:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$42:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$43
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$43:
	; PostCall 49

 scanUnsignedLongInt$44:
	; GetReturnValue £temporary1332

 scanUnsignedLongInt$45:
	; Assign input £temporary1332
	mov [rbp + 44], bl

 scanUnsignedLongInt$46:
	; Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$47:
	; Assign base integral4$8#
	mov dword [rbp + 24], 8

 scanUnsignedLongInt$48:
	; Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$49:
	; Assign base integral4$10#
	mov dword [rbp + 24], 10

 scanUnsignedLongInt$50:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$51:
	; Parameter 73 signed char input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$52:
	; Parameter 74 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 74], eax

 scanUnsignedLongInt$53:
	; Call 49 isDigitInBase 0
	mov qword [rbp + 49], scanUnsignedLongInt$54
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @3397$isDigitInBase

 scanUnsignedLongInt$54:
	; PostCall 49

 scanUnsignedLongInt$55:
	; GetReturnValue £temporary1339

 scanUnsignedLongInt$56:
	; Equal 73 £temporary1339 integral4$0#
	cmp ebx, 0
	je scanUnsignedLongInt$73

 scanUnsignedLongInt$57:
	; IntegralToIntegral £temporary1341 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$58:
	; Multiply unsignedLongValue unsignedLongValue £temporary1341
	mov rax, [rbp + 28]
	xor rdx, rdx
	mul rbx
	mov [rbp + 28], rax

 scanUnsignedLongInt$59:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$60:
	; Parameter 73 signed char input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$61:
	; Call 49 digitToValue 0
	mov qword [rbp + 49], scanUnsignedLongInt$62
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @3423$digitToValue

 scanUnsignedLongInt$62:
	; PostCall 49

 scanUnsignedLongInt$63:
	; GetReturnValue £temporary1342

 scanUnsignedLongInt$64:
	; IntegralToIntegral £temporary1344 £temporary1342
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$65:
	; Add unsignedLongValue unsignedLongValue £temporary1344
	add [rbp + 28], rbx

 scanUnsignedLongInt$66:
	; Assign found integral4$1#
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$67:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$68:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$69
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$69:
	; PostCall 49

 scanUnsignedLongInt$70:
	; GetReturnValue £temporary1345

 scanUnsignedLongInt$71:
	; Assign input £temporary1345
	mov [rbp + 44], bl

 scanUnsignedLongInt$72:
	; Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$73:
	; Equal 75 found integral4$0#
	cmp dword [rbp + 45], 0
	je scanUnsignedLongInt$75

 scanUnsignedLongInt$74:
	; Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanUnsignedLongInt$75:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$76:
	; Parameter 73 signed char input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$77:
	; Call 49 unscanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$78
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanUnsignedLongInt$78:
	; PostCall 49

 scanUnsignedLongInt$79:
	; SetReturnValue

 scanUnsignedLongInt$80:
	; Return unsignedLongValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanUnsignedLongInt$81:
	; FunctionEnd scanUnsignedLongInt

section .data

@3507floating8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@3512floating8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@3520floating8$10.0#:
	; Initializer Double 10.0
	dq 10.0

section .text

 scanLongDouble:
	; Assign minus integral4$0#
	mov dword [rbp + 24], 0

 scanLongDouble$1:
	; Assign found integral4$0#
	mov dword [rbp + 28], 0

 scanLongDouble$2:
	; PushFloat floating8$0.0#
	fldz

 scanLongDouble$3:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$4:
	; PushFloat floating8$1.0#
	fld1

 scanLongDouble$5:
	; PopFloat factor
	fstp qword [rbp + 40]

 scanLongDouble$6:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$7:
	; Call 48 scanChar 0
	mov qword [rbp + 48], scanLongDouble$8
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanLongDouble$8:
	; PostCall 48

 scanLongDouble$9:
	; GetReturnValue £temporary1352

 scanLongDouble$10:
	; Assign input £temporary1352
	mov [rbp + 48], bl

 scanLongDouble$11:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; IntegralToIntegral £temporary1353 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; Parameter 73 signed int £temporary1353
	mov [rbp + 73], eax

 scanLongDouble$14:
	; Call 49 isspace 0
	mov qword [rbp + 49], scanLongDouble$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanLongDouble$15:
	; PostCall 49

 scanLongDouble$16:
	; GetReturnValue £temporary1354

 scanLongDouble$17:
	; Equal 24 £temporary1354 integral4$0#
	cmp ebx, 0
	je scanLongDouble$24

 scanLongDouble$18:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$19:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$20
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$20:
	; PostCall 49

 scanLongDouble$21:
	; GetReturnValue £temporary1355

 scanLongDouble$22:
	; Assign input £temporary1355
	mov [rbp + 48], bl

 scanLongDouble$23:
	; Jump 11
	jmp scanLongDouble$11

 scanLongDouble$24:
	; NotEqual 31 input integral1$43#
	cmp byte [rbp + 48], 43
	jne scanLongDouble$31

 scanLongDouble$25:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$26:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$27
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$27:
	; PostCall 49

 scanLongDouble$28:
	; GetReturnValue £temporary1358

 scanLongDouble$29:
	; Assign input £temporary1358
	mov [rbp + 48], bl

 scanLongDouble$30:
	; Jump 38
	jmp scanLongDouble$38

 scanLongDouble$31:
	; NotEqual 38 input integral1$45#
	cmp byte [rbp + 48], 45
	jne scanLongDouble$38

 scanLongDouble$32:
	; Assign minus integral4$1#
	mov dword [rbp + 24], 1

 scanLongDouble$33:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$34:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$35:
	; PostCall 49

 scanLongDouble$36:
	; GetReturnValue £temporary1360

 scanLongDouble$37:
	; Assign input £temporary1360
	mov [rbp + 48], bl

 scanLongDouble$38:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; IntegralToIntegral £temporary1365 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; Parameter 73 signed int £temporary1365
	mov [rbp + 73], eax

 scanLongDouble$41:
	; Call 49 isdigit 0
	mov qword [rbp + 49], scanLongDouble$42
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$42:
	; PostCall 49

 scanLongDouble$43:
	; GetReturnValue £temporary1366

 scanLongDouble$44:
	; Equal 60 £temporary1366 integral4$0#
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; PushFloat floating8$10.0#
	fld qword [@3507floating8$10.0#]

 scanLongDouble$46:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; Multiply £temporary1367 floating8$10.0# value
	fmul

 scanLongDouble$48:
	; Subtract £temporary1368 input integral1$48#
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; IntegralToIntegral £temporary1370 £temporary1368
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; IntegralToFloating £temporary1369 £temporary1370
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; Add £temporary1371 £temporary1367 £temporary1369
	fadd

 scanLongDouble$52:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$53:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$54:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$55
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$55:
	; PostCall 49

 scanLongDouble$56:
	; GetReturnValue £temporary1372

 scanLongDouble$57:
	; Assign input £temporary1372
	mov [rbp + 48], bl

 scanLongDouble$58:
	; Assign found integral4$1#
	mov dword [rbp + 28], 1

 scanLongDouble$59:
	; Jump 38
	jmp scanLongDouble$38

 scanLongDouble$60:
	; NotEqual 92 input integral1$46#
	cmp byte [rbp + 48], 46
	jne scanLongDouble$92

 scanLongDouble$61:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$62:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$63
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$63:
	; PostCall 49

 scanLongDouble$64:
	; GetReturnValue £temporary1375

 scanLongDouble$65:
	; Assign input £temporary1375
	mov [rbp + 48], bl

 scanLongDouble$66:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; IntegralToIntegral £temporary1376 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; Parameter 73 signed int £temporary1376
	mov [rbp + 73], eax

 scanLongDouble$69:
	; Call 49 isdigit 0
	mov qword [rbp + 49], scanLongDouble$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$70:
	; PostCall 49

 scanLongDouble$71:
	; GetReturnValue £temporary1377

 scanLongDouble$72:
	; Equal 92 £temporary1377 integral4$0#
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; PushFloat floating8$10.0#
	fld qword [@3512floating8$10.0#]

 scanLongDouble$75:
	; Divide £temporary1378 factor floating8$10.0#
	fdiv

 scanLongDouble$76:
	; PopFloat factor
	fstp qword [rbp + 40]

 scanLongDouble$77:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$78:
	; PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$79:
	; Subtract £temporary1379 input integral1$48#
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; IntegralToIntegral £temporary1381 £temporary1379
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; IntegralToFloating £temporary1380 £temporary1381
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; Multiply £temporary1382 factor £temporary1380
	fmul

 scanLongDouble$83:
	; Add £temporary1383 value £temporary1382
	fadd

 scanLongDouble$84:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$85:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$86:
	; Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$87
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$87:
	; PostCall 49

 scanLongDouble$88:
	; GetReturnValue £temporary1384

 scanLongDouble$89:
	; Assign input £temporary1384
	mov [rbp + 48], bl

 scanLongDouble$90:
	; Assign found integral4$1#
	mov dword [rbp + 28], 1

 scanLongDouble$91:
	; Jump 66
	jmp scanLongDouble$66

 scanLongDouble$92:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$93:
	; IntegralToIntegral £temporary1388 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$94
	neg al
	neg eax

 scanLongDouble$94:
	; Parameter 73 signed int £temporary1388
	mov [rbp + 73], eax

 scanLongDouble$95:
	; Call 49 tolower 0
	mov qword [rbp + 49], scanLongDouble$96
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanLongDouble$96:
	; PostCall 49

 scanLongDouble$97:
	; GetReturnValue £temporary1389

 scanLongDouble$98:
	; NotEqual 118 £temporary1389 integral4$101#
	cmp ebx, 101
	jne scanLongDouble$118

 scanLongDouble$99:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$100:
	; Parameter 73 signed int integral4$10#
	mov dword [rbp + 73], 10

 scanLongDouble$101:
	; Call 49 scanLongInt 0
	mov qword [rbp + 49], scanLongDouble$102
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

 scanLongDouble$102:
	; PostCall 49

 scanLongDouble$103:
	; GetReturnValue £temporary1391

 scanLongDouble$104:
	; IntegralToFloating £temporary1392 £temporary1391
	mov [container8bytes#], rbx
	fild qword [container8bytes#]

 scanLongDouble$105:
	; PopFloat exponent
	fstp qword [rbp + 49]

 scanLongDouble$106:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$107:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 57]

 scanLongDouble$108:
	; PushFloat floating8$10.0#
	fld qword [@3520floating8$10.0#]

 scanLongDouble$109:
	; Parameter 81 double floating8$10.0#
	fstp qword [rbp + 89]

 scanLongDouble$110:
	; PushFloat exponent
	fld qword [rbp + 49]

 scanLongDouble$111:
	; Parameter 89 double exponent
	fstp qword [rbp + 97]

 scanLongDouble$112:
	; Call 57 pow 0
	mov qword [rbp + 65], scanLongDouble$113
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

 scanLongDouble$113:
	; PostCall 57
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

 scanLongDouble$114:
	; GetReturnValue £temporary1393

 scanLongDouble$115:
	; Multiply £temporary1394 value £temporary1393
	fmul

 scanLongDouble$116:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$117:
	; Jump 122
	jmp scanLongDouble$122

 scanLongDouble$118:
	; PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$119:
	; Parameter 73 signed char input
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$120:
	; Call 49 unscanChar 0
	mov qword [rbp + 49], scanLongDouble$121
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$121:
	; PostCall 49

 scanLongDouble$122:
	; Equal 126 minus integral4$0#
	cmp dword [rbp + 24], 0
	je scanLongDouble$126

 scanLongDouble$123:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$124:
	; Minus £temporary1398 value
	fchs

 scanLongDouble$125:
	; PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$126:
	; Equal 128 found integral4$0#
	cmp dword [rbp + 28], 0
	je scanLongDouble$128

 scanLongDouble$127:
	; Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanLongDouble$128:
	; PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$129:
	; SetReturnValue

 scanLongDouble$130:
	; Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$131:
	; FunctionEnd scanLongDouble

section .text

 scanFormat:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$1:
	; Assign shortInt integral4$0#
	mov dword [rbp + 53], 0

 scanFormat$2:
	; Assign longIntOrDouble integral4$0#
	mov dword [rbp + 57], 0

 scanFormat$3:
	; Assign longDouble integral4$0#
	mov dword [rbp + 61], 0

 scanFormat$4:
	; Assign star integral4$0#
	mov dword [rbp + 65], 0

 scanFormat$5:
	; Assign g_inCount integral4$0#
	mov dword [g_inCount], 0

 scanFormat$6:
	; Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 scanFormat$7:
	; Assign index integral4$0#
	mov dword [rbp + 93], 0

 scanFormat$8:
	; IntegralToIntegral £temporary1408 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; Add £temporary1409 format £temporary1408
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; Dereference £temporary1410 £temporary1409 0

 scanFormat$11:
	; Equal 338 £temporary1410 integral1$0#
	cmp byte [rsi], 0
	je scanFormat$338

 scanFormat$12:
	; IntegralToIntegral £temporary1413 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; Add £temporary1414 format £temporary1413
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; Dereference £temporary1415 £temporary1414 0

 scanFormat$15:
	; Assign c £temporary1415
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; IntegralToIntegral £temporary1417 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; Add d £temporary1417 integral4$1#
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; Equal 330 percent integral4$0#
	cmp dword [rbp + 49], 0
	je scanFormat$330

 scanFormat$19:
	; Subtract £temporary1418 d integral4$1#
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; Case 38 £temporary1418 integral4$104#
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; Case 40 £temporary1418 integral4$108#
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; Case 42 £temporary1418 integral4$76#
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; Case 44 £temporary1418 integral4$42#
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; Case 46 £temporary1418 integral4$99#
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; Case 64 £temporary1418 integral4$115#
	cmp eax, 115
	je scanFormat$64

 scanFormat$26:
	; Case 83 £temporary1418 integral4$100#
	cmp eax, 100
	je scanFormat$83

 scanFormat$27:
	; Case 83 £temporary1418 integral4$105#
	cmp eax, 105
	je scanFormat$83

 scanFormat$28:
	; Case 119 £temporary1418 integral4$111#
	cmp eax, 111
	je scanFormat$119

 scanFormat$29:
	; Case 155 £temporary1418 integral4$120#
	cmp eax, 120
	je scanFormat$155

 scanFormat$30:
	; Case 191 £temporary1418 integral4$117#
	cmp eax, 117
	je scanFormat$191

 scanFormat$31:
	; Case 227 £temporary1418 integral4$103#
	cmp eax, 103
	je scanFormat$227

 scanFormat$32:
	; Case 227 £temporary1418 integral4$102#
	cmp eax, 102
	je scanFormat$227

 scanFormat$33:
	; Case 227 £temporary1418 integral4$101#
	cmp eax, 101
	je scanFormat$227

 scanFormat$34:
	; Case 263 £temporary1418 integral4$91#
	cmp eax, 91
	je scanFormat$263

 scanFormat$35:
	; Case 321 £temporary1418 integral4$110#
	cmp eax, 110
	je scanFormat$321

 scanFormat$36:
	; CaseEnd £temporary1418

 scanFormat$37:
	; Jump 336
	jmp scanFormat$336

 scanFormat$38:
	; Assign shortInt integral4$1#
	mov dword [rbp + 53], 1

 scanFormat$39:
	; Jump 336
	jmp scanFormat$336

 scanFormat$40:
	; Assign longIntOrDouble integral4$1#
	mov dword [rbp + 57], 1

 scanFormat$41:
	; Jump 336
	jmp scanFormat$336

 scanFormat$42:
	; Assign longDouble integral4$1#
	mov dword [rbp + 61], 1

 scanFormat$43:
	; Jump 336
	jmp scanFormat$336

 scanFormat$44:
	; Assign star integral4$1#
	mov dword [rbp + 65], 1

 scanFormat$45:
	; Jump 336
	jmp scanFormat$336

 scanFormat$46:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$47:
	; Call 157 scanChar 0
	mov qword [rbp + 157], scanFormat$48
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

 scanFormat$48:
	; PostCall 157

 scanFormat$49:
	; GetReturnValue £temporary1419

 scanFormat$50:
	; Assign charValue £temporary1419
	mov [rbp + 157], bl

 scanFormat$51:
	; NotEqual 59 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$59

 scanFormat$52:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$53:
	; Subtract £temporary1423 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$54:
	; IntegralToIntegral £temporary1424 £temporary1423

 scanFormat$55:
	; Dereference £temporary1425 £temporary1424 0

 scanFormat$56:
	; Assign charPtr £temporary1425
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$57:
	; Dereference £temporary1426 charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$58:
	; Assign £temporary1426 charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$59:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$60:
	; IntegralToIntegral £temporary1429 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$61
	neg al
	neg eax

 scanFormat$61:
	; Equal 336 £temporary1429 integral4$minus1#
	cmp eax, -1
	je scanFormat$336

 scanFormat$62:
	; Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanFormat$63:
	; Jump 336
	jmp scanFormat$336

 scanFormat$64:
	; NotEqual 76 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$76

 scanFormat$65:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$66:
	; Subtract £temporary1437 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$67:
	; IntegralToIntegral £temporary1438 £temporary1437

 scanFormat$68:
	; Dereference £temporary1439 £temporary1438 0

 scanFormat$69:
	; Assign charPtr £temporary1439
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$70:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$71:
	; Parameter 181 pointer charPtr
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$72:
	; Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], 0

 scanFormat$73:
	; Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$74
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$74:
	; PostCall 157

 scanFormat$75:
	; Jump 81
	jmp scanFormat$81

 scanFormat$76:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$77:
	; Parameter 181 pointer integral8$0#
	mov qword [rbp + 181], 0

 scanFormat$78:
	; Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], 0

 scanFormat$79:
	; Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$80
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$80:
	; PostCall 157

 scanFormat$81:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$82:
	; Jump 336
	jmp scanFormat$336

 scanFormat$83:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$84:
	; Parameter 181 signed int integral4$10#
	mov dword [rbp + 181], 10

 scanFormat$85:
	; Call 157 scanLongInt 0
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$86:
	; PostCall 157

 scanFormat$87:
	; GetReturnValue £temporary1444

 scanFormat$88:
	; Assign longValue £temporary1444
	mov [rbp + 69], rbx

 scanFormat$89:
	; NotEqual 117 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$117

 scanFormat$90:
	; Equal 100 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$100

 scanFormat$91:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$92:
	; Subtract £temporary1448 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; IntegralToIntegral £temporary1449 £temporary1448

 scanFormat$94:
	; Dereference £temporary1450 £temporary1449 0

 scanFormat$95:
	; Assign shortPtr £temporary1450
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; Dereference £temporary1451 shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$97:
	; IntegralToIntegral £temporary1452 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; Assign £temporary1451 £temporary1452
	mov [rsi], ax

 scanFormat$99:
	; Jump 117
	jmp scanFormat$117

 scanFormat$100:
	; NotEqual 110 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$110

 scanFormat$101:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$102:
	; Subtract £temporary1456 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; IntegralToIntegral £temporary1457 £temporary1456

 scanFormat$104:
	; Dereference £temporary1458 £temporary1457 0

 scanFormat$105:
	; Assign intPtr £temporary1458
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; Dereference £temporary1459 intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$107:
	; IntegralToIntegral £temporary1460 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; Assign £temporary1459 £temporary1460
	mov [rsi], eax

 scanFormat$109:
	; Jump 117
	jmp scanFormat$117

 scanFormat$110:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$111:
	; Subtract £temporary1462 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; IntegralToIntegral £temporary1463 £temporary1462

 scanFormat$113:
	; Dereference £temporary1464 £temporary1463 0

 scanFormat$114:
	; Assign longPtr £temporary1464
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; Dereference £temporary1465 longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$116:
	; Assign £temporary1465 longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$117:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$118:
	; Jump 336
	jmp scanFormat$336

 scanFormat$119:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$120:
	; Parameter 181 signed int integral4$8#
	mov dword [rbp + 181], 8

 scanFormat$121:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$122
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$122:
	; PostCall 157

 scanFormat$123:
	; GetReturnValue £temporary1473

 scanFormat$124:
	; Assign unsignedLongValue £temporary1473
	mov [rbp + 113], rbx

 scanFormat$125:
	; NotEqual 153 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$153

 scanFormat$126:
	; Equal 136 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$136

 scanFormat$127:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$128:
	; Subtract £temporary1477 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; IntegralToIntegral £temporary1478 £temporary1477

 scanFormat$130:
	; Dereference £temporary1479 £temporary1478 0

 scanFormat$131:
	; Assign unsignedShortPtr £temporary1479
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; Dereference £temporary1480 unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$133:
	; IntegralToIntegral £temporary1481 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$134:
	; Assign £temporary1480 £temporary1481
	mov [rsi], ax

 scanFormat$135:
	; Jump 153
	jmp scanFormat$153

 scanFormat$136:
	; NotEqual 146 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$146

 scanFormat$137:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$138:
	; Subtract £temporary1485 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; IntegralToIntegral £temporary1486 £temporary1485

 scanFormat$140:
	; Dereference £temporary1487 £temporary1486 0

 scanFormat$141:
	; Assign unsignedIntPtr £temporary1487
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; Dereference £temporary1488 unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$143:
	; IntegralToIntegral £temporary1489 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$144:
	; Assign £temporary1488 £temporary1489
	mov [rsi], eax

 scanFormat$145:
	; Jump 153
	jmp scanFormat$153

 scanFormat$146:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$147:
	; Subtract £temporary1491 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; IntegralToIntegral £temporary1492 £temporary1491

 scanFormat$149:
	; Dereference £temporary1493 £temporary1492 0

 scanFormat$150:
	; Assign unsignedLongPtr £temporary1493
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; Dereference £temporary1494 unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$152:
	; Assign £temporary1494 unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$153:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$154:
	; Jump 336
	jmp scanFormat$336

 scanFormat$155:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$156:
	; Parameter 181 signed int integral4$16#
	mov dword [rbp + 181], 16

 scanFormat$157:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$158
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$158:
	; PostCall 157

 scanFormat$159:
	; GetReturnValue £temporary1502

 scanFormat$160:
	; Assign unsignedLongValue £temporary1502
	mov [rbp + 113], rbx

 scanFormat$161:
	; NotEqual 189 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$189

 scanFormat$162:
	; Equal 172 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$172

 scanFormat$163:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$164:
	; Subtract £temporary1506 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; IntegralToIntegral £temporary1507 £temporary1506

 scanFormat$166:
	; Dereference £temporary1508 £temporary1507 0

 scanFormat$167:
	; Assign unsignedShortPtr £temporary1508
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; Dereference £temporary1509 unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$169:
	; IntegralToIntegral £temporary1510 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$170:
	; Assign £temporary1509 £temporary1510
	mov [rsi], ax

 scanFormat$171:
	; Jump 189
	jmp scanFormat$189

 scanFormat$172:
	; NotEqual 182 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$182

 scanFormat$173:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$174:
	; Subtract £temporary1514 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; IntegralToIntegral £temporary1515 £temporary1514

 scanFormat$176:
	; Dereference £temporary1516 £temporary1515 0

 scanFormat$177:
	; Assign unsignedIntPtr £temporary1516
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; Dereference £temporary1517 unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$179:
	; IntegralToIntegral £temporary1518 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$180:
	; Assign £temporary1517 £temporary1518
	mov [rsi], eax

 scanFormat$181:
	; Jump 189
	jmp scanFormat$189

 scanFormat$182:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$183:
	; Subtract £temporary1520 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; IntegralToIntegral £temporary1521 £temporary1520

 scanFormat$185:
	; Dereference £temporary1522 £temporary1521 0

 scanFormat$186:
	; Assign unsignedLongPtr £temporary1522
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; Dereference £temporary1523 unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$188:
	; Assign £temporary1523 unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$189:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$190:
	; Jump 336
	jmp scanFormat$336

 scanFormat$191:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$192:
	; Parameter 181 signed int integral4$0#
	mov dword [rbp + 181], 0

 scanFormat$193:
	; Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$194
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$194:
	; PostCall 157

 scanFormat$195:
	; GetReturnValue £temporary1531

 scanFormat$196:
	; Assign unsignedLongValue £temporary1531
	mov [rbp + 113], rbx

 scanFormat$197:
	; NotEqual 225 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$225

 scanFormat$198:
	; Equal 208 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$208

 scanFormat$199:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$200:
	; Subtract £temporary1535 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; IntegralToIntegral £temporary1536 £temporary1535

 scanFormat$202:
	; Dereference £temporary1537 £temporary1536 0

 scanFormat$203:
	; Assign unsignedShortPtr £temporary1537
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; Dereference £temporary1538 unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$205:
	; IntegralToIntegral £temporary1539 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$206:
	; Assign £temporary1538 £temporary1539
	mov [rsi], ax

 scanFormat$207:
	; Jump 225
	jmp scanFormat$225

 scanFormat$208:
	; NotEqual 218 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$218

 scanFormat$209:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$210:
	; Subtract £temporary1543 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; IntegralToIntegral £temporary1544 £temporary1543

 scanFormat$212:
	; Dereference £temporary1545 £temporary1544 0

 scanFormat$213:
	; Assign unsignedIntPtr £temporary1545
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; Dereference £temporary1546 unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$215:
	; IntegralToIntegral £temporary1547 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$216:
	; Assign £temporary1546 £temporary1547
	mov [rsi], eax

 scanFormat$217:
	; Jump 225
	jmp scanFormat$225

 scanFormat$218:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$219:
	; Subtract £temporary1549 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; IntegralToIntegral £temporary1550 £temporary1549

 scanFormat$221:
	; Dereference £temporary1551 £temporary1550 0

 scanFormat$222:
	; Assign unsignedLongPtr £temporary1551
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; Dereference £temporary1552 unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$224:
	; Assign £temporary1552 unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$225:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$226:
	; Jump 336
	jmp scanFormat$336

 scanFormat$227:
	; PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$228:
	; Call 157 scanLongDouble 0
	mov qword [rbp + 157], scanFormat$229
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$229:
	; PostCall 157

 scanFormat$230:
	; GetReturnValue £temporary1560

 scanFormat$231:
	; PopFloat longDoubleValue
	fstp qword [rbp + 145]

 scanFormat$232:
	; NotEqual 261 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$261

 scanFormat$233:
	; Equal 243 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	je scanFormat$243

 scanFormat$234:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$235:
	; Subtract £temporary1564 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; IntegralToIntegral £temporary1565 £temporary1564

 scanFormat$237:
	; Dereference £temporary1566 £temporary1565 0

 scanFormat$238:
	; Assign doublePtr £temporary1566
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; Dereference £temporary1567 doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$240:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; PopFloat £temporary1567
	fstp qword [rsi]

 scanFormat$242:
	; Jump 261
	jmp scanFormat$261

 scanFormat$243:
	; Equal 253 longDouble integral4$0#
	cmp dword [rbp + 61], 0
	je scanFormat$253

 scanFormat$244:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$245:
	; Subtract £temporary1570 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; IntegralToIntegral £temporary1571 £temporary1570

 scanFormat$247:
	; Dereference £temporary1572 £temporary1571 0

 scanFormat$248:
	; Assign longDoublePtr £temporary1572
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; Dereference £temporary1573 longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$250:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; PopFloat £temporary1573
	fstp qword [rsi]

 scanFormat$252:
	; Jump 261
	jmp scanFormat$261

 scanFormat$253:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$254:
	; Subtract £temporary1575 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; IntegralToIntegral £temporary1576 £temporary1575

 scanFormat$256:
	; Dereference £temporary1577 £temporary1576 0

 scanFormat$257:
	; Assign floatPtr £temporary1577
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; Dereference £temporary1578 floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$259:
	; PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; PopFloat £temporary1578
	fstp dword [rsi]

 scanFormat$261:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$262:
	; Jump 336
	jmp scanFormat$336

 scanFormat$263:
	; Assign not integral4$0#
	mov dword [rbp + 157], 0

 scanFormat$264:
	; Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$265:
	; IntegralToIntegral £temporary1589 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; Add £temporary1590 format £temporary1589
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; Dereference £temporary1591 £temporary1590 0

 scanFormat$268:
	; NotEqual 271 £temporary1591 integral1$94#
	cmp byte [rsi], 94
	jne scanFormat$271

 scanFormat$269:
	; Assign not integral4$1#
	mov dword [rbp + 157], 1

 scanFormat$270:
	; Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$271:
	; Assign startIndex index
	mov eax, [rbp + 93]
	mov [rbp + 161], eax

 scanFormat$272:
	; IntegralToIntegral £temporary1596 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$273:
	; Add £temporary1597 format £temporary1596
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$274:
	; Dereference £temporary1598 £temporary1597 0

 scanFormat$275:
	; Equal 278 £temporary1598 integral1$93#
	cmp byte [rsi], 93
	je scanFormat$278

 scanFormat$276:
	; Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$277:
	; Jump 272
	jmp scanFormat$272

 scanFormat$278:
	; Subtract size index startIndex
	mov eax, [rbp + 93]
	sub eax, [rbp + 161]
	mov [rbp + 165], eax

 scanFormat$279:
	; IntegralToIntegral £temporary1602 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$280:
	; Add £temporary1603 format £temporary1602
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$281:
	; Dereference £temporary1604 £temporary1603 0

 scanFormat$282:
	; Assign c £temporary1604
	mov al, [rsi]
	mov [rbp + 169], al

 scanFormat$283:
	; IntegralToIntegral £temporary1605 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$284:
	; Add £temporary1606 format £temporary1605
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$285:
	; Dereference £temporary1607 £temporary1606 0

 scanFormat$286:
	; Assign £temporary1607 integral1$0#
	mov byte [rsi], 0

 scanFormat$287:
	; NotEqual 305 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$305

 scanFormat$288:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$289:
	; Subtract £temporary1611 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$290:
	; IntegralToIntegral £temporary1612 £temporary1611

 scanFormat$291:
	; Dereference £temporary1613 £temporary1612 0

 scanFormat$292:
	; Assign string £temporary1613
	mov rax, [rsi]
	mov [rbp + 170], rax

 scanFormat$293:
	; PreCall 178 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$294:
	; Parameter 202 pointer string
	mov rax, [rbp + 170]
	mov [rbp + 202], rax

 scanFormat$295:
	; IntegralToIntegral £temporary1614 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$296:
	; Add £temporary1615 format £temporary1614
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$297:
	; Dereference £temporary1616 £temporary1615 0

 scanFormat$298:
	; Address £temporary1617 £temporary1616

 scanFormat$299:
	; Parameter 210 pointer £temporary1617
	mov [rbp + 210], rsi

 scanFormat$300:
	; Parameter 218 signed int size
	mov eax, [rbp + 165]
	mov [rbp + 218], eax

 scanFormat$301:
	; Parameter 222 signed int not
	mov eax, [rbp + 157]
	mov [rbp + 222], eax

 scanFormat$302:
	; Call 178 scanPattern 0
	mov qword [rbp + 178], scanFormat$303
	mov [rbp + 186], rbp
	add rbp, 178
	jmp scanPattern

 scanFormat$303:
	; PostCall 178

 scanFormat$304:
	; Jump 316
	jmp scanFormat$316

 scanFormat$305:
	; PreCall 170 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$306:
	; Parameter 194 pointer integral8$0#
	mov qword [rbp + 194], 0

 scanFormat$307:
	; IntegralToIntegral £temporary1619 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$308:
	; Add £temporary1620 format £temporary1619
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$309:
	; Dereference £temporary1621 £temporary1620 0

 scanFormat$310:
	; Address £temporary1622 £temporary1621

 scanFormat$311:
	; Parameter 202 pointer £temporary1622
	mov [rbp + 202], rsi

 scanFormat$312:
	; Parameter 210 signed int size
	mov eax, [rbp + 165]
	mov [rbp + 210], eax

 scanFormat$313:
	; Parameter 214 signed int not
	mov eax, [rbp + 157]
	mov [rbp + 214], eax

 scanFormat$314:
	; Call 170 scanPattern 0
	mov qword [rbp + 170], scanFormat$315
	mov [rbp + 178], rbp
	add rbp, 170
	jmp scanPattern

 scanFormat$315:
	; PostCall 170

 scanFormat$316:
	; IntegralToIntegral £temporary1626 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$317:
	; Add £temporary1627 format £temporary1626
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$318:
	; Dereference £temporary1628 £temporary1627 0

 scanFormat$319:
	; Assign £temporary1628 c
	mov al, [rbp + 169]
	mov [rsi], al

 scanFormat$320:
	; Jump 336
	jmp scanFormat$336

 scanFormat$321:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$322:
	; Subtract £temporary1630 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$323:
	; IntegralToIntegral £temporary1631 £temporary1630

 scanFormat$324:
	; Dereference £temporary1632 £temporary1631 0

 scanFormat$325:
	; Assign charsPtr £temporary1632
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$326:
	; Dereference £temporary1633 charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$327:
	; Assign £temporary1633 g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$328:
	; Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$329:
	; Jump 336
	jmp scanFormat$336

 scanFormat$330:
	; NotEqual 336 c integral1$37#
	cmp byte [rbp + 40], 37
	jne scanFormat$336

 scanFormat$331:
	; Assign percent integral4$1#
	mov dword [rbp + 49], 1

 scanFormat$332:
	; Assign shortInt integral4$0#
	mov dword [rbp + 53], 0

 scanFormat$333:
	; Assign longIntOrDouble integral4$0#
	mov dword [rbp + 57], 0

 scanFormat$334:
	; Assign longDouble integral4$0#
	mov dword [rbp + 61], 0

 scanFormat$335:
	; Assign star integral4$0#
	mov dword [rbp + 65], 0

 scanFormat$336:
	; Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$337:
	; Jump 8
	jmp scanFormat$8

 scanFormat$338:
	; SetReturnValue

 scanFormat$339:
	; Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$340:
	; FunctionEnd scanFormat

section .text

 scanf:
	; Address £temporary1640 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; IntegralToIntegral £temporary1641 £temporary1640

 scanf$2:
	; Add arg_list £temporary1641 integral8$8#
	add rsi, 8
	mov [rdi + 32], rsi

 scanf$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanf$4:
	; Parameter 64 pointer format
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 scanf$5:
	; Parameter 72 pointer arg_list
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 scanf$6:
	; Call 40 vscanf 0
	mov qword [rdi + 40], scanf$7
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vscanf

 scanf$7:
	; PostCall 40

 scanf$8:
	; GetReturnValue £temporary1643

 scanf$9:
	; SetReturnValue

 scanf$10:
	; Return £temporary1643
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanf$11:
	; FunctionEnd scanf

section .text

 vscanf:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vscanf$1:
	; Parameter 64 pointer stdin
	mov rax, [stdin]
	mov [rbp + 64], rax

 vscanf$2:
	; Parameter 72 pointer format
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vscanf$3:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vscanf$4:
	; Call 40 vfscanf 0
	mov qword [rbp + 40], vscanf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfscanf

 vscanf$5:
	; PostCall 40

 vscanf$6:
	; GetReturnValue £temporary1645

 vscanf$7:
	; SetReturnValue

 vscanf$8:
	; Return £temporary1645
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$9:
	; FunctionEnd vscanf

section .text

 fscanf:
	; Address £temporary1646 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; IntegralToIntegral £temporary1647 £temporary1646

 fscanf$2:
	; Add arg_list £temporary1647 integral8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 fscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fscanf$4:
	; Parameter 72 pointer inStream
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fscanf$5:
	; Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fscanf$6:
	; Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fscanf$7:
	; Call 48 vfscanf 0
	mov qword [rdi + 48], fscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfscanf

 fscanf$8:
	; PostCall 48

 fscanf$9:
	; GetReturnValue £temporary1649

 fscanf$10:
	; SetReturnValue

 fscanf$11:
	; Return £temporary1649
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fscanf$12:
	; FunctionEnd fscanf

section .text

 vfscanf:
	; Assign g_inStatus integral4$0#
	mov dword [g_inStatus], 0

 vfscanf$1:
	; IntegralToIntegral £temporary1651 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; Assign g_inDevice £temporary1651
	mov [g_inDevice], rax

 vfscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfscanf$4:
	; Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfscanf$5:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfscanf$6:
	; Call 48 scanFormat 0
	mov qword [rbp + 48], vfscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vfscanf$7:
	; PostCall 48

 vfscanf$8:
	; GetReturnValue £temporary1652

 vfscanf$9:
	; SetReturnValue

 vfscanf$10:
	; Return £temporary1652
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$11:
	; FunctionEnd vfscanf

section .text

 sscanf:
	; Address £temporary1653 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; IntegralToIntegral £temporary1654 £temporary1653

 sscanf$2:
	; Add arg_list £temporary1654 integral8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 sscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sscanf$4:
	; Parameter 72 pointer inString
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sscanf$5:
	; Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sscanf$6:
	; Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sscanf$7:
	; Call 48 vsscanf 0
	mov qword [rdi + 48], sscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsscanf

 sscanf$8:
	; PostCall 48

 sscanf$9:
	; GetReturnValue £temporary1656

 sscanf$10:
	; SetReturnValue

 sscanf$11:
	; Return £temporary1656
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sscanf$12:
	; FunctionEnd sscanf

section .text

 vsscanf:
	; Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 vsscanf$1:
	; IntegralToIntegral £temporary1658 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; Assign g_inDevice £temporary1658
	mov [g_inDevice], rax

 vsscanf$3:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsscanf$4:
	; Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsscanf$5:
	; Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsscanf$6:
	; Call 48 scanFormat 0
	mov qword [rbp + 48], vsscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vsscanf$7:
	; PostCall 48

 vsscanf$8:
	; GetReturnValue £temporary1659

 vsscanf$9:
	; SetReturnValue

 vsscanf$10:
	; Return £temporary1659
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$11:
	; FunctionEnd vsscanf
