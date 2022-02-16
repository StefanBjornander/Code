	global string_test

	extern strlen
	extern printf
	extern strcpy
	extern strncpy
	extern strcat
	extern strncat
	extern strcmp
	extern strncmp
	extern strchr
	extern strrchr
	extern memcpy
	extern memmove
	extern memset
	extern memchr
	extern memcmp
	extern strspn
	extern strcspn
	extern errno
	extern strerror
	extern strtok
	extern $StackTop


section .data

@8852string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@8861string_strlen282225s2229203D2025i0A#:
	; Initializer String strlen("%s") = %i\n
	db "strlen(", 34, "%s", 34, ") = %i", 10, 0

section .data

@8866string_t203D202225s222C20u203D202225s220A#:
	; Initializer String t = "%s", u = "%s"\n
	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

@8867string_abc#:
	; Initializer String abc
	db "abc", 0

section .data

@8868string_abc#:
	; Initializer String abc
	db "abc", 0

section .data

@8872string_t203D202225s222C20u203D202225s220A#:
	; Initializer String t = "%s", u = "%s"\n
	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

@8873string_strcmp28s2C20u29203D2025i0A#:
	; Initializer String strcmp(s, u) = %i\n
	db "strcmp(s, u) = %i", 10, 0

section .data

@8874string_strncmp28s2C20u2C20229203D2025i0A#:
	; Initializer String strncmp(s, u, 2) = %i\n
	db "strncmp(s, u, 2) = %i", 10, 0

section .data

@8878string_strchr28s2C2027l2729203D2025i0A#:
	; Initializer String strchr(s, 'l') = %i\n
	db "strchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

@8884string_strrchr28s2C2027l2729203D2025i0A#:
	; Initializer String strrchr(s, 'l') = %i\n
	db "strrchr(s, ", 39, "l", 39, ") = %i", 10, 0

section .data

@8890string_strchr28s2C2027x2729203D2025i0A#:
	; Initializer String strchr(s, 'x') = %i\n
	db "strchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

@8896string_strrchr28s2C2027x2729203D2025i0A#:
	; Initializer String strrchr(s, 'x') = %i\n
	db "strrchr(s, ", 39, "x", 39, ") = %i", 10, 0

section .data

@8900string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@8904string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@8918string_s203D202225s222C20t203D202225s222C20u203D202225s220A#:
	; Initializer String s = "%s", t = "%s", u = "%s"\n
	db "s = ", 34, "%s", 34, ", t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0

section .data

@8924string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memchr(s, 'l', SIZE * sizeof(char)) = %i\n
	db "memchr(s, ", 39, "l", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

@8933string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memchr(s, 'x', SIZE * sizeof(char)) = %i\n
	db "memchr(s, ", 39, "x", 39, ", SIZE * sizeof(char)) = %i", 10, 0

section .data

@8937string_s3A202225s222C20t3A202225s220A#:
	; Initializer String s: "%s", t: "%s"\n
	db "s: ", 34, "%s", 34, ", t: ", 34, "%s", 34, 10, 0

section .data

@8938string_strcmp28s2C20t29203D2025i0A#:
	; Initializer String strcmp(s, t) = %i\n
	db "strcmp(s, t) = %i", 10, 0

section .data

@8939string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#:
	; Initializer String memcmp(s, t, SIZE * sizeof(char)) = %i\n
	db "memcmp(s, t, SIZE * sizeof(char)) = %i", 10, 0

section .data

@8943string_strspn28s2C2022Hello2C20C2229203D2025i0A#:
	; Initializer String strspn(s, "Hello, C") = %i\n
	db "strspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

@8944string_Hello2C20C#:
	; Initializer String Hello, C
	db "Hello, C", 0

section .data

@8945string_strcspn28s2C2022Hello2C20C2229203D2025i0A#:
	; Initializer String strcspn(s, "Hello, C") = %i\n
	db "strcspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0

section .data

@8946string_Hello2C20C#:
	; Initializer String Hello, C
	db "Hello, C", 0

section .data

@8947string_strerror28errno29203D202225s220A#:
	; Initializer String strerror(errno) = "%s"\n
	db "strerror(errno) = ", 34, "%s", 34, 10, 0

section .data

@8948string_2C#:
	; Initializer String ,
	db ",", 0

section .data

@8951string_strtok28s2C20222C2229203D202225s220A#:
	; Initializer String strtok(s, ",") = "%s"\n
	db "strtok(s, ", 34, ",", 34, ") = ", 34, "%s", 34, 10, 0

section .data

@8954string_2C#:
	; Initializer String ,
	db ",", 0

section .text

 string_test:
	; 0 Assign s string_Hello2C20World21#
	mov qword [rbp + 28], @8852string_Hello2C20World21#

 string_test$1:
	; 1 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$2:
	; 2 Parameter 268 string string_strlen282225s2229203D2025i0A#
	mov qword [rbp + 268], @8861string_strlen282225s2229203D2025i0A#

 string_test$3:
	; 3 Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$4:
	; 4 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$5:
	; 5 Parameter 308 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 308], rax

 string_test$6:
	; 6 Call 284 strlen 0
	mov qword [rbp + 284], string_test$7
	mov [rbp + 292], rbp
	add rbp, 284
	jmp strlen

 string_test$7:
	; 7 PostCall 284

 string_test$8:
	; 8 GetReturnValue £temporary3808

 string_test$9:
	; 9 Parameter 284 signed int £temporary3808
	mov [rbp + 284], ebx

 string_test$10:
	; 10 Call 244 printf 12
	mov qword [rbp + 244], string_test$11
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 12
	jmp printf

 string_test$11:
	; 11 PostCall 244

 string_test$12:
	; 12 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$13:
	; 13 Parameter 268 array t
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$14:
	; 14 Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$15:
	; 15 Call 244 strcpy 0
	mov qword [rbp + 244], string_test$16
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcpy

 string_test$16:
	; 16 PostCall 244

 string_test$17:
	; 17 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$18:
	; 18 Parameter 268 array u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$19:
	; 19 Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$20:
	; 20 Parameter 284 signed int integral4$5#
	mov dword [rbp + 284], 5

 string_test$21:
	; 21 Call 244 strncpy 0
	mov qword [rbp + 244], string_test$22
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncpy

 string_test$22:
	; 22 PostCall 244

 string_test$23:
	; 24 Dereference £temporary3813 £temporary3812 0
	mov rsi, rbp
	add rsi, 136

 string_test$24:
	; 25 Assign £temporary3813 integral1$0#
	mov byte [rsi + 5], 0

 string_test$25:
	; 26 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$26:
	; 27 Parameter 268 string string_t203D202225s222C20u203D202225s220A#
	mov qword [rbp + 268], @8866string_t203D202225s222C20u203D202225s220A#

 string_test$27:
	; 28 Parameter 276 array t
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$28:
	; 29 Parameter 284 array u
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$29:
	; 30 Call 244 printf 16
	mov qword [rbp + 244], string_test$30
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$30:
	; 31 PostCall 244

 string_test$31:
	; 32 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$32:
	; 33 Parameter 268 array t
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$33:
	; 34 Parameter 276 string string_abc#
	mov qword [rbp + 276], @8867string_abc#

 string_test$34:
	; 35 Call 244 strcat 0
	mov qword [rbp + 244], string_test$35
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strcat

 string_test$35:
	; 36 PostCall 244

 string_test$36:
	; 37 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$37:
	; 38 Parameter 268 array u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$38:
	; 39 Call 244 strlen 0
	mov qword [rbp + 244], string_test$39
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strlen

 string_test$39:
	; 40 PostCall 244

 string_test$40:
	; 41 GetReturnValue £temporary3816

 string_test$41:
	; 42 Assign i £temporary3816
	mov [rbp + 24], ebx

 string_test$42:
	; 43 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$43:
	; 44 Parameter 268 array u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$44:
	; 45 Parameter 276 string string_abc#
	mov qword [rbp + 276], @8868string_abc#

 string_test$45:
	; 46 Parameter 284 signed int integral4$2#
	mov dword [rbp + 284], 2

 string_test$46:
	; 47 Call 244 strncat 0
	mov qword [rbp + 244], string_test$47
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strncat

 string_test$47:
	; 48 PostCall 244

 string_test$48:
	; 49 Add £temporary3818 i integral4$2#
	mov eax, [rbp + 24]
	add eax, 2

 string_test$49:
	; 50 IntegralToIntegral £temporary3819 £temporary3818
	mov rbx, 4294967295
	and rax, rbx

 string_test$50:
	; 51 Add £temporary3820 u £temporary3819
	mov rsi, rbp
	add rsi, 136
	add rsi, rax

 string_test$51:
	; 52 Dereference £temporary3821 £temporary3820 0

 string_test$52:
	; 53 Assign £temporary3821 integral1$0#
	mov byte [rsi], 0

 string_test$53:
	; 54 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$54:
	; 55 Parameter 268 string string_t203D202225s222C20u203D202225s220A#
	mov qword [rbp + 268], @8872string_t203D202225s222C20u203D202225s220A#

 string_test$55:
	; 56 Parameter 276 array t
	mov [rbp + 276], rbp
	add qword [rbp + 276], 36

 string_test$56:
	; 57 Parameter 284 array u
	mov [rbp + 284], rbp
	add qword [rbp + 284], 136

 string_test$57:
	; 58 Call 244 printf 16
	mov qword [rbp + 244], string_test$58
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$58:
	; 59 PostCall 244

 string_test$59:
	; 60 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$60:
	; 61 Parameter 268 string string_strcmp28s2C20u29203D2025i0A#
	mov qword [rbp + 268], @8873string_strcmp28s2C20u29203D2025i0A#

 string_test$61:
	; 62 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$62:
	; 63 Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$63:
	; 64 Parameter 308 array u
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$64:
	; 65 Call 276 strcmp 0
	mov qword [rbp + 276], string_test$65
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$65:
	; 66 PostCall 276

 string_test$66:
	; 67 GetReturnValue £temporary3823

 string_test$67:
	; 68 Parameter 276 signed int £temporary3823
	mov [rbp + 276], ebx

 string_test$68:
	; 69 Call 244 printf 4
	mov qword [rbp + 244], string_test$69
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$69:
	; 70 PostCall 244

 string_test$70:
	; 71 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$71:
	; 72 Parameter 268 string string_strncmp28s2C20u2C20229203D2025i0A#
	mov qword [rbp + 268], @8874string_strncmp28s2C20u2C20229203D2025i0A#

 string_test$72:
	; 73 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$73:
	; 74 Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$74:
	; 75 Parameter 308 array u
	mov [rbp + 308], rbp
	add qword [rbp + 308], 136

 string_test$75:
	; 76 Parameter 316 signed int integral4$2#
	mov dword [rbp + 316], 2

 string_test$76:
	; 77 Call 276 strncmp 0
	mov qword [rbp + 276], string_test$77
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strncmp

 string_test$77:
	; 78 PostCall 276

 string_test$78:
	; 79 GetReturnValue £temporary3825

 string_test$79:
	; 80 Parameter 276 signed int £temporary3825
	mov [rbp + 276], ebx

 string_test$80:
	; 81 Call 244 printf 4
	mov qword [rbp + 244], string_test$81
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$81:
	; 82 PostCall 244

 string_test$82:
	; 83 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$83:
	; 84 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$84:
	; 85 Parameter 276 signed int integral4$108#
	mov dword [rbp + 276], 108

 string_test$85:
	; 86 Call 244 strchr 0
	mov qword [rbp + 244], string_test$86
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$86:
	; 87 PostCall 244

 string_test$87:
	; 88 GetReturnValue £temporary3827

 string_test$88:
	; 89 Assign p £temporary3827
	mov [rbp + 236], rbx

 string_test$89:
	; 90 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$90:
	; 91 Parameter 268 string string_strchr28s2C2027l2729203D2025i0A#
	mov qword [rbp + 268], @8878string_strchr28s2C2027l2729203D2025i0A#

 string_test$91:
	; 92 Equal 95 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$95

 string_test$92:
	; 95 Subtract £temporary3829 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$93:
	; 96 IntegralToIntegral £temporary3831 £temporary3829

 string_test$94:
	; 98 Jump 96
	jmp string_test$96

 string_test$95:
	; 100 Assign £temporary3831 integral4$minus1#
	mov eax, -1

 string_test$96:
	; 102 Parameter 276 signed int £temporary3831
	mov [rbp + 276], eax

 string_test$97:
	; 103 Call 244 printf 4
	mov qword [rbp + 244], string_test$98
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$98:
	; 104 PostCall 244

 string_test$99:
	; 105 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$100:
	; 106 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$101:
	; 107 Parameter 276 signed int integral4$108#
	mov dword [rbp + 276], 108

 string_test$102:
	; 108 Call 244 strrchr 0
	mov qword [rbp + 244], string_test$103
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$103:
	; 109 PostCall 244

 string_test$104:
	; 110 GetReturnValue £temporary3833

 string_test$105:
	; 111 Assign p £temporary3833
	mov [rbp + 236], rbx

 string_test$106:
	; 112 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$107:
	; 113 Parameter 268 string string_strrchr28s2C2027l2729203D2025i0A#
	mov qword [rbp + 268], @8884string_strrchr28s2C2027l2729203D2025i0A#

 string_test$108:
	; 114 Equal 112 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$112

 string_test$109:
	; 117 Subtract £temporary3835 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$110:
	; 118 IntegralToIntegral £temporary3837 £temporary3835

 string_test$111:
	; 120 Jump 113
	jmp string_test$113

 string_test$112:
	; 122 Assign £temporary3837 integral4$minus1#
	mov eax, -1

 string_test$113:
	; 124 Parameter 276 signed int £temporary3837
	mov [rbp + 276], eax

 string_test$114:
	; 125 Call 244 printf 4
	mov qword [rbp + 244], string_test$115
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$115:
	; 126 PostCall 244

 string_test$116:
	; 127 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$117:
	; 128 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$118:
	; 129 Parameter 276 signed int integral4$120#
	mov dword [rbp + 276], 120

 string_test$119:
	; 130 Call 244 strchr 0
	mov qword [rbp + 244], string_test$120
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strchr

 string_test$120:
	; 131 PostCall 244

 string_test$121:
	; 132 GetReturnValue £temporary3839

 string_test$122:
	; 133 Assign p £temporary3839
	mov [rbp + 236], rbx

 string_test$123:
	; 134 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$124:
	; 135 Parameter 268 string string_strchr28s2C2027x2729203D2025i0A#
	mov qword [rbp + 268], @8890string_strchr28s2C2027x2729203D2025i0A#

 string_test$125:
	; 136 Equal 129 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$129

 string_test$126:
	; 139 Subtract £temporary3841 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$127:
	; 140 IntegralToIntegral £temporary3843 £temporary3841

 string_test$128:
	; 142 Jump 130
	jmp string_test$130

 string_test$129:
	; 144 Assign £temporary3843 integral4$minus1#
	mov eax, -1

 string_test$130:
	; 146 Parameter 276 signed int £temporary3843
	mov [rbp + 276], eax

 string_test$131:
	; 147 Call 244 printf 4
	mov qword [rbp + 244], string_test$132
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$132:
	; 148 PostCall 244

 string_test$133:
	; 149 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$134:
	; 150 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$135:
	; 151 Parameter 276 signed int integral4$120#
	mov dword [rbp + 276], 120

 string_test$136:
	; 152 Call 244 strrchr 0
	mov qword [rbp + 244], string_test$137
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strrchr

 string_test$137:
	; 153 PostCall 244

 string_test$138:
	; 154 GetReturnValue £temporary3845

 string_test$139:
	; 155 Assign p £temporary3845
	mov [rbp + 236], rbx

 string_test$140:
	; 156 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$141:
	; 157 Parameter 268 string string_strrchr28s2C2027x2729203D2025i0A#
	mov qword [rbp + 268], @8896string_strrchr28s2C2027x2729203D2025i0A#

 string_test$142:
	; 158 Equal 146 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$146

 string_test$143:
	; 161 Subtract £temporary3847 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$144:
	; 162 IntegralToIntegral £temporary3849 £temporary3847

 string_test$145:
	; 164 Jump 147
	jmp string_test$147

 string_test$146:
	; 166 Assign £temporary3849 integral4$minus1#
	mov eax, -1

 string_test$147:
	; 168 Parameter 276 signed int £temporary3849
	mov [rbp + 276], eax

 string_test$148:
	; 169 Call 244 printf 4
	mov qword [rbp + 244], string_test$149
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$149:
	; 170 PostCall 244

 string_test$150:
	; 171 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$151:
	; 172 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$152:
	; 173 Parameter 276 string string_Hello2C20World21#
	mov qword [rbp + 276], @8900string_Hello2C20World21#

 string_test$153:
	; 174 Parameter 284 signed int integral4$20#
	mov dword [rbp + 284], 20

 string_test$154:
	; 175 Call 244 memcpy 0
	mov qword [rbp + 244], string_test$155
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memcpy

 string_test$155:
	; 176 PostCall 244

 string_test$156:
	; 177 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$157:
	; 178 Parameter 268 array t
	mov [rbp + 268], rbp
	add qword [rbp + 268], 36

 string_test$158:
	; 179 Parameter 276 string string_Hello2C20World21#
	mov qword [rbp + 276], @8904string_Hello2C20World21#

 string_test$159:
	; 180 Parameter 284 signed int integral4$20#
	mov dword [rbp + 284], 20

 string_test$160:
	; 181 Call 244 memmove 0
	mov qword [rbp + 244], string_test$161
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memmove

 string_test$161:
	; 182 PostCall 244

 string_test$162:
	; 183 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$163:
	; 184 Parameter 268 array u
	mov [rbp + 268], rbp
	add qword [rbp + 268], 136

 string_test$164:
	; 185 Parameter 276 signed int integral4$88#
	mov dword [rbp + 276], 88

 string_test$165:
	; 186 Parameter 280 signed int integral4$20#
	mov dword [rbp + 280], 20

 string_test$166:
	; 187 Call 244 memset 0
	mov qword [rbp + 244], string_test$167
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memset

 string_test$167:
	; 188 PostCall 244

 string_test$168:
	; 190 Dereference £temporary3855 £temporary3854 0
	mov rsi, rbp
	add rsi, 136

 string_test$169:
	; 191 Assign £temporary3855 integral1$0#
	mov byte [rsi + 19], 0

 string_test$170:
	; 192 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$171:
	; 193 Parameter 268 string string_s203D202225s222C20t203D202225s222C20u203D202225s220A#
	mov qword [rbp + 268], @8918string_s203D202225s222C20t203D202225s222C20u203D202225s220A#

 string_test$172:
	; 194 Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$173:
	; 195 Parameter 284 array t
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$174:
	; 196 Parameter 292 array u
	mov [rbp + 292], rbp
	add qword [rbp + 292], 136

 string_test$175:
	; 197 Call 244 printf 24
	mov qword [rbp + 244], string_test$176
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 24
	jmp printf

 string_test$176:
	; 198 PostCall 244

 string_test$177:
	; 199 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$178:
	; 200 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$179:
	; 201 Parameter 276 signed int integral4$108#
	mov dword [rbp + 276], 108

 string_test$180:
	; 202 Parameter 280 signed int integral4$20#
	mov dword [rbp + 280], 20

 string_test$181:
	; 203 Call 244 memchr 0
	mov qword [rbp + 244], string_test$182
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$182:
	; 204 PostCall 244

 string_test$183:
	; 205 GetReturnValue £temporary3857

 string_test$184:
	; 206 Assign p £temporary3857
	mov [rbp + 236], rbx

 string_test$185:
	; 207 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$186:
	; 208 Parameter 268 string string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#
	mov qword [rbp + 268], @8924string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$187:
	; 209 Equal 191 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$191

 string_test$188:
	; 212 Subtract £temporary3859 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$189:
	; 213 IntegralToIntegral £temporary3861 £temporary3859

 string_test$190:
	; 215 Jump 192
	jmp string_test$192

 string_test$191:
	; 217 Assign £temporary3861 integral4$minus1#
	mov eax, -1

 string_test$192:
	; 219 Parameter 276 signed int £temporary3861
	mov [rbp + 276], eax

 string_test$193:
	; 220 Call 244 printf 4
	mov qword [rbp + 244], string_test$194
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$194:
	; 221 PostCall 244

 string_test$195:
	; 222 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$196:
	; 223 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$197:
	; 224 Parameter 276 signed int integral4$120#
	mov dword [rbp + 276], 120

 string_test$198:
	; 225 Parameter 280 signed int integral4$20#
	mov dword [rbp + 280], 20

 string_test$199:
	; 226 Call 244 memchr 0
	mov qword [rbp + 244], string_test$200
	mov [rbp + 252], rbp
	add rbp, 244
	jmp memchr

 string_test$200:
	; 227 PostCall 244

 string_test$201:
	; 228 GetReturnValue £temporary3863

 string_test$202:
	; 229 Assign p £temporary3863
	mov [rbp + 236], rbx

 string_test$203:
	; 230 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$204:
	; 231 Parameter 268 string string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#
	mov qword [rbp + 268], @8933string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$205:
	; 232 Equal 209 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$209

 string_test$206:
	; 235 Subtract £temporary3865 p s
	mov rax, [rbp + 236]
	sub rax, [rbp + 28]

 string_test$207:
	; 236 IntegralToIntegral £temporary3867 £temporary3865

 string_test$208:
	; 238 Jump 210
	jmp string_test$210

 string_test$209:
	; 240 Assign £temporary3867 integral4$minus1#
	mov eax, -1

 string_test$210:
	; 242 Parameter 276 signed int £temporary3867
	mov [rbp + 276], eax

 string_test$211:
	; 243 Call 244 printf 4
	mov qword [rbp + 244], string_test$212
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$212:
	; 244 PostCall 244

 string_test$213:
	; 245 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$214:
	; 246 Parameter 268 string string_s3A202225s222C20t3A202225s220A#
	mov qword [rbp + 268], @8937string_s3A202225s222C20t3A202225s220A#

 string_test$215:
	; 247 Parameter 276 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 276], rax

 string_test$216:
	; 248 Parameter 284 array t
	mov [rbp + 284], rbp
	add qword [rbp + 284], 36

 string_test$217:
	; 249 Call 244 printf 16
	mov qword [rbp + 244], string_test$218
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 16
	jmp printf

 string_test$218:
	; 250 PostCall 244

 string_test$219:
	; 251 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$220:
	; 252 Parameter 268 string string_strcmp28s2C20t29203D2025i0A#
	mov qword [rbp + 268], @8938string_strcmp28s2C20t29203D2025i0A#

 string_test$221:
	; 253 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$222:
	; 254 Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$223:
	; 255 Parameter 308 array t
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$224:
	; 256 Call 276 strcmp 0
	mov qword [rbp + 276], string_test$225
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcmp

 string_test$225:
	; 257 PostCall 276

 string_test$226:
	; 258 GetReturnValue £temporary3870

 string_test$227:
	; 259 Parameter 276 signed int £temporary3870
	mov [rbp + 276], ebx

 string_test$228:
	; 260 Call 244 printf 4
	mov qword [rbp + 244], string_test$229
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$229:
	; 261 PostCall 244

 string_test$230:
	; 262 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$231:
	; 263 Parameter 268 string string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#
	mov qword [rbp + 268], @8939string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#

 string_test$232:
	; 264 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$233:
	; 265 Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$234:
	; 266 Parameter 308 array t
	mov [rbp + 308], rbp
	add qword [rbp + 308], 36

 string_test$235:
	; 267 Parameter 316 signed int integral4$20#
	mov dword [rbp + 316], 20

 string_test$236:
	; 268 Call 276 memcmp 0
	mov qword [rbp + 276], string_test$237
	mov [rbp + 284], rbp
	add rbp, 276
	jmp memcmp

 string_test$237:
	; 269 PostCall 276

 string_test$238:
	; 270 GetReturnValue £temporary3872

 string_test$239:
	; 271 Parameter 276 signed int £temporary3872
	mov [rbp + 276], ebx

 string_test$240:
	; 272 Call 244 printf 4
	mov qword [rbp + 244], string_test$241
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$241:
	; 273 PostCall 244

 string_test$242:
	; 274 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$243:
	; 275 Parameter 268 string string_strspn28s2C2022Hello2C20C2229203D2025i0A#
	mov qword [rbp + 268], @8943string_strspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$244:
	; 276 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$245:
	; 277 Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$246:
	; 278 Parameter 308 string string_Hello2C20C#
	mov qword [rbp + 308], @8944string_Hello2C20C#

 string_test$247:
	; 279 Call 276 strspn 0
	mov qword [rbp + 276], string_test$248
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strspn

 string_test$248:
	; 280 PostCall 276

 string_test$249:
	; 281 GetReturnValue £temporary3874

 string_test$250:
	; 282 Parameter 276 signed int £temporary3874
	mov [rbp + 276], ebx

 string_test$251:
	; 283 Call 244 printf 4
	mov qword [rbp + 244], string_test$252
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$252:
	; 284 PostCall 244

 string_test$253:
	; 285 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$254:
	; 286 Parameter 268 string string_strcspn28s2C2022Hello2C20C2229203D2025i0A#
	mov qword [rbp + 268], @8945string_strcspn28s2C2022Hello2C20C2229203D2025i0A#

 string_test$255:
	; 287 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$256:
	; 288 Parameter 300 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 300], rax

 string_test$257:
	; 289 Parameter 308 string string_Hello2C20C#
	mov qword [rbp + 308], @8946string_Hello2C20C#

 string_test$258:
	; 290 Call 276 strcspn 0
	mov qword [rbp + 276], string_test$259
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strcspn

 string_test$259:
	; 291 PostCall 276

 string_test$260:
	; 292 GetReturnValue £temporary3876

 string_test$261:
	; 293 Parameter 276 signed int £temporary3876
	mov [rbp + 276], ebx

 string_test$262:
	; 294 Call 244 printf 4
	mov qword [rbp + 244], string_test$263
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 4
	jmp printf

 string_test$263:
	; 295 PostCall 244

 string_test$264:
	; 296 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$265:
	; 297 Parameter 268 string string_strerror28errno29203D202225s220A#
	mov qword [rbp + 268], @8947string_strerror28errno29203D202225s220A#

 string_test$266:
	; 298 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$267:
	; 299 Parameter 300 signed int errno
	mov eax, [errno]
	mov [rbp + 300], eax

 string_test$268:
	; 300 Call 276 strerror 0
	mov qword [rbp + 276], string_test$269
	mov [rbp + 284], rbp
	add rbp, 276
	jmp strerror

 string_test$269:
	; 301 PostCall 276

 string_test$270:
	; 302 GetReturnValue £temporary3878

 string_test$271:
	; 303 Parameter 276 pointer £temporary3878
	mov [rbp + 276], rbx

 string_test$272:
	; 304 Call 244 printf 8
	mov qword [rbp + 244], string_test$273
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$273:
	; 305 PostCall 244

 string_test$274:
	; 306 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$275:
	; 307 Parameter 268 pointer s
	mov rax, [rbp + 28]
	mov [rbp + 268], rax

 string_test$276:
	; 308 Parameter 276 string string_2C#
	mov qword [rbp + 276], @8948string_2C#

 string_test$277:
	; 309 Call 244 strtok 0
	mov qword [rbp + 244], string_test$278
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$278:
	; 310 PostCall 244

 string_test$279:
	; 311 GetReturnValue £temporary3880

 string_test$280:
	; 312 Assign p £temporary3880
	mov [rbp + 236], rbx

 string_test$281:
	; 314 Equal 295 p integral8$0#
	cmp qword [rbp + 236], 0
	je string_test$295

 string_test$282:
	; 316 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$283:
	; 317 Parameter 268 string string_strtok28s2C20222C2229203D202225s220A#
	mov qword [rbp + 268], @8951string_strtok28s2C20222C2229203D202225s220A#

 string_test$284:
	; 318 Parameter 276 pointer p
	mov rax, [rbp + 236]
	mov [rbp + 276], rax

 string_test$285:
	; 319 Call 244 printf 8
	mov qword [rbp + 244], string_test$286
	mov [rbp + 252], rbp
	add rbp, 244
	mov rdi, rbp
	add rdi, 8
	jmp printf

 string_test$286:
	; 320 PostCall 244

 string_test$287:
	; 321 PreCall 244 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 string_test$288:
	; 322 Parameter 268 pointer integral8$0#
	mov qword [rbp + 268], 0

 string_test$289:
	; 323 Parameter 276 string string_2C#
	mov qword [rbp + 276], @8954string_2C#

 string_test$290:
	; 324 Call 244 strtok 0
	mov qword [rbp + 244], string_test$291
	mov [rbp + 252], rbp
	add rbp, 244
	jmp strtok

 string_test$291:
	; 325 PostCall 244

 string_test$292:
	; 326 GetReturnValue £temporary3883

 string_test$293:
	; 327 Assign p £temporary3883
	mov [rbp + 236], rbx

 string_test$294:
	; 329 Jump 281
	jmp string_test$281

 string_test$295:
	; 331 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 string_test$296:
	; 332 FunctionEnd string_test
