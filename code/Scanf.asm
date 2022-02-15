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
	; 0 Assign c integral1$0#
	mov byte [rbp + 24], 0

 scanChar$1:
	; 1 Case 5 g_inStatus integral4$0#
	mov eax, [g_inStatus]
	cmp eax, 0
	je scanChar$5

 scanChar$2:
	; 2 Case 21 g_inStatus integral4$1#
	cmp eax, 1
	je scanChar$21

 scanChar$3:
	; 3 CaseEnd g_inStatus

 scanChar$4:
	; 4 Jump 30
	jmp scanChar$30

 scanChar$5:
	; 5 IntegralToIntegral £temporary1046 g_inDevice
	mov rax, [g_inDevice]

 scanChar$6:
	; 6 Assign stream £temporary1046
	mov [rbp + 25], rax

 scanChar$7:
	; 7 Dereference £temporary1047 stream 0
	mov rsi, [rbp + 25]

 scanChar$8:
	; 8 Assign handle £temporary1047.handle
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

 scanChar$9:
	; 9 AssignRegister rax integral8$0#
	mov rax, 0

 scanChar$10:
	; 10 Dereference £temporary1050 stream 0
	mov rsi, [rbp + 25]

 scanChar$11:
	; 11 IntegralToIntegral £temporary1051 £temporary1050.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 scanChar$12:
	; 12 AssignRegister rdi £temporary1051

 scanChar$13:
	; 13 Address £temporary1053 c
	mov rsi, rbp
	add rsi, 24

 scanChar$14:
	; 14 IntegralToIntegral £temporary1054 £temporary1053

 scanChar$15:
	; 15 AssignRegister rsi £temporary1054

 scanChar$16:
	; 16 AssignRegister rdx integral8$1#
	mov rdx, 1

 scanChar$17:
	; 17 SysCall
	syscall

 scanChar$18:
	; 18 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanChar$19:
	; 20 SetReturnValue

 scanChar$20:
	; 21 Return c
	mov bl, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$21:
	; 22 IntegralToIntegral £temporary1057 g_inDevice
	mov rax, [g_inDevice]

 scanChar$22:
	; 23 Assign inString £temporary1057
	mov [rbp + 37], rax

 scanChar$23:
	; 24 Assign £temporary1059 g_inChars
	mov eax, [g_inChars]

 scanChar$24:
	; 25 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanChar$25:
	; 27 IntegralToIntegral £temporary1061 £temporary1059
	mov rbx, 4294967295
	and rax, rbx

 scanChar$26:
	; 28 Add £temporary1062 inString £temporary1061
	mov rsi, [rbp + 37]
	add rsi, rax

 scanChar$27:
	; 29 Dereference £temporary1063 £temporary1062 0

 scanChar$28:
	; 30 SetReturnValue

 scanChar$29:
	; 31 Return £temporary1063
	mov bl, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$30:
	; 32 SetReturnValue

 scanChar$31:
	; 33 Return integral1$0#
	mov bl, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanChar$32:
	; 35 FunctionEnd scanChar

section .text

 unscanChar:
	; 0 Case 4 g_inStatus integral4$0#
	mov eax, [g_inStatus]
	cmp eax, 0
	je unscanChar$4

 unscanChar$1:
	; 1 Case 6 g_inStatus integral4$1#
	cmp eax, 1
	je unscanChar$6

 unscanChar$2:
	; 2 CaseEnd g_inStatus

 unscanChar$3:
	; 3 Jump 7
	jmp unscanChar$7

 unscanChar$4:
	; 4 Subtract g_inChars g_inChars integral4$1#
	dec dword [g_inChars]

 unscanChar$5:
	; 6 Jump 7
	jmp unscanChar$7

 unscanChar$6:
	; 7 Subtract g_inChars g_inChars integral4$1#
	dec dword [g_inChars]

 unscanChar$7:
	; 11 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 unscanChar$8:
	; 12 FunctionEnd unscanChar

section .text

 @3306$strnchr:
	; 0 IntegralToIntegral £temporary1067 i
	mov eax, [rbp + 36]
	cmp eax, 0
	jge @3306$strnchr$1
	neg eax
	neg al

 @3306$strnchr$1:
	; 1 Assign c £temporary1067
	mov [rbp + 44], al

 @3306$strnchr$2:
	; 2 Assign index integral4$0#
	mov dword [rbp + 40], 0

 @3306$strnchr$3:
	; 4 GreaterThanEqual 16 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge @3306$strnchr$16

 @3306$strnchr$4:
	; 6 IntegralToIntegral £temporary1070 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3306$strnchr$5:
	; 7 Add £temporary1071 text £temporary1070
	mov rsi, [rbp + 24]
	add rsi, rax

 @3306$strnchr$6:
	; 8 Dereference £temporary1072 £temporary1071 0

 @3306$strnchr$7:
	; 9 NotEqual 14 £temporary1072 c
	mov al, [rbp + 44]
	cmp [rsi], al
	jne @3306$strnchr$14

 @3306$strnchr$8:
	; 12 IntegralToIntegral £temporary1074 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 @3306$strnchr$9:
	; 13 Add £temporary1075 text £temporary1074
	mov rbx, [rbp + 24]
	add rbx, rax

 @3306$strnchr$10:
	; 14 Dereference £temporary1076 £temporary1075 0

 @3306$strnchr$11:
	; 15 Address £temporary1077 £temporary1076

 @3306$strnchr$12:
	; 16 SetReturnValue

 @3306$strnchr$13:
	; 17 Return £temporary1077
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3306$strnchr$14:
	; 22 Add index index integral4$1#
	inc dword [rbp + 40]

 @3306$strnchr$15:
	; 24 Jump 3
	jmp @3306$strnchr$3

 @3306$strnchr$16:
	; 25 SetReturnValue

 @3306$strnchr$17:
	; 26 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3306$strnchr$18:
	; 28 FunctionEnd strnchr

section .text

 scanPattern:
	; 0 Assign index integral4$0#
	mov dword [rbp + 48], 0

 scanPattern$1:
	; 1 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$2:
	; 2 Call 52 scanChar 0
	mov qword [rbp + 52], scanPattern$3
	mov [rbp + 60], rbp
	add rbp, 52
	jmp scanChar

 scanPattern$3:
	; 3 PostCall 52

 scanPattern$4:
	; 4 GetReturnValue £temporary1080

 scanPattern$5:
	; 5 Assign input £temporary1080
	mov [rbp + 52], bl

 scanPattern$6:
	; 7 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$7:
	; 8 IntegralToIntegral £temporary1081 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

 scanPattern$8:
	; 9 Parameter 77 signed int £temporary1081
	mov [rbp + 77], eax

 scanPattern$9:
	; 10 Call 53 isspace 0
	mov qword [rbp + 53], scanPattern$10
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isspace

 scanPattern$10:
	; 11 PostCall 53

 scanPattern$11:
	; 12 GetReturnValue £temporary1082

 scanPattern$12:
	; 13 Equal 19 £temporary1082 integral4$0#
	cmp ebx, 0
	je scanPattern$19

 scanPattern$13:
	; 15 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$14:
	; 16 Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$15
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$15:
	; 17 PostCall 53

 scanPattern$16:
	; 18 GetReturnValue £temporary1083

 scanPattern$17:
	; 19 Assign input £temporary1083
	mov [rbp + 52], bl

 scanPattern$18:
	; 21 Jump 6
	jmp scanPattern$6

 scanPattern$19:
	; 22 Equal 57 string integral8$0#
	cmp qword [rbp + 24], 0
	je scanPattern$57

 scanPattern$20:
	; 26 NotEqual 30 not integral4$0#
	cmp dword [rbp + 44], 0
	jne scanPattern$30

 scanPattern$21:
	; 28 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$22:
	; 29 Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$23:
	; 30 Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$24:
	; 31 IntegralToIntegral £temporary1088 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$25
	neg al
	neg eax

 scanPattern$25:
	; 32 Parameter 89 signed int £temporary1088
	mov [rbp + 89], eax

 scanPattern$26:
	; 33 Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$27
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3306$strnchr

 scanPattern$27:
	; 34 PostCall 53

 scanPattern$28:
	; 35 GetReturnValue £temporary1089

 scanPattern$29:
	; 36 NotEqual 40 £temporary1089 integral4$0#
	cmp rbx, 0
	jne scanPattern$40

 scanPattern$30:
	; 38 Equal 52 not integral4$0#
	cmp dword [rbp + 44], 0
	je scanPattern$52

 scanPattern$31:
	; 40 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$32:
	; 41 Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$33:
	; 42 Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$34:
	; 43 IntegralToIntegral £temporary1092 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$35
	neg al
	neg eax

 scanPattern$35:
	; 44 Parameter 89 signed int £temporary1092
	mov [rbp + 89], eax

 scanPattern$36:
	; 45 Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$37
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3306$strnchr

 scanPattern$37:
	; 46 PostCall 53

 scanPattern$38:
	; 47 GetReturnValue £temporary1093

 scanPattern$39:
	; 48 NotEqual 52 £temporary1093 integral4$0#
	cmp rbx, 0
	jne scanPattern$52

 scanPattern$40:
	; 50 Assign £temporary1100 index
	mov eax, [rbp + 48]

 scanPattern$41:
	; 51 Add index index integral4$1#
	inc dword [rbp + 48]

 scanPattern$42:
	; 53 IntegralToIntegral £temporary1102 £temporary1100
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$43:
	; 54 Add £temporary1103 string £temporary1102
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$44:
	; 55 Dereference £temporary1104 £temporary1103 0

 scanPattern$45:
	; 56 Assign £temporary1104 input
	mov al, [rbp + 52]
	mov [rsi], al

 scanPattern$46:
	; 57 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$47:
	; 58 Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$48
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$48:
	; 59 PostCall 53

 scanPattern$49:
	; 60 GetReturnValue £temporary1105

 scanPattern$50:
	; 61 Assign input £temporary1105
	mov [rbp + 52], bl

 scanPattern$51:
	; 63 Jump 20
	jmp scanPattern$20

 scanPattern$52:
	; 64 IntegralToIntegral £temporary1106 index
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx

 scanPattern$53:
	; 65 Add £temporary1107 string £temporary1106
	mov rsi, [rbp + 24]
	add rsi, rax

 scanPattern$54:
	; 66 Dereference £temporary1108 £temporary1107 0

 scanPattern$55:
	; 67 Assign £temporary1108 integral1$0#
	mov byte [rsi], 0

 scanPattern$56:
	; 68 Jump 83
	jmp scanPattern$83

 scanPattern$57:
	; 71 NotEqual 67 not integral4$0#
	cmp dword [rbp + 44], 0
	jne scanPattern$67

 scanPattern$58:
	; 73 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$59:
	; 74 Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$60:
	; 75 Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$61:
	; 76 IntegralToIntegral £temporary1111 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$62
	neg al
	neg eax

 scanPattern$62:
	; 77 Parameter 89 signed int £temporary1111
	mov [rbp + 89], eax

 scanPattern$63:
	; 78 Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$64
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3306$strnchr

 scanPattern$64:
	; 79 PostCall 53

 scanPattern$65:
	; 80 GetReturnValue £temporary1112

 scanPattern$66:
	; 81 NotEqual 77 £temporary1112 integral4$0#
	cmp rbx, 0
	jne scanPattern$77

 scanPattern$67:
	; 83 Equal 83 not integral4$0#
	cmp dword [rbp + 44], 0
	je scanPattern$83

 scanPattern$68:
	; 85 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$69:
	; 86 Parameter 77 pointer pattern
	mov rax, [rbp + 32]
	mov [rbp + 77], rax

 scanPattern$70:
	; 87 Parameter 85 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 85], eax

 scanPattern$71:
	; 88 IntegralToIntegral £temporary1115 input
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge scanPattern$72
	neg al
	neg eax

 scanPattern$72:
	; 89 Parameter 89 signed int £temporary1115
	mov [rbp + 89], eax

 scanPattern$73:
	; 90 Call 53 strnchr 0
	mov qword [rbp + 53], scanPattern$74
	mov [rbp + 61], rbp
	add rbp, 53
	jmp @3306$strnchr

 scanPattern$74:
	; 91 PostCall 53

 scanPattern$75:
	; 92 GetReturnValue £temporary1116

 scanPattern$76:
	; 93 NotEqual 83 £temporary1116 integral4$0#
	cmp rbx, 0
	jne scanPattern$83

 scanPattern$77:
	; 95 PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanPattern$78:
	; 96 Call 53 scanChar 0
	mov qword [rbp + 53], scanPattern$79
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

 scanPattern$79:
	; 97 PostCall 53

 scanPattern$80:
	; 98 GetReturnValue £temporary1122

 scanPattern$81:
	; 99 Assign input £temporary1122
	mov [rbp + 52], bl

 scanPattern$82:
	; 101 Jump 57
	jmp scanPattern$57

 scanPattern$83:
	; 104 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanPattern$84:
	; 105 FunctionEnd scanPattern

section .text

 scanString:
	; 0 Assign index integral4$0#
	mov dword [rbp + 36], 0

 scanString$1:
	; 1 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$2:
	; 2 Call 40 scanChar 0
	mov qword [rbp + 40], scanString$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

 scanString$3:
	; 3 PostCall 40

 scanString$4:
	; 4 GetReturnValue £temporary1125

 scanString$5:
	; 5 Assign input £temporary1125
	mov [rbp + 40], bl

 scanString$6:
	; 6 Assign found integral4$0#
	mov dword [rbp + 41], 0

 scanString$7:
	; 8 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$8:
	; 9 IntegralToIntegral £temporary1126 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

 scanString$9:
	; 10 Parameter 69 signed int £temporary1126
	mov [rbp + 69], eax

 scanString$10:
	; 11 Call 45 isspace 0
	mov qword [rbp + 45], scanString$11
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$11:
	; 12 PostCall 45

 scanString$12:
	; 13 GetReturnValue £temporary1127

 scanString$13:
	; 14 Equal 20 £temporary1127 integral4$0#
	cmp ebx, 0
	je scanString$20

 scanString$14:
	; 16 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$15:
	; 17 Call 45 scanChar 0
	mov qword [rbp + 45], scanString$16
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$16:
	; 18 PostCall 45

 scanString$17:
	; 19 GetReturnValue £temporary1128

 scanString$18:
	; 20 Assign input £temporary1128
	mov [rbp + 40], bl

 scanString$19:
	; 22 Jump 7
	jmp scanString$7

 scanString$20:
	; 23 Equal 86 string integral8$0#
	cmp qword [rbp + 24], 0
	je scanString$86

 scanString$21:
	; 26 NotEqual 52 precision integral4$0#
	cmp dword [rbp + 32], 0
	jne scanString$52

 scanString$22:
	; 30 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$23:
	; 31 IntegralToIntegral £temporary1132 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

 scanString$24:
	; 32 Parameter 69 signed int £temporary1132
	mov [rbp + 69], eax

 scanString$25:
	; 33 Call 45 isspace 0
	mov qword [rbp + 45], scanString$26
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$26:
	; 34 PostCall 45

 scanString$27:
	; 35 GetReturnValue £temporary1133

 scanString$28:
	; 36 NotEqual 46 £temporary1133 integral4$0#
	cmp ebx, 0
	jne scanString$46

 scanString$29:
	; 38 IntegralToIntegral £temporary1136 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

 scanString$30:
	; 39 Equal 46 £temporary1136 integral4$minus1#
	cmp eax, -1
	je scanString$46

 scanString$31:
	; 41 Equal 46 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$46

 scanString$32:
	; 43 Assign £temporary1142 index
	mov eax, [rbp + 36]

 scanString$33:
	; 44 Add index index integral4$1#
	inc dword [rbp + 36]

 scanString$34:
	; 46 IntegralToIntegral £temporary1144 £temporary1142
	mov rbx, 4294967295
	and rax, rbx

 scanString$35:
	; 47 Add £temporary1145 string £temporary1144
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$36:
	; 48 Dereference £temporary1146 £temporary1145 0

 scanString$37:
	; 49 Assign £temporary1146 input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$38:
	; 50 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$39:
	; 51 Call 45 scanChar 0
	mov qword [rbp + 45], scanString$40
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$40:
	; 52 PostCall 45

 scanString$41:
	; 53 GetReturnValue £temporary1147

 scanString$42:
	; 54 Assign input £temporary1147
	mov [rbp + 40], bl

 scanString$43:
	; 55 Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$44:
	; 56 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$45:
	; 59 Jump 22
	jmp scanString$22

 scanString$46:
	; 60 IntegralToIntegral £temporary1149 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$47:
	; 61 Add £temporary1150 string £temporary1149
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$48:
	; 62 Dereference £temporary1151 £temporary1150 0

 scanString$49:
	; 63 Assign £temporary1151 integral1$0#
	mov byte [rsi], 0

 scanString$50:
	; 64 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$51:
	; 66 Jump 130
	jmp scanString$130

 scanString$52:
	; 69 Assign £temporary1154 precision
	mov eax, [rbp + 32]

 scanString$53:
	; 70 Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 scanString$54:
	; 72 LessThanEqual 79 £temporary1154 integral4$0#
	cmp eax, 0
	jle scanString$79

 scanString$55:
	; 74 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$56:
	; 75 IntegralToIntegral £temporary1157 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

 scanString$57:
	; 76 Parameter 69 signed int £temporary1157
	mov [rbp + 69], eax

 scanString$58:
	; 77 Call 45 isspace 0
	mov qword [rbp + 45], scanString$59
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$59:
	; 78 PostCall 45

 scanString$60:
	; 79 GetReturnValue £temporary1158

 scanString$61:
	; 80 NotEqual 79 £temporary1158 integral4$0#
	cmp ebx, 0
	jne scanString$79

 scanString$62:
	; 82 IntegralToIntegral £temporary1161 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

 scanString$63:
	; 83 Equal 79 £temporary1161 integral4$minus1#
	cmp eax, -1
	je scanString$79

 scanString$64:
	; 85 Equal 79 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$79

 scanString$65:
	; 87 Assign £temporary1168 index
	mov eax, [rbp + 36]

 scanString$66:
	; 88 Add index index integral4$1#
	inc dword [rbp + 36]

 scanString$67:
	; 90 IntegralToIntegral £temporary1170 £temporary1168
	mov rbx, 4294967295
	and rax, rbx

 scanString$68:
	; 91 Add £temporary1171 string £temporary1170
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$69:
	; 92 Dereference £temporary1172 £temporary1171 0

 scanString$70:
	; 93 Assign £temporary1172 input
	mov al, [rbp + 40]
	mov [rsi], al

 scanString$71:
	; 94 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$72:
	; 95 Call 45 scanChar 0
	mov qword [rbp + 45], scanString$73
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$73:
	; 96 PostCall 45

 scanString$74:
	; 97 GetReturnValue £temporary1173

 scanString$75:
	; 98 Assign input £temporary1173
	mov [rbp + 40], bl

 scanString$76:
	; 99 Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$77:
	; 100 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$78:
	; 103 Jump 52
	jmp scanString$52

 scanString$79:
	; 104 LessThanEqual 130 precision integral4$0#
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$80:
	; 107 IntegralToIntegral £temporary1176 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 scanString$81:
	; 108 Add £temporary1177 string £temporary1176
	mov rsi, [rbp + 24]
	add rsi, rax

 scanString$82:
	; 109 Dereference £temporary1178 £temporary1177 0

 scanString$83:
	; 110 Assign £temporary1178 integral1$0#
	mov byte [rsi], 0

 scanString$84:
	; 111 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$85:
	; 117 Jump 130
	jmp scanString$130

 scanString$86:
	; 119 NotEqual 107 precision integral4$0#
	cmp dword [rbp + 32], 0
	jne scanString$107

 scanString$87:
	; 123 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$88:
	; 124 IntegralToIntegral £temporary1185 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

 scanString$89:
	; 125 Parameter 69 signed int £temporary1185
	mov [rbp + 69], eax

 scanString$90:
	; 126 Call 45 isspace 0
	mov qword [rbp + 45], scanString$91
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$91:
	; 127 PostCall 45

 scanString$92:
	; 128 GetReturnValue £temporary1186

 scanString$93:
	; 129 NotEqual 105 £temporary1186 integral4$0#
	cmp ebx, 0
	jne scanString$105

 scanString$94:
	; 131 IntegralToIntegral £temporary1189 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

 scanString$95:
	; 132 Equal 105 £temporary1189 integral4$minus1#
	cmp eax, -1
	je scanString$105

 scanString$96:
	; 134 Equal 105 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$105

 scanString$97:
	; 136 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$98:
	; 137 Call 45 scanChar 0
	mov qword [rbp + 45], scanString$99
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$99:
	; 138 PostCall 45

 scanString$100:
	; 139 GetReturnValue £temporary1194

 scanString$101:
	; 140 Assign input £temporary1194
	mov [rbp + 40], bl

 scanString$102:
	; 141 Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$103:
	; 142 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$104:
	; 145 Jump 87
	jmp scanString$87

 scanString$105:
	; 146 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$106:
	; 148 Jump 130
	jmp scanString$130

 scanString$107:
	; 151 Assign £temporary1198 precision
	mov eax, [rbp + 32]

 scanString$108:
	; 152 Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 scanString$109:
	; 154 LessThanEqual 128 £temporary1198 integral4$0#
	cmp eax, 0
	jle scanString$128

 scanString$110:
	; 156 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$111:
	; 157 IntegralToIntegral £temporary1201 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

 scanString$112:
	; 158 Parameter 69 signed int £temporary1201
	mov [rbp + 69], eax

 scanString$113:
	; 159 Call 45 isspace 0
	mov qword [rbp + 45], scanString$114
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanString$114:
	; 160 PostCall 45

 scanString$115:
	; 161 GetReturnValue £temporary1202

 scanString$116:
	; 162 NotEqual 128 £temporary1202 integral4$0#
	cmp ebx, 0
	jne scanString$128

 scanString$117:
	; 164 IntegralToIntegral £temporary1205 input
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

 scanString$118:
	; 165 Equal 128 £temporary1205 integral4$minus1#
	cmp eax, -1
	je scanString$128

 scanString$119:
	; 167 Equal 128 input integral1$10#
	cmp byte [rbp + 40], 10
	je scanString$128

 scanString$120:
	; 169 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanString$121:
	; 170 Call 45 scanChar 0
	mov qword [rbp + 45], scanString$122
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanString$122:
	; 171 PostCall 45

 scanString$123:
	; 172 GetReturnValue £temporary1211

 scanString$124:
	; 173 Assign input £temporary1211
	mov [rbp + 40], bl

 scanString$125:
	; 174 Assign found integral4$1#
	mov dword [rbp + 41], 1

 scanString$126:
	; 175 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$127:
	; 178 Jump 107
	jmp scanString$107

 scanString$128:
	; 179 LessThanEqual 130 precision integral4$0#
	cmp dword [rbp + 32], 0
	jle scanString$130

 scanString$129:
	; 182 Add g_inChars g_inChars integral4$1#
	inc dword [g_inChars]

 scanString$130:
	; 189 Equal 132 found integral4$0#
	cmp dword [rbp + 41], 0
	je scanString$132

 scanString$131:
	; 192 Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanString$132:
	; 198 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanString$133:
	; 199 FunctionEnd scanString

section .text

 @3406$isDigitInBase:
	; 0 PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3406$isDigitInBase$1:
	; 1 IntegralToIntegral £temporary1225 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3406$isDigitInBase$2
	neg al
	neg eax

 @3406$isDigitInBase$2:
	; 2 Parameter 53 signed int £temporary1225
	mov [rbp + 53], eax

 @3406$isDigitInBase$3:
	; 3 Call 29 isdigit 0
	mov qword [rbp + 29], @3406$isDigitInBase$4
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isdigit

 @3406$isDigitInBase$4:
	; 4 PostCall 29

 @3406$isDigitInBase$5:
	; 5 GetReturnValue £temporary1226

 @3406$isDigitInBase$6:
	; 6 Equal 17 £temporary1226 integral4$0#
	cmp ebx, 0
	je @3406$isDigitInBase$17

 @3406$isDigitInBase$7:
	; 9 Subtract £temporary1227 c integral1$48#
	mov al, [rbp + 24]
	sub al, 48

 @3406$isDigitInBase$8:
	; 10 IntegralToIntegral £temporary1228 £temporary1227
	and eax, 255
	cmp al, 0
	jge @3406$isDigitInBase$9
	neg al
	neg eax

 @3406$isDigitInBase$9:
	; 11 Assign value £temporary1228
	mov [rbp + 29], eax

 @3406$isDigitInBase$10:
	; 12 LessThan 14 value integral4$0#
	cmp dword [rbp + 29], 0
	jl @3406$isDigitInBase$14

 @3406$isDigitInBase$11:
	; 14 GreaterThanEqual 14 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3406$isDigitInBase$14

 @3406$isDigitInBase$12:
	; 16 Assign £temporary1232 integral4$1#
	mov ebx, 1

 @3406$isDigitInBase$13:
	; 17 Jump 15
	jmp @3406$isDigitInBase$15

 @3406$isDigitInBase$14:
	; 18 Assign £temporary1232 integral4$0#
	mov ebx, 0

 @3406$isDigitInBase$15:
	; 20 SetReturnValue

 @3406$isDigitInBase$16:
	; 21 Return £temporary1232
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3406$isDigitInBase$17:
	; 24 PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3406$isDigitInBase$18:
	; 25 IntegralToIntegral £temporary1233 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3406$isDigitInBase$19
	neg al
	neg eax

 @3406$isDigitInBase$19:
	; 26 Parameter 53 signed int £temporary1233
	mov [rbp + 53], eax

 @3406$isDigitInBase$20:
	; 27 Call 29 islower 0
	mov qword [rbp + 29], @3406$isDigitInBase$21
	mov [rbp + 37], rbp
	add rbp, 29
	jmp islower

 @3406$isDigitInBase$21:
	; 28 PostCall 29

 @3406$isDigitInBase$22:
	; 29 GetReturnValue £temporary1234

 @3406$isDigitInBase$23:
	; 30 Equal 34 £temporary1234 integral4$0#
	cmp ebx, 0
	je @3406$isDigitInBase$34

 @3406$isDigitInBase$24:
	; 33 Subtract £temporary1235 c integral1$97#
	mov al, [rbp + 24]
	sub al, 97

 @3406$isDigitInBase$25:
	; 34 IntegralToIntegral £temporary1237 £temporary1235
	and eax, 255
	cmp al, 0
	jge @3406$isDigitInBase$26
	neg al
	neg eax

 @3406$isDigitInBase$26:
	; 35 Add value £temporary1237 integral4$10#
	add eax, 10
	mov [rbp + 29], eax

 @3406$isDigitInBase$27:
	; 37 LessThan 31 value integral4$0#
	cmp dword [rbp + 29], 0
	jl @3406$isDigitInBase$31

 @3406$isDigitInBase$28:
	; 39 GreaterThanEqual 31 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3406$isDigitInBase$31

 @3406$isDigitInBase$29:
	; 41 Assign £temporary1241 integral4$1#
	mov ebx, 1

 @3406$isDigitInBase$30:
	; 42 Jump 32
	jmp @3406$isDigitInBase$32

 @3406$isDigitInBase$31:
	; 43 Assign £temporary1241 integral4$0#
	mov ebx, 0

 @3406$isDigitInBase$32:
	; 45 SetReturnValue

 @3406$isDigitInBase$33:
	; 46 Return £temporary1241
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3406$isDigitInBase$34:
	; 49 PreCall 29 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3406$isDigitInBase$35:
	; 50 IntegralToIntegral £temporary1242 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3406$isDigitInBase$36
	neg al
	neg eax

 @3406$isDigitInBase$36:
	; 51 Parameter 53 signed int £temporary1242
	mov [rbp + 53], eax

 @3406$isDigitInBase$37:
	; 52 Call 29 isupper 0
	mov qword [rbp + 29], @3406$isDigitInBase$38
	mov [rbp + 37], rbp
	add rbp, 29
	jmp isupper

 @3406$isDigitInBase$38:
	; 53 PostCall 29

 @3406$isDigitInBase$39:
	; 54 GetReturnValue £temporary1243

 @3406$isDigitInBase$40:
	; 55 Equal 51 £temporary1243 integral4$0#
	cmp ebx, 0
	je @3406$isDigitInBase$51

 @3406$isDigitInBase$41:
	; 58 Subtract £temporary1244 c integral1$65#
	mov al, [rbp + 24]
	sub al, 65

 @3406$isDigitInBase$42:
	; 59 IntegralToIntegral £temporary1246 £temporary1244
	and eax, 255
	cmp al, 0
	jge @3406$isDigitInBase$43
	neg al
	neg eax

 @3406$isDigitInBase$43:
	; 60 Add value £temporary1246 integral4$10#
	add eax, 10
	mov [rbp + 29], eax

 @3406$isDigitInBase$44:
	; 62 LessThan 48 value integral4$0#
	cmp dword [rbp + 29], 0
	jl @3406$isDigitInBase$48

 @3406$isDigitInBase$45:
	; 64 GreaterThanEqual 48 value base
	mov eax, [rbp + 25]
	cmp [rbp + 29], eax
	jge @3406$isDigitInBase$48

 @3406$isDigitInBase$46:
	; 66 Assign £temporary1250 integral4$1#
	mov ebx, 1

 @3406$isDigitInBase$47:
	; 67 Jump 49
	jmp @3406$isDigitInBase$49

 @3406$isDigitInBase$48:
	; 68 Assign £temporary1250 integral4$0#
	mov ebx, 0

 @3406$isDigitInBase$49:
	; 70 SetReturnValue

 @3406$isDigitInBase$50:
	; 71 Return £temporary1250
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3406$isDigitInBase$51:
	; 74 SetReturnValue

 @3406$isDigitInBase$52:
	; 75 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3406$isDigitInBase$53:
	; 80 FunctionEnd isDigitInBase

section .text

 @3432$digitToValue:
	; 0 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3432$digitToValue$1:
	; 1 IntegralToIntegral £temporary1260 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3432$digitToValue$2
	neg al
	neg eax

 @3432$digitToValue$2:
	; 2 Parameter 49 signed int £temporary1260
	mov [rbp + 49], eax

 @3432$digitToValue$3:
	; 3 Call 25 isdigit 0
	mov qword [rbp + 25], @3432$digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

 @3432$digitToValue$4:
	; 4 PostCall 25

 @3432$digitToValue$5:
	; 5 GetReturnValue £temporary1261

 @3432$digitToValue$6:
	; 6 Equal 11 £temporary1261 integral4$0#
	cmp ebx, 0
	je @3432$digitToValue$11

 @3432$digitToValue$7:
	; 9 Subtract £temporary1262 c integral1$48#
	mov bl, [rbp + 24]
	sub bl, 48

 @3432$digitToValue$8:
	; 10 IntegralToIntegral £temporary1263 £temporary1262
	and ebx, 255
	cmp bl, 0
	jge @3432$digitToValue$9
	neg bl
	neg ebx

 @3432$digitToValue$9:
	; 11 SetReturnValue

 @3432$digitToValue$10:
	; 12 Return £temporary1263
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3432$digitToValue$11:
	; 15 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3432$digitToValue$12:
	; 16 IntegralToIntegral £temporary1264 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3432$digitToValue$13
	neg al
	neg eax

 @3432$digitToValue$13:
	; 17 Parameter 49 signed int £temporary1264
	mov [rbp + 49], eax

 @3432$digitToValue$14:
	; 18 Call 25 islower 0
	mov qword [rbp + 25], @3432$digitToValue$15
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

 @3432$digitToValue$15:
	; 19 PostCall 25

 @3432$digitToValue$16:
	; 20 GetReturnValue £temporary1265

 @3432$digitToValue$17:
	; 21 Equal 23 £temporary1265 integral4$0#
	cmp ebx, 0
	je @3432$digitToValue$23

 @3432$digitToValue$18:
	; 24 Subtract £temporary1266 c integral1$97#
	mov bl, [rbp + 24]
	sub bl, 97

 @3432$digitToValue$19:
	; 25 IntegralToIntegral £temporary1268 £temporary1266
	and ebx, 255
	cmp bl, 0
	jge @3432$digitToValue$20
	neg bl
	neg ebx

 @3432$digitToValue$20:
	; 26 Add £temporary1267 £temporary1268 integral4$10#
	add ebx, 10

 @3432$digitToValue$21:
	; 27 SetReturnValue

 @3432$digitToValue$22:
	; 28 Return £temporary1267
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3432$digitToValue$23:
	; 31 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @3432$digitToValue$24:
	; 32 IntegralToIntegral £temporary1269 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge @3432$digitToValue$25
	neg al
	neg eax

 @3432$digitToValue$25:
	; 33 Parameter 49 signed int £temporary1269
	mov [rbp + 49], eax

 @3432$digitToValue$26:
	; 34 Call 25 isupper 0
	mov qword [rbp + 25], @3432$digitToValue$27
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isupper

 @3432$digitToValue$27:
	; 35 PostCall 25

 @3432$digitToValue$28:
	; 36 GetReturnValue £temporary1270

 @3432$digitToValue$29:
	; 37 Equal 35 £temporary1270 integral4$0#
	cmp ebx, 0
	je @3432$digitToValue$35

 @3432$digitToValue$30:
	; 40 Subtract £temporary1271 c integral1$65#
	mov bl, [rbp + 24]
	sub bl, 65

 @3432$digitToValue$31:
	; 41 IntegralToIntegral £temporary1273 £temporary1271
	and ebx, 255
	cmp bl, 0
	jge @3432$digitToValue$32
	neg bl
	neg ebx

 @3432$digitToValue$32:
	; 42 Add £temporary1272 £temporary1273 integral4$10#
	add ebx, 10

 @3432$digitToValue$33:
	; 43 SetReturnValue

 @3432$digitToValue$34:
	; 44 Return £temporary1272
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3432$digitToValue$35:
	; 47 SetReturnValue

 @3432$digitToValue$36:
	; 48 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @3432$digitToValue$37:
	; 53 FunctionEnd digitToValue

section .text

 scanLongInt:
	; 0 Assign longValue integral8$0#
	mov qword [rbp + 28], 0

 scanLongInt$1:
	; 1 Assign minus integral4$0#
	mov dword [rbp + 36], 0

 scanLongInt$2:
	; 2 Assign found integral4$0#
	mov dword [rbp + 40], 0

 scanLongInt$3:
	; 3 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$4:
	; 4 Call 44 scanChar 0
	mov qword [rbp + 44], scanLongInt$5
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanChar

 scanLongInt$5:
	; 5 PostCall 44

 scanLongInt$6:
	; 6 GetReturnValue £temporary1283

 scanLongInt$7:
	; 7 Assign input £temporary1283
	mov [rbp + 44], bl

 scanLongInt$8:
	; 9 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$9:
	; 10 IntegralToIntegral £temporary1284 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

 scanLongInt$10:
	; 11 Parameter 69 signed int £temporary1284
	mov [rbp + 69], eax

 scanLongInt$11:
	; 12 Call 45 isspace 0
	mov qword [rbp + 45], scanLongInt$12
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

 scanLongInt$12:
	; 13 PostCall 45

 scanLongInt$13:
	; 14 GetReturnValue £temporary1285

 scanLongInt$14:
	; 15 Equal 21 £temporary1285 integral4$0#
	cmp ebx, 0
	je scanLongInt$21

 scanLongInt$15:
	; 17 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$16:
	; 18 Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$17
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$17:
	; 19 PostCall 45

 scanLongInt$18:
	; 20 GetReturnValue £temporary1286

 scanLongInt$19:
	; 21 Assign input £temporary1286
	mov [rbp + 44], bl

 scanLongInt$20:
	; 23 Jump 8
	jmp scanLongInt$8

 scanLongInt$21:
	; 24 NotEqual 28 input integral1$43#
	cmp byte [rbp + 44], 43
	jne scanLongInt$28

 scanLongInt$22:
	; 27 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$23:
	; 28 Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$24
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$24:
	; 29 PostCall 45

 scanLongInt$25:
	; 30 GetReturnValue £temporary1289

 scanLongInt$26:
	; 31 Assign input £temporary1289
	mov [rbp + 44], bl

 scanLongInt$27:
	; 32 Jump 35
	jmp scanLongInt$35

 scanLongInt$28:
	; 34 NotEqual 35 input integral1$45#
	cmp byte [rbp + 44], 45
	jne scanLongInt$35

 scanLongInt$29:
	; 37 Assign minus integral4$1#
	mov dword [rbp + 36], 1

 scanLongInt$30:
	; 38 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$31:
	; 39 Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$32
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$32:
	; 40 PostCall 45

 scanLongInt$33:
	; 41 GetReturnValue £temporary1291

 scanLongInt$34:
	; 42 Assign input £temporary1291
	mov [rbp + 44], bl

 scanLongInt$35:
	; 47 NotEqual 59 base integral4$0#
	cmp dword [rbp + 24], 0
	jne scanLongInt$59

 scanLongInt$36:
	; 50 NotEqual 58 input integral1$48#
	cmp byte [rbp + 44], 48
	jne scanLongInt$58

 scanLongInt$37:
	; 53 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$38:
	; 54 Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$39
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$39:
	; 55 PostCall 45

 scanLongInt$40:
	; 56 GetReturnValue £temporary1298

 scanLongInt$41:
	; 57 Assign input £temporary1298
	mov [rbp + 44], bl

 scanLongInt$42:
	; 58 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$43:
	; 59 IntegralToIntegral £temporary1299 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanLongInt$44
	neg al
	neg eax

 scanLongInt$44:
	; 60 Parameter 69 signed int £temporary1299
	mov [rbp + 69], eax

 scanLongInt$45:
	; 61 Call 45 tolower 0
	mov qword [rbp + 45], scanLongInt$46
	mov [rbp + 53], rbp
	add rbp, 45
	jmp tolower

 scanLongInt$46:
	; 62 PostCall 45

 scanLongInt$47:
	; 63 GetReturnValue £temporary1300

 scanLongInt$48:
	; 64 NotEqual 56 £temporary1300 integral4$120#
	cmp ebx, 120
	jne scanLongInt$56

 scanLongInt$49:
	; 67 Assign base integral4$16#
	mov dword [rbp + 24], 16

 scanLongInt$50:
	; 68 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$51:
	; 69 Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$52
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$52:
	; 70 PostCall 45

 scanLongInt$53:
	; 71 GetReturnValue £temporary1302

 scanLongInt$54:
	; 72 Assign input £temporary1302
	mov [rbp + 44], bl

 scanLongInt$55:
	; 73 Jump 59
	jmp scanLongInt$59

 scanLongInt$56:
	; 75 Assign base integral4$8#
	mov dword [rbp + 24], 8

 scanLongInt$57:
	; 77 Jump 59
	jmp scanLongInt$59

 scanLongInt$58:
	; 79 Assign base integral4$10#
	mov dword [rbp + 24], 10

 scanLongInt$59:
	; 85 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$60:
	; 86 Parameter 69 signed char input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$61:
	; 87 Parameter 70 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 70], eax

 scanLongInt$62:
	; 88 Call 45 isDigitInBase 0
	mov qword [rbp + 45], scanLongInt$63
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @3406$isDigitInBase

 scanLongInt$63:
	; 89 PostCall 45

 scanLongInt$64:
	; 90 GetReturnValue £temporary1309

 scanLongInt$65:
	; 91 Equal 82 £temporary1309 integral4$0#
	cmp ebx, 0
	je scanLongInt$82

 scanLongInt$66:
	; 93 IntegralToIntegral £temporary1311 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$67
	neg ebx
	neg rbx

 scanLongInt$67:
	; 94 Multiply longValue longValue £temporary1311
	mov rax, [rbp + 28]
	xor rdx, rdx
	imul rbx
	mov [rbp + 28], rax

 scanLongInt$68:
	; 96 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$69:
	; 97 Parameter 69 signed char input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$70:
	; 98 Call 45 digitToValue 0
	mov qword [rbp + 45], scanLongInt$71
	mov [rbp + 53], rbp
	add rbp, 45
	jmp @3432$digitToValue

 scanLongInt$71:
	; 99 PostCall 45

 scanLongInt$72:
	; 100 GetReturnValue £temporary1312

 scanLongInt$73:
	; 101 IntegralToIntegral £temporary1314 £temporary1312
	mov rax, 4294967295
	and rbx, rax
	cmp ebx, 0
	jge scanLongInt$74
	neg ebx
	neg rbx

 scanLongInt$74:
	; 102 Add longValue longValue £temporary1314
	add [rbp + 28], rbx

 scanLongInt$75:
	; 104 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$76:
	; 105 Call 45 scanChar 0
	mov qword [rbp + 45], scanLongInt$77
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

 scanLongInt$77:
	; 106 PostCall 45

 scanLongInt$78:
	; 107 GetReturnValue £temporary1315

 scanLongInt$79:
	; 108 Assign input £temporary1315
	mov [rbp + 44], bl

 scanLongInt$80:
	; 109 Assign found integral4$1#
	mov dword [rbp + 40], 1

 scanLongInt$81:
	; 111 Jump 59
	jmp scanLongInt$59

 scanLongInt$82:
	; 112 Equal 85 minus integral4$0#
	cmp dword [rbp + 36], 0
	je scanLongInt$85

 scanLongInt$83:
	; 115 Minus £temporary1317 longValue
	mov rax, [rbp + 28]
	neg rax

 scanLongInt$84:
	; 116 Assign longValue £temporary1317
	mov [rbp + 28], rax

 scanLongInt$85:
	; 120 Equal 87 found integral4$0#
	cmp dword [rbp + 40], 0
	je scanLongInt$87

 scanLongInt$86:
	; 123 Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanLongInt$87:
	; 128 PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongInt$88:
	; 129 Parameter 69 signed char input
	mov al, [rbp + 44]
	mov [rbp + 69], al

 scanLongInt$89:
	; 130 Call 45 unscanChar 0
	mov qword [rbp + 45], scanLongInt$90
	mov [rbp + 53], rbp
	add rbp, 45
	jmp unscanChar

 scanLongInt$90:
	; 131 PostCall 45

 scanLongInt$91:
	; 132 SetReturnValue

 scanLongInt$92:
	; 133 Return longValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongInt$93:
	; 135 FunctionEnd scanLongInt

section .text

 scanUnsignedLongInt:
	; 0 Assign unsignedLongValue integral8$0#
	mov qword [rbp + 28], 0

 scanUnsignedLongInt$1:
	; 1 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$2:
	; 2 Call 44 scanChar 0
	mov qword [rbp + 44], scanUnsignedLongInt$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp scanChar

 scanUnsignedLongInt$3:
	; 3 PostCall 44

 scanUnsignedLongInt$4:
	; 4 GetReturnValue £temporary1326

 scanUnsignedLongInt$5:
	; 5 Assign input £temporary1326
	mov [rbp + 44], bl

 scanUnsignedLongInt$6:
	; 6 Assign found integral4$1#
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$7:
	; 8 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$8:
	; 9 IntegralToIntegral £temporary1327 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

 scanUnsignedLongInt$9:
	; 10 Parameter 73 signed int £temporary1327
	mov [rbp + 73], eax

 scanUnsignedLongInt$10:
	; 11 Call 49 isspace 0
	mov qword [rbp + 49], scanUnsignedLongInt$11
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanUnsignedLongInt$11:
	; 12 PostCall 49

 scanUnsignedLongInt$12:
	; 13 GetReturnValue £temporary1328

 scanUnsignedLongInt$13:
	; 14 Equal 20 £temporary1328 integral4$0#
	cmp ebx, 0
	je scanUnsignedLongInt$20

 scanUnsignedLongInt$14:
	; 16 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$15:
	; 17 Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$16
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$16:
	; 18 PostCall 49

 scanUnsignedLongInt$17:
	; 19 GetReturnValue £temporary1329

 scanUnsignedLongInt$18:
	; 20 Assign input £temporary1329
	mov [rbp + 44], bl

 scanUnsignedLongInt$19:
	; 22 Jump 7
	jmp scanUnsignedLongInt$7

 scanUnsignedLongInt$20:
	; 23 NotEqual 26 input integral1$43#
	cmp byte [rbp + 44], 43
	jne scanUnsignedLongInt$26

 scanUnsignedLongInt$21:
	; 26 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$22:
	; 27 Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$23
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$23:
	; 28 PostCall 49

 scanUnsignedLongInt$24:
	; 29 GetReturnValue £temporary1332

 scanUnsignedLongInt$25:
	; 30 Assign input £temporary1332
	mov [rbp + 44], bl

 scanUnsignedLongInt$26:
	; 34 NotEqual 50 base integral4$0#
	cmp dword [rbp + 24], 0
	jne scanUnsignedLongInt$50

 scanUnsignedLongInt$27:
	; 37 NotEqual 49 input integral1$48#
	cmp byte [rbp + 44], 48
	jne scanUnsignedLongInt$49

 scanUnsignedLongInt$28:
	; 40 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$29:
	; 41 Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$30
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$30:
	; 42 PostCall 49

 scanUnsignedLongInt$31:
	; 43 GetReturnValue £temporary1337

 scanUnsignedLongInt$32:
	; 44 Assign input £temporary1337
	mov [rbp + 44], bl

 scanUnsignedLongInt$33:
	; 45 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$34:
	; 46 IntegralToIntegral £temporary1338 input
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$35
	neg al
	neg eax

 scanUnsignedLongInt$35:
	; 47 Parameter 73 signed int £temporary1338
	mov [rbp + 73], eax

 scanUnsignedLongInt$36:
	; 48 Call 49 tolower 0
	mov qword [rbp + 49], scanUnsignedLongInt$37
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanUnsignedLongInt$37:
	; 49 PostCall 49

 scanUnsignedLongInt$38:
	; 50 GetReturnValue £temporary1339

 scanUnsignedLongInt$39:
	; 51 NotEqual 47 £temporary1339 integral4$120#
	cmp ebx, 120
	jne scanUnsignedLongInt$47

 scanUnsignedLongInt$40:
	; 54 Assign base integral4$16#
	mov dword [rbp + 24], 16

 scanUnsignedLongInt$41:
	; 55 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$42:
	; 56 Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$43
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$43:
	; 57 PostCall 49

 scanUnsignedLongInt$44:
	; 58 GetReturnValue £temporary1341

 scanUnsignedLongInt$45:
	; 59 Assign input £temporary1341
	mov [rbp + 44], bl

 scanUnsignedLongInt$46:
	; 60 Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$47:
	; 62 Assign base integral4$8#
	mov dword [rbp + 24], 8

 scanUnsignedLongInt$48:
	; 64 Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$49:
	; 66 Assign base integral4$10#
	mov dword [rbp + 24], 10

 scanUnsignedLongInt$50:
	; 72 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$51:
	; 73 Parameter 73 signed char input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$52:
	; 74 Parameter 74 signed int base
	mov eax, [rbp + 24]
	mov [rbp + 74], eax

 scanUnsignedLongInt$53:
	; 75 Call 49 isDigitInBase 0
	mov qword [rbp + 49], scanUnsignedLongInt$54
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @3406$isDigitInBase

 scanUnsignedLongInt$54:
	; 76 PostCall 49

 scanUnsignedLongInt$55:
	; 77 GetReturnValue £temporary1348

 scanUnsignedLongInt$56:
	; 78 Equal 73 £temporary1348 integral4$0#
	cmp ebx, 0
	je scanUnsignedLongInt$73

 scanUnsignedLongInt$57:
	; 80 IntegralToIntegral £temporary1350 base
	mov ebx, [rbp + 24]
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$58:
	; 81 Multiply unsignedLongValue unsignedLongValue £temporary1350
	mov rax, [rbp + 28]
	xor rdx, rdx
	mul rbx
	mov [rbp + 28], rax

 scanUnsignedLongInt$59:
	; 83 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$60:
	; 84 Parameter 73 signed char input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$61:
	; 85 Call 49 digitToValue 0
	mov qword [rbp + 49], scanUnsignedLongInt$62
	mov [rbp + 57], rbp
	add rbp, 49
	jmp @3432$digitToValue

 scanUnsignedLongInt$62:
	; 86 PostCall 49

 scanUnsignedLongInt$63:
	; 87 GetReturnValue £temporary1351

 scanUnsignedLongInt$64:
	; 88 IntegralToIntegral £temporary1353 £temporary1351
	mov rax, 4294967295
	and rbx, rax

 scanUnsignedLongInt$65:
	; 89 Add unsignedLongValue unsignedLongValue £temporary1353
	add [rbp + 28], rbx

 scanUnsignedLongInt$66:
	; 91 Assign found integral4$1#
	mov dword [rbp + 45], 1

 scanUnsignedLongInt$67:
	; 92 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$68:
	; 93 Call 49 scanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$69
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanUnsignedLongInt$69:
	; 94 PostCall 49

 scanUnsignedLongInt$70:
	; 95 GetReturnValue £temporary1354

 scanUnsignedLongInt$71:
	; 96 Assign input £temporary1354
	mov [rbp + 44], bl

 scanUnsignedLongInt$72:
	; 98 Jump 50
	jmp scanUnsignedLongInt$50

 scanUnsignedLongInt$73:
	; 99 Equal 75 found integral4$0#
	cmp dword [rbp + 45], 0
	je scanUnsignedLongInt$75

 scanUnsignedLongInt$74:
	; 102 Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanUnsignedLongInt$75:
	; 107 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanUnsignedLongInt$76:
	; 108 Parameter 73 signed char input
	mov al, [rbp + 44]
	mov [rbp + 73], al

 scanUnsignedLongInt$77:
	; 109 Call 49 unscanChar 0
	mov qword [rbp + 49], scanUnsignedLongInt$78
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanUnsignedLongInt$78:
	; 110 PostCall 49

 scanUnsignedLongInt$79:
	; 111 SetReturnValue

 scanUnsignedLongInt$80:
	; 112 Return unsignedLongValue
	mov rbx, [rbp + 28]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanUnsignedLongInt$81:
	; 114 FunctionEnd scanUnsignedLongInt

section .data

@3516floating8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@3521floating8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@3529floating8$10.0#:
	; Initializer Double 10.0
	dq 10.0

section .text

 scanLongDouble:
	; 0 Assign minus integral4$0#
	mov dword [rbp + 24], 0

 scanLongDouble$1:
	; 1 Assign found integral4$0#
	mov dword [rbp + 28], 0

 scanLongDouble$2:
	; 2 PushFloat floating8$0.0#
	fldz

 scanLongDouble$3:
	; 3 PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$4:
	; 4 PushFloat floating8$1.0#
	fld1

 scanLongDouble$5:
	; 5 PopFloat factor
	fstp qword [rbp + 40]

 scanLongDouble$6:
	; 6 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$7:
	; 7 Call 48 scanChar 0
	mov qword [rbp + 48], scanLongDouble$8
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

 scanLongDouble$8:
	; 8 PostCall 48

 scanLongDouble$9:
	; 9 GetReturnValue £temporary1361

 scanLongDouble$10:
	; 10 Assign input £temporary1361
	mov [rbp + 48], bl

 scanLongDouble$11:
	; 12 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$12:
	; 13 IntegralToIntegral £temporary1362 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

 scanLongDouble$13:
	; 14 Parameter 73 signed int £temporary1362
	mov [rbp + 73], eax

 scanLongDouble$14:
	; 15 Call 49 isspace 0
	mov qword [rbp + 49], scanLongDouble$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

 scanLongDouble$15:
	; 16 PostCall 49

 scanLongDouble$16:
	; 17 GetReturnValue £temporary1363

 scanLongDouble$17:
	; 18 Equal 24 £temporary1363 integral4$0#
	cmp ebx, 0
	je scanLongDouble$24

 scanLongDouble$18:
	; 20 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$19:
	; 21 Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$20
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$20:
	; 22 PostCall 49

 scanLongDouble$21:
	; 23 GetReturnValue £temporary1364

 scanLongDouble$22:
	; 24 Assign input £temporary1364
	mov [rbp + 48], bl

 scanLongDouble$23:
	; 26 Jump 11
	jmp scanLongDouble$11

 scanLongDouble$24:
	; 27 NotEqual 31 input integral1$43#
	cmp byte [rbp + 48], 43
	jne scanLongDouble$31

 scanLongDouble$25:
	; 30 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$26:
	; 31 Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$27
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$27:
	; 32 PostCall 49

 scanLongDouble$28:
	; 33 GetReturnValue £temporary1367

 scanLongDouble$29:
	; 34 Assign input £temporary1367
	mov [rbp + 48], bl

 scanLongDouble$30:
	; 35 Jump 38
	jmp scanLongDouble$38

 scanLongDouble$31:
	; 37 NotEqual 38 input integral1$45#
	cmp byte [rbp + 48], 45
	jne scanLongDouble$38

 scanLongDouble$32:
	; 40 Assign minus integral4$1#
	mov dword [rbp + 24], 1

 scanLongDouble$33:
	; 41 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$34:
	; 42 Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$35:
	; 43 PostCall 49

 scanLongDouble$36:
	; 44 GetReturnValue £temporary1369

 scanLongDouble$37:
	; 45 Assign input £temporary1369
	mov [rbp + 48], bl

 scanLongDouble$38:
	; 51 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$39:
	; 52 IntegralToIntegral £temporary1374 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

 scanLongDouble$40:
	; 53 Parameter 73 signed int £temporary1374
	mov [rbp + 73], eax

 scanLongDouble$41:
	; 54 Call 49 isdigit 0
	mov qword [rbp + 49], scanLongDouble$42
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$42:
	; 55 PostCall 49

 scanLongDouble$43:
	; 56 GetReturnValue £temporary1375

 scanLongDouble$44:
	; 57 Equal 60 £temporary1375 integral4$0#
	cmp ebx, 0
	je scanLongDouble$60

 scanLongDouble$45:
	; 61 PushFloat floating8$10.0#
	fld qword [@3516floating8$10.0#]

 scanLongDouble$46:
	; 62 PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$47:
	; 63 Multiply £temporary1376 floating8$10.0# value
	fmul

 scanLongDouble$48:
	; 64 Subtract £temporary1377 input integral1$48#
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$49:
	; 65 IntegralToIntegral £temporary1379 £temporary1377
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

 scanLongDouble$50:
	; 66 IntegralToFloating £temporary1378 £temporary1379
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$51:
	; 67 Add £temporary1380 £temporary1376 £temporary1378
	fadd

 scanLongDouble$52:
	; 68 PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$53:
	; 69 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$54:
	; 70 Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$55
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$55:
	; 71 PostCall 49

 scanLongDouble$56:
	; 72 GetReturnValue £temporary1381

 scanLongDouble$57:
	; 73 Assign input £temporary1381
	mov [rbp + 48], bl

 scanLongDouble$58:
	; 74 Assign found integral4$1#
	mov dword [rbp + 28], 1

 scanLongDouble$59:
	; 76 Jump 38
	jmp scanLongDouble$38

 scanLongDouble$60:
	; 77 NotEqual 92 input integral1$46#
	cmp byte [rbp + 48], 46
	jne scanLongDouble$92

 scanLongDouble$61:
	; 80 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$62:
	; 81 Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$63
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$63:
	; 82 PostCall 49

 scanLongDouble$64:
	; 83 GetReturnValue £temporary1384

 scanLongDouble$65:
	; 84 Assign input £temporary1384
	mov [rbp + 48], bl

 scanLongDouble$66:
	; 86 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$67:
	; 87 IntegralToIntegral £temporary1385 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

 scanLongDouble$68:
	; 88 Parameter 73 signed int £temporary1385
	mov [rbp + 73], eax

 scanLongDouble$69:
	; 89 Call 49 isdigit 0
	mov qword [rbp + 49], scanLongDouble$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

 scanLongDouble$70:
	; 90 PostCall 49

 scanLongDouble$71:
	; 91 GetReturnValue £temporary1386

 scanLongDouble$72:
	; 92 Equal 92 £temporary1386 integral4$0#
	cmp ebx, 0
	je scanLongDouble$92

 scanLongDouble$73:
	; 94 PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$74:
	; 95 PushFloat floating8$10.0#
	fld qword [@3521floating8$10.0#]

 scanLongDouble$75:
	; 96 Divide £temporary1387 factor floating8$10.0#
	fdiv

 scanLongDouble$76:
	; 97 PopFloat factor
	fstp qword [rbp + 40]

 scanLongDouble$77:
	; 98 PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$78:
	; 99 PushFloat factor
	fld qword [rbp + 40]

 scanLongDouble$79:
	; 100 Subtract £temporary1388 input integral1$48#
	mov al, [rbp + 48]
	sub al, 48

 scanLongDouble$80:
	; 101 IntegralToIntegral £temporary1390 £temporary1388
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

 scanLongDouble$81:
	; 102 IntegralToFloating £temporary1389 £temporary1390
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 scanLongDouble$82:
	; 103 Multiply £temporary1391 factor £temporary1389
	fmul

 scanLongDouble$83:
	; 104 Add £temporary1392 value £temporary1391
	fadd

 scanLongDouble$84:
	; 105 PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$85:
	; 106 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$86:
	; 107 Call 49 scanChar 0
	mov qword [rbp + 49], scanLongDouble$87
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

 scanLongDouble$87:
	; 108 PostCall 49

 scanLongDouble$88:
	; 109 GetReturnValue £temporary1393

 scanLongDouble$89:
	; 110 Assign input £temporary1393
	mov [rbp + 48], bl

 scanLongDouble$90:
	; 111 Assign found integral4$1#
	mov dword [rbp + 28], 1

 scanLongDouble$91:
	; 113 Jump 66
	jmp scanLongDouble$66

 scanLongDouble$92:
	; 117 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$93:
	; 118 IntegralToIntegral £temporary1397 input
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$94
	neg al
	neg eax

 scanLongDouble$94:
	; 119 Parameter 73 signed int £temporary1397
	mov [rbp + 73], eax

 scanLongDouble$95:
	; 120 Call 49 tolower 0
	mov qword [rbp + 49], scanLongDouble$96
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

 scanLongDouble$96:
	; 121 PostCall 49

 scanLongDouble$97:
	; 122 GetReturnValue £temporary1398

 scanLongDouble$98:
	; 123 NotEqual 118 £temporary1398 integral4$101#
	cmp ebx, 101
	jne scanLongDouble$118

 scanLongDouble$99:
	; 126 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$100:
	; 127 Parameter 73 signed int integral4$10#
	mov dword [rbp + 73], 10

 scanLongDouble$101:
	; 128 Call 49 scanLongInt 0
	mov qword [rbp + 49], scanLongDouble$102
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

 scanLongDouble$102:
	; 129 PostCall 49

 scanLongDouble$103:
	; 130 GetReturnValue £temporary1400

 scanLongDouble$104:
	; 131 IntegralToFloating £temporary1401 £temporary1400
	mov [container8bytes#], rbx
	fild qword [container8bytes#]

 scanLongDouble$105:
	; 132 PopFloat exponent
	fstp qword [rbp + 49]

 scanLongDouble$106:
	; 133 PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$107:
	; 134 PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 57]

 scanLongDouble$108:
	; 135 PushFloat floating8$10.0#
	fld qword [@3529floating8$10.0#]

 scanLongDouble$109:
	; 136 Parameter 81 double floating8$10.0#
	fstp qword [rbp + 89]

 scanLongDouble$110:
	; 137 PushFloat exponent
	fld qword [rbp + 49]

 scanLongDouble$111:
	; 138 Parameter 89 double exponent
	fstp qword [rbp + 97]

 scanLongDouble$112:
	; 139 Call 57 pow 0
	mov qword [rbp + 65], scanLongDouble$113
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

 scanLongDouble$113:
	; 140 PostCall 57
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

 scanLongDouble$114:
	; 141 GetReturnValue £temporary1402

 scanLongDouble$115:
	; 142 Multiply £temporary1403 value £temporary1402
	fmul

 scanLongDouble$116:
	; 143 PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$117:
	; 144 Jump 122
	jmp scanLongDouble$122

 scanLongDouble$118:
	; 146 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanLongDouble$119:
	; 147 Parameter 73 signed char input
	mov al, [rbp + 48]
	mov [rbp + 73], al

 scanLongDouble$120:
	; 148 Call 49 unscanChar 0
	mov qword [rbp + 49], scanLongDouble$121
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

 scanLongDouble$121:
	; 149 PostCall 49

 scanLongDouble$122:
	; 151 Equal 126 minus integral4$0#
	cmp dword [rbp + 24], 0
	je scanLongDouble$126

 scanLongDouble$123:
	; 156 PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$124:
	; 157 Minus £temporary1407 value
	fchs

 scanLongDouble$125:
	; 158 PopFloat value
	fstp qword [rbp + 32]

 scanLongDouble$126:
	; 162 Equal 128 found integral4$0#
	cmp dword [rbp + 28], 0
	je scanLongDouble$128

 scanLongDouble$127:
	; 165 Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanLongDouble$128:
	; 170 PushFloat value
	fld qword [rbp + 32]

 scanLongDouble$129:
	; 171 SetReturnValue

 scanLongDouble$130:
	; 172 Return value
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanLongDouble$131:
	; 174 FunctionEnd scanLongDouble

section .text

 scanFormat:
	; 0 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$1:
	; 1 Assign shortInt integral4$0#
	mov dword [rbp + 53], 0

 scanFormat$2:
	; 2 Assign longIntOrDouble integral4$0#
	mov dword [rbp + 57], 0

 scanFormat$3:
	; 3 Assign longDouble integral4$0#
	mov dword [rbp + 61], 0

 scanFormat$4:
	; 4 Assign star integral4$0#
	mov dword [rbp + 65], 0

 scanFormat$5:
	; 5 Assign g_inCount integral4$0#
	mov dword [g_inCount], 0

 scanFormat$6:
	; 6 Assign g_inChars integral4$0#
	mov dword [g_inChars], 0

 scanFormat$7:
	; 7 Assign index integral4$0#
	mov dword [rbp + 93], 0

 scanFormat$8:
	; 9 IntegralToIntegral £temporary1417 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$9:
	; 10 Add £temporary1418 format £temporary1417
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$10:
	; 11 Dereference £temporary1419 £temporary1418 0

 scanFormat$11:
	; 12 Equal 338 £temporary1419 integral1$0#
	cmp byte [rsi], 0
	je scanFormat$338

 scanFormat$12:
	; 14 IntegralToIntegral £temporary1422 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$13:
	; 15 Add £temporary1423 format £temporary1422
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$14:
	; 16 Dereference £temporary1424 £temporary1423 0

 scanFormat$15:
	; 17 Assign c £temporary1424
	mov al, [rsi]
	mov [rbp + 40], al

 scanFormat$16:
	; 18 IntegralToIntegral £temporary1426 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$17
	neg al
	neg eax

 scanFormat$17:
	; 19 Add d £temporary1426 integral4$1#
	inc eax
	mov [rbp + 153], eax

 scanFormat$18:
	; 21 Equal 330 percent integral4$0#
	cmp dword [rbp + 49], 0
	je scanFormat$330

 scanFormat$19:
	; 24 Subtract £temporary1427 d integral4$1#
	mov eax, [rbp + 153]
	dec eax

 scanFormat$20:
	; 25 Case 38 £temporary1427 integral4$104#
	cmp eax, 104
	je scanFormat$38

 scanFormat$21:
	; 26 Case 40 £temporary1427 integral4$108#
	cmp eax, 108
	je scanFormat$40

 scanFormat$22:
	; 27 Case 42 £temporary1427 integral4$76#
	cmp eax, 76
	je scanFormat$42

 scanFormat$23:
	; 28 Case 44 £temporary1427 integral4$42#
	cmp eax, 42
	je scanFormat$44

 scanFormat$24:
	; 29 Case 46 £temporary1427 integral4$99#
	cmp eax, 99
	je scanFormat$46

 scanFormat$25:
	; 30 Case 64 £temporary1427 integral4$115#
	cmp eax, 115
	je scanFormat$64

 scanFormat$26:
	; 31 Case 83 £temporary1427 integral4$100#
	cmp eax, 100
	je scanFormat$83

 scanFormat$27:
	; 32 Case 83 £temporary1427 integral4$105#
	cmp eax, 105
	je scanFormat$83

 scanFormat$28:
	; 33 Case 119 £temporary1427 integral4$111#
	cmp eax, 111
	je scanFormat$119

 scanFormat$29:
	; 34 Case 155 £temporary1427 integral4$120#
	cmp eax, 120
	je scanFormat$155

 scanFormat$30:
	; 35 Case 191 £temporary1427 integral4$117#
	cmp eax, 117
	je scanFormat$191

 scanFormat$31:
	; 36 Case 227 £temporary1427 integral4$103#
	cmp eax, 103
	je scanFormat$227

 scanFormat$32:
	; 37 Case 227 £temporary1427 integral4$102#
	cmp eax, 102
	je scanFormat$227

 scanFormat$33:
	; 38 Case 227 £temporary1427 integral4$101#
	cmp eax, 101
	je scanFormat$227

 scanFormat$34:
	; 39 Case 263 £temporary1427 integral4$91#
	cmp eax, 91
	je scanFormat$263

 scanFormat$35:
	; 40 Case 321 £temporary1427 integral4$110#
	cmp eax, 110
	je scanFormat$321

 scanFormat$36:
	; 41 CaseEnd £temporary1427

 scanFormat$37:
	; 42 Jump 336
	jmp scanFormat$336

 scanFormat$38:
	; 43 Assign shortInt integral4$1#
	mov dword [rbp + 53], 1

 scanFormat$39:
	; 44 Jump 336
	jmp scanFormat$336

 scanFormat$40:
	; 45 Assign longIntOrDouble integral4$1#
	mov dword [rbp + 57], 1

 scanFormat$41:
	; 46 Jump 336
	jmp scanFormat$336

 scanFormat$42:
	; 47 Assign longDouble integral4$1#
	mov dword [rbp + 61], 1

 scanFormat$43:
	; 48 Jump 336
	jmp scanFormat$336

 scanFormat$44:
	; 49 Assign star integral4$1#
	mov dword [rbp + 65], 1

 scanFormat$45:
	; 50 Jump 336
	jmp scanFormat$336

 scanFormat$46:
	; 51 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$47:
	; 52 Call 157 scanChar 0
	mov qword [rbp + 157], scanFormat$48
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

 scanFormat$48:
	; 53 PostCall 157

 scanFormat$49:
	; 54 GetReturnValue £temporary1428

 scanFormat$50:
	; 55 Assign charValue £temporary1428
	mov [rbp + 157], bl

 scanFormat$51:
	; 56 NotEqual 59 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$59

 scanFormat$52:
	; 59 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$53:
	; 61 Subtract £temporary1432 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$54:
	; 62 IntegralToIntegral £temporary1433 £temporary1432

 scanFormat$55:
	; 63 Dereference £temporary1434 £temporary1433 0

 scanFormat$56:
	; 64 Assign charPtr £temporary1434
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$57:
	; 65 Dereference £temporary1435 charPtr 0
	mov rsi, [rbp + 41]

 scanFormat$58:
	; 66 Assign £temporary1435 charValue
	mov al, [rbp + 157]
	mov [rsi], al

 scanFormat$59:
	; 70 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$60:
	; 71 IntegralToIntegral £temporary1438 charValue
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$61
	neg al
	neg eax

 scanFormat$61:
	; 72 Equal 336 £temporary1438 integral4$minus1#
	cmp eax, -1
	je scanFormat$336

 scanFormat$62:
	; 75 Add g_inCount g_inCount integral4$1#
	inc dword [g_inCount]

 scanFormat$63:
	; 80 Jump 336
	jmp scanFormat$336

 scanFormat$64:
	; 81 NotEqual 76 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$76

 scanFormat$65:
	; 84 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$66:
	; 86 Subtract £temporary1446 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$67:
	; 87 IntegralToIntegral £temporary1447 £temporary1446

 scanFormat$68:
	; 88 Dereference £temporary1448 £temporary1447 0

 scanFormat$69:
	; 89 Assign charPtr £temporary1448
	mov rax, [rsi]
	mov [rbp + 41], rax

 scanFormat$70:
	; 90 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$71:
	; 91 Parameter 181 pointer charPtr
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

 scanFormat$72:
	; 92 Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], 0

 scanFormat$73:
	; 93 Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$74
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$74:
	; 94 PostCall 157

 scanFormat$75:
	; 95 Jump 81
	jmp scanFormat$81

 scanFormat$76:
	; 97 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$77:
	; 98 Parameter 181 pointer integral8$0#
	mov qword [rbp + 181], 0

 scanFormat$78:
	; 99 Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], 0

 scanFormat$79:
	; 100 Call 157 scanString 0
	mov qword [rbp + 157], scanFormat$80
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

 scanFormat$80:
	; 101 PostCall 157

 scanFormat$81:
	; 103 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$82:
	; 104 Jump 336
	jmp scanFormat$336

 scanFormat$83:
	; 105 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$84:
	; 106 Parameter 181 signed int integral4$10#
	mov dword [rbp + 181], 10

 scanFormat$85:
	; 107 Call 157 scanLongInt 0
	mov qword [rbp + 157], scanFormat$86
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

 scanFormat$86:
	; 108 PostCall 157

 scanFormat$87:
	; 109 GetReturnValue £temporary1453

 scanFormat$88:
	; 110 Assign longValue £temporary1453
	mov [rbp + 69], rbx

 scanFormat$89:
	; 111 NotEqual 117 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$117

 scanFormat$90:
	; 114 Equal 100 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$100

 scanFormat$91:
	; 117 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$92:
	; 119 Subtract £temporary1457 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$93:
	; 120 IntegralToIntegral £temporary1458 £temporary1457

 scanFormat$94:
	; 121 Dereference £temporary1459 £temporary1458 0

 scanFormat$95:
	; 122 Assign shortPtr £temporary1459
	mov rax, [rsi]
	mov [rbp + 85], rax

 scanFormat$96:
	; 123 Dereference £temporary1460 shortPtr 0
	mov rsi, [rbp + 85]

 scanFormat$97:
	; 124 IntegralToIntegral £temporary1461 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$98
	neg rax
	neg ax

 scanFormat$98:
	; 125 Assign £temporary1460 £temporary1461
	mov [rsi], ax

 scanFormat$99:
	; 126 Jump 117
	jmp scanFormat$117

 scanFormat$100:
	; 128 NotEqual 110 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$110

 scanFormat$101:
	; 131 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$102:
	; 133 Subtract £temporary1465 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$103:
	; 134 IntegralToIntegral £temporary1466 £temporary1465

 scanFormat$104:
	; 135 Dereference £temporary1467 £temporary1466 0

 scanFormat$105:
	; 136 Assign intPtr £temporary1467
	mov rax, [rsi]
	mov [rbp + 97], rax

 scanFormat$106:
	; 137 Dereference £temporary1468 intPtr 0
	mov rsi, [rbp + 97]

 scanFormat$107:
	; 138 IntegralToIntegral £temporary1469 longValue
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$108
	neg rax
	neg eax

 scanFormat$108:
	; 139 Assign £temporary1468 £temporary1469
	mov [rsi], eax

 scanFormat$109:
	; 140 Jump 117
	jmp scanFormat$117

 scanFormat$110:
	; 142 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$111:
	; 144 Subtract £temporary1471 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$112:
	; 145 IntegralToIntegral £temporary1472 £temporary1471

 scanFormat$113:
	; 146 Dereference £temporary1473 £temporary1472 0

 scanFormat$114:
	; 147 Assign longPtr £temporary1473
	mov rax, [rsi]
	mov [rbp + 77], rax

 scanFormat$115:
	; 148 Dereference £temporary1474 longPtr 0
	mov rsi, [rbp + 77]

 scanFormat$116:
	; 149 Assign £temporary1474 longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

 scanFormat$117:
	; 155 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$118:
	; 156 Jump 336
	jmp scanFormat$336

 scanFormat$119:
	; 157 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$120:
	; 158 Parameter 181 signed int integral4$8#
	mov dword [rbp + 181], 8

 scanFormat$121:
	; 159 Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$122
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$122:
	; 160 PostCall 157

 scanFormat$123:
	; 161 GetReturnValue £temporary1482

 scanFormat$124:
	; 162 Assign unsignedLongValue £temporary1482
	mov [rbp + 113], rbx

 scanFormat$125:
	; 163 NotEqual 153 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$153

 scanFormat$126:
	; 166 Equal 136 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$136

 scanFormat$127:
	; 169 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$128:
	; 171 Subtract £temporary1486 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$129:
	; 172 IntegralToIntegral £temporary1487 £temporary1486

 scanFormat$130:
	; 173 Dereference £temporary1488 £temporary1487 0

 scanFormat$131:
	; 174 Assign unsignedShortPtr £temporary1488
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$132:
	; 175 Dereference £temporary1489 unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$133:
	; 176 IntegralToIntegral £temporary1490 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$134:
	; 177 Assign £temporary1489 £temporary1490
	mov [rsi], ax

 scanFormat$135:
	; 178 Jump 153
	jmp scanFormat$153

 scanFormat$136:
	; 180 NotEqual 146 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$146

 scanFormat$137:
	; 183 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$138:
	; 185 Subtract £temporary1494 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$139:
	; 186 IntegralToIntegral £temporary1495 £temporary1494

 scanFormat$140:
	; 187 Dereference £temporary1496 £temporary1495 0

 scanFormat$141:
	; 188 Assign unsignedIntPtr £temporary1496
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$142:
	; 189 Dereference £temporary1497 unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$143:
	; 190 IntegralToIntegral £temporary1498 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$144:
	; 191 Assign £temporary1497 £temporary1498
	mov [rsi], eax

 scanFormat$145:
	; 192 Jump 153
	jmp scanFormat$153

 scanFormat$146:
	; 194 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$147:
	; 196 Subtract £temporary1500 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$148:
	; 197 IntegralToIntegral £temporary1501 £temporary1500

 scanFormat$149:
	; 198 Dereference £temporary1502 £temporary1501 0

 scanFormat$150:
	; 199 Assign unsignedLongPtr £temporary1502
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$151:
	; 200 Dereference £temporary1503 unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$152:
	; 201 Assign £temporary1503 unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$153:
	; 207 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$154:
	; 208 Jump 336
	jmp scanFormat$336

 scanFormat$155:
	; 209 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$156:
	; 210 Parameter 181 signed int integral4$16#
	mov dword [rbp + 181], 16

 scanFormat$157:
	; 211 Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$158
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$158:
	; 212 PostCall 157

 scanFormat$159:
	; 213 GetReturnValue £temporary1511

 scanFormat$160:
	; 214 Assign unsignedLongValue £temporary1511
	mov [rbp + 113], rbx

 scanFormat$161:
	; 215 NotEqual 189 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$189

 scanFormat$162:
	; 218 Equal 172 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$172

 scanFormat$163:
	; 221 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$164:
	; 223 Subtract £temporary1515 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$165:
	; 224 IntegralToIntegral £temporary1516 £temporary1515

 scanFormat$166:
	; 225 Dereference £temporary1517 £temporary1516 0

 scanFormat$167:
	; 226 Assign unsignedShortPtr £temporary1517
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$168:
	; 227 Dereference £temporary1518 unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$169:
	; 228 IntegralToIntegral £temporary1519 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$170:
	; 229 Assign £temporary1518 £temporary1519
	mov [rsi], ax

 scanFormat$171:
	; 230 Jump 189
	jmp scanFormat$189

 scanFormat$172:
	; 232 NotEqual 182 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$182

 scanFormat$173:
	; 235 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$174:
	; 237 Subtract £temporary1523 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$175:
	; 238 IntegralToIntegral £temporary1524 £temporary1523

 scanFormat$176:
	; 239 Dereference £temporary1525 £temporary1524 0

 scanFormat$177:
	; 240 Assign unsignedIntPtr £temporary1525
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$178:
	; 241 Dereference £temporary1526 unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$179:
	; 242 IntegralToIntegral £temporary1527 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$180:
	; 243 Assign £temporary1526 £temporary1527
	mov [rsi], eax

 scanFormat$181:
	; 244 Jump 189
	jmp scanFormat$189

 scanFormat$182:
	; 246 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$183:
	; 248 Subtract £temporary1529 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$184:
	; 249 IntegralToIntegral £temporary1530 £temporary1529

 scanFormat$185:
	; 250 Dereference £temporary1531 £temporary1530 0

 scanFormat$186:
	; 251 Assign unsignedLongPtr £temporary1531
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$187:
	; 252 Dereference £temporary1532 unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$188:
	; 253 Assign £temporary1532 unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$189:
	; 259 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$190:
	; 260 Jump 336
	jmp scanFormat$336

 scanFormat$191:
	; 261 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$192:
	; 262 Parameter 181 signed int integral4$0#
	mov dword [rbp + 181], 0

 scanFormat$193:
	; 263 Call 157 scanUnsignedLongInt 0
	mov qword [rbp + 157], scanFormat$194
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

 scanFormat$194:
	; 264 PostCall 157

 scanFormat$195:
	; 265 GetReturnValue £temporary1540

 scanFormat$196:
	; 266 Assign unsignedLongValue £temporary1540
	mov [rbp + 113], rbx

 scanFormat$197:
	; 267 NotEqual 225 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$225

 scanFormat$198:
	; 270 Equal 208 shortInt integral4$0#
	cmp dword [rbp + 53], 0
	je scanFormat$208

 scanFormat$199:
	; 273 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$200:
	; 275 Subtract £temporary1544 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$201:
	; 276 IntegralToIntegral £temporary1545 £temporary1544

 scanFormat$202:
	; 277 Dereference £temporary1546 £temporary1545 0

 scanFormat$203:
	; 278 Assign unsignedShortPtr £temporary1546
	mov rax, [rsi]
	mov [rbp + 129], rax

 scanFormat$204:
	; 279 Dereference £temporary1547 unsignedShortPtr 0
	mov rsi, [rbp + 129]

 scanFormat$205:
	; 280 IntegralToIntegral £temporary1548 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$206:
	; 281 Assign £temporary1547 £temporary1548
	mov [rsi], ax

 scanFormat$207:
	; 282 Jump 225
	jmp scanFormat$225

 scanFormat$208:
	; 284 NotEqual 218 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	jne scanFormat$218

 scanFormat$209:
	; 287 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$210:
	; 289 Subtract £temporary1552 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$211:
	; 290 IntegralToIntegral £temporary1553 £temporary1552

 scanFormat$212:
	; 291 Dereference £temporary1554 £temporary1553 0

 scanFormat$213:
	; 292 Assign unsignedIntPtr £temporary1554
	mov rax, [rsi]
	mov [rbp + 137], rax

 scanFormat$214:
	; 293 Dereference £temporary1555 unsignedIntPtr 0
	mov rsi, [rbp + 137]

 scanFormat$215:
	; 294 IntegralToIntegral £temporary1556 unsignedLongValue
	mov rax, [rbp + 113]

 scanFormat$216:
	; 295 Assign £temporary1555 £temporary1556
	mov [rsi], eax

 scanFormat$217:
	; 296 Jump 225
	jmp scanFormat$225

 scanFormat$218:
	; 298 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$219:
	; 300 Subtract £temporary1558 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$220:
	; 301 IntegralToIntegral £temporary1559 £temporary1558

 scanFormat$221:
	; 302 Dereference £temporary1560 £temporary1559 0

 scanFormat$222:
	; 303 Assign unsignedLongPtr £temporary1560
	mov rax, [rsi]
	mov [rbp + 121], rax

 scanFormat$223:
	; 304 Dereference £temporary1561 unsignedLongPtr 0
	mov rsi, [rbp + 121]

 scanFormat$224:
	; 305 Assign £temporary1561 unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

 scanFormat$225:
	; 311 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$226:
	; 312 Jump 336
	jmp scanFormat$336

 scanFormat$227:
	; 315 PreCall 157 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$228:
	; 316 Call 157 scanLongDouble 0
	mov qword [rbp + 157], scanFormat$229
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

 scanFormat$229:
	; 317 PostCall 157

 scanFormat$230:
	; 318 GetReturnValue £temporary1569

 scanFormat$231:
	; 319 PopFloat longDoubleValue
	fstp qword [rbp + 145]

 scanFormat$232:
	; 320 NotEqual 261 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$261

 scanFormat$233:
	; 323 Equal 243 longIntOrDouble integral4$0#
	cmp dword [rbp + 57], 0
	je scanFormat$243

 scanFormat$234:
	; 326 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$235:
	; 328 Subtract £temporary1573 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$236:
	; 329 IntegralToIntegral £temporary1574 £temporary1573

 scanFormat$237:
	; 330 Dereference £temporary1575 £temporary1574 0

 scanFormat$238:
	; 331 Assign doublePtr £temporary1575
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$239:
	; 332 Dereference £temporary1576 doublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$240:
	; 335 PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$241:
	; 336 PopFloat £temporary1576
	fstp qword [rsi]

 scanFormat$242:
	; 337 Jump 261
	jmp scanFormat$261

 scanFormat$243:
	; 339 Equal 253 longDouble integral4$0#
	cmp dword [rbp + 61], 0
	je scanFormat$253

 scanFormat$244:
	; 342 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$245:
	; 344 Subtract £temporary1579 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$246:
	; 345 IntegralToIntegral £temporary1580 £temporary1579

 scanFormat$247:
	; 346 Dereference £temporary1581 £temporary1580 0

 scanFormat$248:
	; 347 Assign longDoublePtr £temporary1581
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$249:
	; 348 Dereference £temporary1582 longDoublePtr 0
	mov rsi, [rbp + 157]

 scanFormat$250:
	; 351 PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$251:
	; 352 PopFloat £temporary1582
	fstp qword [rsi]

 scanFormat$252:
	; 353 Jump 261
	jmp scanFormat$261

 scanFormat$253:
	; 355 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$254:
	; 357 Subtract £temporary1584 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$255:
	; 358 IntegralToIntegral £temporary1585 £temporary1584

 scanFormat$256:
	; 359 Dereference £temporary1586 £temporary1585 0

 scanFormat$257:
	; 360 Assign floatPtr £temporary1586
	mov rax, [rsi]
	mov [rbp + 157], rax

 scanFormat$258:
	; 361 Dereference £temporary1587 floatPtr 0
	mov rsi, [rbp + 157]

 scanFormat$259:
	; 364 PushFloat longDoubleValue
	fld qword [rbp + 145]

 scanFormat$260:
	; 365 PopFloat £temporary1587
	fstp dword [rsi]

 scanFormat$261:
	; 371 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$262:
	; 372 Jump 336
	jmp scanFormat$336

 scanFormat$263:
	; 373 Assign not integral4$0#
	mov dword [rbp + 157], 0

 scanFormat$264:
	; 374 Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$265:
	; 376 IntegralToIntegral £temporary1598 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$266:
	; 377 Add £temporary1599 format £temporary1598
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$267:
	; 378 Dereference £temporary1600 £temporary1599 0

 scanFormat$268:
	; 379 NotEqual 271 £temporary1600 integral1$94#
	cmp byte [rsi], 94
	jne scanFormat$271

 scanFormat$269:
	; 382 Assign not integral4$1#
	mov dword [rbp + 157], 1

 scanFormat$270:
	; 383 Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$271:
	; 388 Assign startIndex index
	mov eax, [rbp + 93]
	mov [rbp + 161], eax

 scanFormat$272:
	; 390 IntegralToIntegral £temporary1605 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$273:
	; 391 Add £temporary1606 format £temporary1605
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$274:
	; 392 Dereference £temporary1607 £temporary1606 0

 scanFormat$275:
	; 393 Equal 278 £temporary1607 integral1$93#
	cmp byte [rsi], 93
	je scanFormat$278

 scanFormat$276:
	; 395 Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$277:
	; 398 Jump 272
	jmp scanFormat$272

 scanFormat$278:
	; 399 Subtract size index startIndex
	mov eax, [rbp + 93]
	sub eax, [rbp + 161]
	mov [rbp + 165], eax

 scanFormat$279:
	; 401 IntegralToIntegral £temporary1611 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$280:
	; 402 Add £temporary1612 format £temporary1611
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$281:
	; 403 Dereference £temporary1613 £temporary1612 0

 scanFormat$282:
	; 404 Assign c £temporary1613
	mov al, [rsi]
	mov [rbp + 169], al

 scanFormat$283:
	; 405 IntegralToIntegral £temporary1614 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$284:
	; 406 Add £temporary1615 format £temporary1614
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$285:
	; 407 Dereference £temporary1616 £temporary1615 0

 scanFormat$286:
	; 408 Assign £temporary1616 integral1$0#
	mov byte [rsi], 0

 scanFormat$287:
	; 409 NotEqual 305 star integral4$0#
	cmp dword [rbp + 65], 0
	jne scanFormat$305

 scanFormat$288:
	; 412 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$289:
	; 414 Subtract £temporary1620 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$290:
	; 415 IntegralToIntegral £temporary1621 £temporary1620

 scanFormat$291:
	; 416 Dereference £temporary1622 £temporary1621 0

 scanFormat$292:
	; 417 Assign string £temporary1622
	mov rax, [rsi]
	mov [rbp + 170], rax

 scanFormat$293:
	; 418 PreCall 178 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$294:
	; 419 Parameter 202 pointer string
	mov rax, [rbp + 170]
	mov [rbp + 202], rax

 scanFormat$295:
	; 420 IntegralToIntegral £temporary1623 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$296:
	; 421 Add £temporary1624 format £temporary1623
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$297:
	; 422 Dereference £temporary1625 £temporary1624 0

 scanFormat$298:
	; 423 Address £temporary1626 £temporary1625

 scanFormat$299:
	; 424 Parameter 210 pointer £temporary1626
	mov [rbp + 210], rsi

 scanFormat$300:
	; 425 Parameter 218 signed int size
	mov eax, [rbp + 165]
	mov [rbp + 218], eax

 scanFormat$301:
	; 426 Parameter 222 signed int not
	mov eax, [rbp + 157]
	mov [rbp + 222], eax

 scanFormat$302:
	; 427 Call 178 scanPattern 0
	mov qword [rbp + 178], scanFormat$303
	mov [rbp + 186], rbp
	add rbp, 178
	jmp scanPattern

 scanFormat$303:
	; 428 PostCall 178

 scanFormat$304:
	; 429 Jump 316
	jmp scanFormat$316

 scanFormat$305:
	; 431 PreCall 170 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanFormat$306:
	; 432 Parameter 194 pointer integral8$0#
	mov qword [rbp + 194], 0

 scanFormat$307:
	; 433 IntegralToIntegral £temporary1628 startIndex
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$308:
	; 434 Add £temporary1629 format £temporary1628
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$309:
	; 435 Dereference £temporary1630 £temporary1629 0

 scanFormat$310:
	; 436 Address £temporary1631 £temporary1630

 scanFormat$311:
	; 437 Parameter 202 pointer £temporary1631
	mov [rbp + 202], rsi

 scanFormat$312:
	; 438 Parameter 210 signed int size
	mov eax, [rbp + 165]
	mov [rbp + 210], eax

 scanFormat$313:
	; 439 Parameter 214 signed int not
	mov eax, [rbp + 157]
	mov [rbp + 214], eax

 scanFormat$314:
	; 440 Call 170 scanPattern 0
	mov qword [rbp + 170], scanFormat$315
	mov [rbp + 178], rbp
	add rbp, 170
	jmp scanPattern

 scanFormat$315:
	; 441 PostCall 170

 scanFormat$316:
	; 443 IntegralToIntegral £temporary1635 index
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

 scanFormat$317:
	; 444 Add £temporary1636 format £temporary1635
	mov rsi, [rbp + 24]
	add rsi, rax

 scanFormat$318:
	; 445 Dereference £temporary1637 £temporary1636 0

 scanFormat$319:
	; 446 Assign £temporary1637 c
	mov al, [rbp + 169]
	mov [rsi], al

 scanFormat$320:
	; 447 Jump 336
	jmp scanFormat$336

 scanFormat$321:
	; 448 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 scanFormat$322:
	; 450 Subtract £temporary1639 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 scanFormat$323:
	; 451 IntegralToIntegral £temporary1640 £temporary1639

 scanFormat$324:
	; 452 Dereference £temporary1641 £temporary1640 0

 scanFormat$325:
	; 453 Assign charsPtr £temporary1641
	mov rax, [rsi]
	mov [rbp + 105], rax

 scanFormat$326:
	; 454 Dereference £temporary1642 charsPtr 0
	mov rsi, [rbp + 105]

 scanFormat$327:
	; 455 Assign £temporary1642 g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

 scanFormat$328:
	; 456 Assign percent integral4$0#
	mov dword [rbp + 49], 0

 scanFormat$329:
	; 457 Jump 336
	jmp scanFormat$336

 scanFormat$330:
	; 461 NotEqual 336 c integral1$37#
	cmp byte [rbp + 40], 37
	jne scanFormat$336

 scanFormat$331:
	; 464 Assign percent integral4$1#
	mov dword [rbp + 49], 1

 scanFormat$332:
	; 465 Assign shortInt integral4$0#
	mov dword [rbp + 53], 0

 scanFormat$333:
	; 466 Assign longIntOrDouble integral4$0#
	mov dword [rbp + 57], 0

 scanFormat$334:
	; 467 Assign longDouble integral4$0#
	mov dword [rbp + 61], 0

 scanFormat$335:
	; 468 Assign star integral4$0#
	mov dword [rbp + 65], 0

 scanFormat$336:
	; 474 Add index index integral4$1#
	inc dword [rbp + 93]

 scanFormat$337:
	; 476 Jump 8
	jmp scanFormat$8

 scanFormat$338:
	; 477 SetReturnValue

 scanFormat$339:
	; 478 Return g_inCount
	mov ebx, [g_inCount]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanFormat$340:
	; 480 FunctionEnd scanFormat

section .text

 scanf:
	; 0 Address £temporary1649 format
	mov rsi, rbp
	add rsi, 24

 scanf$1:
	; 1 IntegralToIntegral £temporary1650 £temporary1649

 scanf$2:
	; 2 Add arg_list £temporary1650 integral8$8#
	add rsi, 8
	mov [rdi + 32], rsi

 scanf$3:
	; 4 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 scanf$4:
	; 5 Parameter 64 pointer format
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 scanf$5:
	; 6 Parameter 72 pointer arg_list
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 scanf$6:
	; 7 Call 40 vscanf 0
	mov qword [rdi + 40], scanf$7
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vscanf

 scanf$7:
	; 8 PostCall 40

 scanf$8:
	; 9 GetReturnValue £temporary1652

 scanf$9:
	; 10 SetReturnValue

 scanf$10:
	; 11 Return £temporary1652
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 scanf$11:
	; 13 FunctionEnd scanf

section .text

 vscanf:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vscanf$1:
	; 1 Parameter 64 pointer stdin
	mov rax, [stdin]
	mov [rbp + 64], rax

 vscanf$2:
	; 2 Parameter 72 pointer format
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vscanf$3:
	; 3 Parameter 80 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vscanf$4:
	; 4 Call 40 vfscanf 0
	mov qword [rbp + 40], vscanf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfscanf

 vscanf$5:
	; 5 PostCall 40

 vscanf$6:
	; 6 GetReturnValue £temporary1654

 vscanf$7:
	; 7 SetReturnValue

 vscanf$8:
	; 8 Return £temporary1654
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vscanf$9:
	; 10 FunctionEnd vscanf

section .text

 fscanf:
	; 0 Address £temporary1655 format
	mov rsi, rbp
	add rsi, 32

 fscanf$1:
	; 1 IntegralToIntegral £temporary1656 £temporary1655

 fscanf$2:
	; 2 Add arg_list £temporary1656 integral8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 fscanf$3:
	; 4 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fscanf$4:
	; 5 Parameter 72 pointer inStream
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fscanf$5:
	; 6 Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fscanf$6:
	; 7 Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fscanf$7:
	; 8 Call 48 vfscanf 0
	mov qword [rdi + 48], fscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfscanf

 fscanf$8:
	; 9 PostCall 48

 fscanf$9:
	; 10 GetReturnValue £temporary1658

 fscanf$10:
	; 11 SetReturnValue

 fscanf$11:
	; 12 Return £temporary1658
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fscanf$12:
	; 14 FunctionEnd fscanf

section .text

 vfscanf:
	; 0 Assign g_inStatus integral4$0#
	mov dword [g_inStatus], 0

 vfscanf$1:
	; 1 IntegralToIntegral £temporary1660 inStream
	mov rax, [rbp + 24]

 vfscanf$2:
	; 2 Assign g_inDevice £temporary1660
	mov [g_inDevice], rax

 vfscanf$3:
	; 3 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfscanf$4:
	; 4 Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfscanf$5:
	; 5 Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfscanf$6:
	; 6 Call 48 scanFormat 0
	mov qword [rbp + 48], vfscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vfscanf$7:
	; 7 PostCall 48

 vfscanf$8:
	; 8 GetReturnValue £temporary1661

 vfscanf$9:
	; 9 SetReturnValue

 vfscanf$10:
	; 10 Return £temporary1661
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfscanf$11:
	; 12 FunctionEnd vfscanf

section .text

 sscanf:
	; 0 Address £temporary1662 format
	mov rsi, rbp
	add rsi, 32

 sscanf$1:
	; 1 IntegralToIntegral £temporary1663 £temporary1662

 sscanf$2:
	; 2 Add arg_list £temporary1663 integral8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 sscanf$3:
	; 4 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sscanf$4:
	; 5 Parameter 72 pointer inString
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sscanf$5:
	; 6 Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sscanf$6:
	; 7 Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sscanf$7:
	; 8 Call 48 vsscanf 0
	mov qword [rdi + 48], sscanf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsscanf

 sscanf$8:
	; 9 PostCall 48

 sscanf$9:
	; 10 GetReturnValue £temporary1665

 sscanf$10:
	; 11 SetReturnValue

 sscanf$11:
	; 12 Return £temporary1665
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sscanf$12:
	; 14 FunctionEnd sscanf

section .text

 vsscanf:
	; 0 Assign g_inStatus integral4$1#
	mov dword [g_inStatus], 1

 vsscanf$1:
	; 1 IntegralToIntegral £temporary1667 inString
	mov rax, [rbp + 24]

 vsscanf$2:
	; 2 Assign g_inDevice £temporary1667
	mov [g_inDevice], rax

 vsscanf$3:
	; 3 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsscanf$4:
	; 4 Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsscanf$5:
	; 5 Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsscanf$6:
	; 6 Call 48 scanFormat 0
	mov qword [rbp + 48], vsscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

 vsscanf$7:
	; 7 PostCall 48

 vsscanf$8:
	; 8 GetReturnValue £temporary1668

 vsscanf$9:
	; 9 SetReturnValue

 vsscanf$10:
	; 10 Return £temporary1668
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsscanf$11:
	; 12 FunctionEnd vsscanf
