	global character_testX
	global character_test

	extern printf
	extern islower
	extern isupper
	extern isalpha
	extern isdigit
	extern isalnum
	extern isxdigit
	extern isgraph
	extern isprint
	extern ispunct
	extern iscntrl
	extern isspace
	extern tolower
	extern toupper
	extern $StackTop


section .data

@7906string_ascii2025i0A#:
	; Initializer String ascii %i\n
	db "ascii %i", 10, 0

section .data

@7907string_islower282725c2729203D2025s0A#:
	; Initializer String islower('%c') = %s\n
	db "islower(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7909string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7910string_No#:
	; Initializer String No
	db "No", 0

section .data

@7911string_isupper282725c2729203D2025s0A#:
	; Initializer String isupper('%c') = %s\n
	db "isupper(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7913string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7914string_No#:
	; Initializer String No
	db "No", 0

section .data

@7915string_isalpha282725c2729203D2025s0A#:
	; Initializer String isalpha('%c') = %s\n
	db "isalpha(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7917string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7918string_No#:
	; Initializer String No
	db "No", 0

section .data

@7919string_isdigit282725c2729203D2025s0A#:
	; Initializer String isdigit('%c') = %s\n
	db "isdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7921string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7922string_No#:
	; Initializer String No
	db "No", 0

section .data

@7923string_isalnum282725c2729203D2025s0A#:
	; Initializer String isalnum('%c') = %s\n
	db "isalnum(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7925string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7926string_No#:
	; Initializer String No
	db "No", 0

section .data

@7927string_isxdigit282725c2729203D2025s0A#:
	; Initializer String isxdigit('%c') = %s\n
	db "isxdigit(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7929string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7930string_No#:
	; Initializer String No
	db "No", 0

section .data

@7931string_isgraph282725c2729203D2025s0A#:
	; Initializer String isgraph('%c') = %s\n
	db "isgraph(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7933string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7934string_No#:
	; Initializer String No
	db "No", 0

section .data

@7935string_isprint282725c2729203D2025s0A#:
	; Initializer String isprint('%c') = %s\n
	db "isprint(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7937string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7938string_No#:
	; Initializer String No
	db "No", 0

section .data

@7939string_ispunct282725c2729203D2025s0A#:
	; Initializer String ispunct('%c') = %s\n
	db "ispunct(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7941string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7942string_No#:
	; Initializer String No
	db "No", 0

section .data

@7943string_iscntrl282725c2729203D2025s0A#:
	; Initializer String iscntrl('%c') = %s\n
	db "iscntrl(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7945string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7946string_No#:
	; Initializer String No
	db "No", 0

section .data

@7947string_isspace282725c2729203D2025s0A#:
	; Initializer String isspace('%c') = %s\n
	db "isspace(", 39, "%c", 39, ") = %s", 10, 0

section .data

@7949string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@7950string_No#:
	; Initializer String No
	db "No", 0

section .data

@7951string_tolower282725c2729203D202725c270A#:
	; Initializer String tolower('%c') = '%c'\n
	db "tolower(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 0

section .data

@7952string_toupper282725c2729203D202725c270A0A#:
	; Initializer String toupper('%c') = '%c'\n\n
	db "toupper(", 39, "%c", 39, ") = ", 39, "%c", 39, 10, 10, 0

section .text

 character_testX:
	; 0 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$1:
	; 1 Parameter 49 string string_ascii2025i0A#
	mov qword [rbp + 49], @7906string_ascii2025i0A#

 character_testX$2:
	; 2 IntegralToIntegral £temporary3683 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$3
	neg al
	neg eax

 character_testX$3:
	; 3 Parameter 57 signed int £temporary3683
	mov [rbp + 57], eax

 character_testX$4:
	; 4 Call 25 printf 4
	mov qword [rbp + 25], character_testX$5
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

 character_testX$5:
	; 5 PostCall 25

 character_testX$6:
	; 6 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$7:
	; 7 Parameter 49 string string_islower282725c2729203D2025s0A#
	mov qword [rbp + 49], @7907string_islower282725c2729203D2025s0A#

 character_testX$8:
	; 8 IntegralToIntegral £temporary3685 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$9
	neg al
	neg eax

 character_testX$9:
	; 9 Parameter 57 signed int £temporary3685
	mov [rbp + 57], eax

 character_testX$10:
	; 10 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$11:
	; 11 IntegralToIntegral £temporary3686 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$12
	neg al
	neg eax

 character_testX$12:
	; 12 Parameter 85 signed int £temporary3686
	mov [rbp + 85], eax

 character_testX$13:
	; 13 Call 61 islower 0
	mov qword [rbp + 61], character_testX$14
	mov [rbp + 69], rbp
	add rbp, 61
	jmp islower

 character_testX$14:
	; 14 PostCall 61

 character_testX$15:
	; 15 GetReturnValue £temporary3687

 character_testX$16:
	; 16 Equal 19 £temporary3687 integral4$0#
	cmp ebx, 0
	je character_testX$19

 character_testX$17:
	; 19 Assign £temporary3689 string_Yes#
	mov rax, @7909string_Yes#

 character_testX$18:
	; 20 Jump 20
	jmp character_testX$20

 character_testX$19:
	; 22 Assign £temporary3689 string_No#
	mov rax, @7910string_No#

 character_testX$20:
	; 24 Parameter 61 string £temporary3689
	mov [rbp + 61], rax

 character_testX$21:
	; 25 Call 25 printf 12
	mov qword [rbp + 25], character_testX$22
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$22:
	; 26 PostCall 25

 character_testX$23:
	; 27 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$24:
	; 28 Parameter 49 string string_isupper282725c2729203D2025s0A#
	mov qword [rbp + 49], @7911string_isupper282725c2729203D2025s0A#

 character_testX$25:
	; 29 IntegralToIntegral £temporary3691 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$26
	neg al
	neg eax

 character_testX$26:
	; 30 Parameter 57 signed int £temporary3691
	mov [rbp + 57], eax

 character_testX$27:
	; 31 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$28:
	; 32 IntegralToIntegral £temporary3692 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$29
	neg al
	neg eax

 character_testX$29:
	; 33 Parameter 85 signed int £temporary3692
	mov [rbp + 85], eax

 character_testX$30:
	; 34 Call 61 isupper 0
	mov qword [rbp + 61], character_testX$31
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isupper

 character_testX$31:
	; 35 PostCall 61

 character_testX$32:
	; 36 GetReturnValue £temporary3693

 character_testX$33:
	; 37 Equal 36 £temporary3693 integral4$0#
	cmp ebx, 0
	je character_testX$36

 character_testX$34:
	; 40 Assign £temporary3695 string_Yes#
	mov rax, @7913string_Yes#

 character_testX$35:
	; 41 Jump 37
	jmp character_testX$37

 character_testX$36:
	; 43 Assign £temporary3695 string_No#
	mov rax, @7914string_No#

 character_testX$37:
	; 45 Parameter 61 string £temporary3695
	mov [rbp + 61], rax

 character_testX$38:
	; 46 Call 25 printf 12
	mov qword [rbp + 25], character_testX$39
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$39:
	; 47 PostCall 25

 character_testX$40:
	; 48 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$41:
	; 49 Parameter 49 string string_isalpha282725c2729203D2025s0A#
	mov qword [rbp + 49], @7915string_isalpha282725c2729203D2025s0A#

 character_testX$42:
	; 50 IntegralToIntegral £temporary3697 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$43
	neg al
	neg eax

 character_testX$43:
	; 51 Parameter 57 signed int £temporary3697
	mov [rbp + 57], eax

 character_testX$44:
	; 52 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$45:
	; 53 IntegralToIntegral £temporary3698 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$46
	neg al
	neg eax

 character_testX$46:
	; 54 Parameter 85 signed int £temporary3698
	mov [rbp + 85], eax

 character_testX$47:
	; 55 Call 61 isalpha 0
	mov qword [rbp + 61], character_testX$48
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalpha

 character_testX$48:
	; 56 PostCall 61

 character_testX$49:
	; 57 GetReturnValue £temporary3699

 character_testX$50:
	; 58 Equal 53 £temporary3699 integral4$0#
	cmp ebx, 0
	je character_testX$53

 character_testX$51:
	; 61 Assign £temporary3701 string_Yes#
	mov rax, @7917string_Yes#

 character_testX$52:
	; 62 Jump 54
	jmp character_testX$54

 character_testX$53:
	; 64 Assign £temporary3701 string_No#
	mov rax, @7918string_No#

 character_testX$54:
	; 66 Parameter 61 string £temporary3701
	mov [rbp + 61], rax

 character_testX$55:
	; 67 Call 25 printf 12
	mov qword [rbp + 25], character_testX$56
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$56:
	; 68 PostCall 25

 character_testX$57:
	; 69 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$58:
	; 70 Parameter 49 string string_isdigit282725c2729203D2025s0A#
	mov qword [rbp + 49], @7919string_isdigit282725c2729203D2025s0A#

 character_testX$59:
	; 71 IntegralToIntegral £temporary3703 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$60
	neg al
	neg eax

 character_testX$60:
	; 72 Parameter 57 signed int £temporary3703
	mov [rbp + 57], eax

 character_testX$61:
	; 73 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$62:
	; 74 IntegralToIntegral £temporary3704 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$63
	neg al
	neg eax

 character_testX$63:
	; 75 Parameter 85 signed int £temporary3704
	mov [rbp + 85], eax

 character_testX$64:
	; 76 Call 61 isdigit 0
	mov qword [rbp + 61], character_testX$65
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isdigit

 character_testX$65:
	; 77 PostCall 61

 character_testX$66:
	; 78 GetReturnValue £temporary3705

 character_testX$67:
	; 79 Equal 70 £temporary3705 integral4$0#
	cmp ebx, 0
	je character_testX$70

 character_testX$68:
	; 82 Assign £temporary3707 string_Yes#
	mov rax, @7921string_Yes#

 character_testX$69:
	; 83 Jump 71
	jmp character_testX$71

 character_testX$70:
	; 85 Assign £temporary3707 string_No#
	mov rax, @7922string_No#

 character_testX$71:
	; 87 Parameter 61 string £temporary3707
	mov [rbp + 61], rax

 character_testX$72:
	; 88 Call 25 printf 12
	mov qword [rbp + 25], character_testX$73
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$73:
	; 89 PostCall 25

 character_testX$74:
	; 90 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$75:
	; 91 Parameter 49 string string_isalnum282725c2729203D2025s0A#
	mov qword [rbp + 49], @7923string_isalnum282725c2729203D2025s0A#

 character_testX$76:
	; 92 IntegralToIntegral £temporary3709 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$77
	neg al
	neg eax

 character_testX$77:
	; 93 Parameter 57 signed int £temporary3709
	mov [rbp + 57], eax

 character_testX$78:
	; 94 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$79:
	; 95 IntegralToIntegral £temporary3710 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$80
	neg al
	neg eax

 character_testX$80:
	; 96 Parameter 85 signed int £temporary3710
	mov [rbp + 85], eax

 character_testX$81:
	; 97 Call 61 isalnum 0
	mov qword [rbp + 61], character_testX$82
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isalnum

 character_testX$82:
	; 98 PostCall 61

 character_testX$83:
	; 99 GetReturnValue £temporary3711

 character_testX$84:
	; 100 Equal 87 £temporary3711 integral4$0#
	cmp ebx, 0
	je character_testX$87

 character_testX$85:
	; 103 Assign £temporary3713 string_Yes#
	mov rax, @7925string_Yes#

 character_testX$86:
	; 104 Jump 88
	jmp character_testX$88

 character_testX$87:
	; 106 Assign £temporary3713 string_No#
	mov rax, @7926string_No#

 character_testX$88:
	; 108 Parameter 61 string £temporary3713
	mov [rbp + 61], rax

 character_testX$89:
	; 109 Call 25 printf 12
	mov qword [rbp + 25], character_testX$90
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$90:
	; 110 PostCall 25

 character_testX$91:
	; 111 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$92:
	; 112 Parameter 49 string string_isxdigit282725c2729203D2025s0A#
	mov qword [rbp + 49], @7927string_isxdigit282725c2729203D2025s0A#

 character_testX$93:
	; 113 IntegralToIntegral £temporary3715 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$94
	neg al
	neg eax

 character_testX$94:
	; 114 Parameter 57 signed int £temporary3715
	mov [rbp + 57], eax

 character_testX$95:
	; 115 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$96:
	; 116 IntegralToIntegral £temporary3716 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$97
	neg al
	neg eax

 character_testX$97:
	; 117 Parameter 85 signed int £temporary3716
	mov [rbp + 85], eax

 character_testX$98:
	; 118 Call 61 isxdigit 0
	mov qword [rbp + 61], character_testX$99
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isxdigit

 character_testX$99:
	; 119 PostCall 61

 character_testX$100:
	; 120 GetReturnValue £temporary3717

 character_testX$101:
	; 121 Equal 104 £temporary3717 integral4$0#
	cmp ebx, 0
	je character_testX$104

 character_testX$102:
	; 124 Assign £temporary3719 string_Yes#
	mov rax, @7929string_Yes#

 character_testX$103:
	; 125 Jump 105
	jmp character_testX$105

 character_testX$104:
	; 127 Assign £temporary3719 string_No#
	mov rax, @7930string_No#

 character_testX$105:
	; 129 Parameter 61 string £temporary3719
	mov [rbp + 61], rax

 character_testX$106:
	; 130 Call 25 printf 12
	mov qword [rbp + 25], character_testX$107
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$107:
	; 131 PostCall 25

 character_testX$108:
	; 132 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$109:
	; 133 Parameter 49 string string_isgraph282725c2729203D2025s0A#
	mov qword [rbp + 49], @7931string_isgraph282725c2729203D2025s0A#

 character_testX$110:
	; 134 IntegralToIntegral £temporary3721 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$111
	neg al
	neg eax

 character_testX$111:
	; 135 Parameter 57 signed int £temporary3721
	mov [rbp + 57], eax

 character_testX$112:
	; 136 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$113:
	; 137 IntegralToIntegral £temporary3722 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$114
	neg al
	neg eax

 character_testX$114:
	; 138 Parameter 85 signed int £temporary3722
	mov [rbp + 85], eax

 character_testX$115:
	; 139 Call 61 isgraph 0
	mov qword [rbp + 61], character_testX$116
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isgraph

 character_testX$116:
	; 140 PostCall 61

 character_testX$117:
	; 141 GetReturnValue £temporary3723

 character_testX$118:
	; 142 Equal 121 £temporary3723 integral4$0#
	cmp ebx, 0
	je character_testX$121

 character_testX$119:
	; 145 Assign £temporary3725 string_Yes#
	mov rax, @7933string_Yes#

 character_testX$120:
	; 146 Jump 122
	jmp character_testX$122

 character_testX$121:
	; 148 Assign £temporary3725 string_No#
	mov rax, @7934string_No#

 character_testX$122:
	; 150 Parameter 61 string £temporary3725
	mov [rbp + 61], rax

 character_testX$123:
	; 151 Call 25 printf 12
	mov qword [rbp + 25], character_testX$124
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$124:
	; 152 PostCall 25

 character_testX$125:
	; 153 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$126:
	; 154 Parameter 49 string string_isprint282725c2729203D2025s0A#
	mov qword [rbp + 49], @7935string_isprint282725c2729203D2025s0A#

 character_testX$127:
	; 155 IntegralToIntegral £temporary3727 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$128
	neg al
	neg eax

 character_testX$128:
	; 156 Parameter 57 signed int £temporary3727
	mov [rbp + 57], eax

 character_testX$129:
	; 157 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$130:
	; 158 IntegralToIntegral £temporary3728 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$131
	neg al
	neg eax

 character_testX$131:
	; 159 Parameter 85 signed int £temporary3728
	mov [rbp + 85], eax

 character_testX$132:
	; 160 Call 61 isprint 0
	mov qword [rbp + 61], character_testX$133
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isprint

 character_testX$133:
	; 161 PostCall 61

 character_testX$134:
	; 162 GetReturnValue £temporary3729

 character_testX$135:
	; 163 Equal 138 £temporary3729 integral4$0#
	cmp ebx, 0
	je character_testX$138

 character_testX$136:
	; 166 Assign £temporary3731 string_Yes#
	mov rax, @7937string_Yes#

 character_testX$137:
	; 167 Jump 139
	jmp character_testX$139

 character_testX$138:
	; 169 Assign £temporary3731 string_No#
	mov rax, @7938string_No#

 character_testX$139:
	; 171 Parameter 61 string £temporary3731
	mov [rbp + 61], rax

 character_testX$140:
	; 172 Call 25 printf 12
	mov qword [rbp + 25], character_testX$141
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$141:
	; 173 PostCall 25

 character_testX$142:
	; 174 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$143:
	; 175 Parameter 49 string string_ispunct282725c2729203D2025s0A#
	mov qword [rbp + 49], @7939string_ispunct282725c2729203D2025s0A#

 character_testX$144:
	; 176 IntegralToIntegral £temporary3733 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$145
	neg al
	neg eax

 character_testX$145:
	; 177 Parameter 57 signed int £temporary3733
	mov [rbp + 57], eax

 character_testX$146:
	; 178 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$147:
	; 179 IntegralToIntegral £temporary3734 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$148
	neg al
	neg eax

 character_testX$148:
	; 180 Parameter 85 signed int £temporary3734
	mov [rbp + 85], eax

 character_testX$149:
	; 181 Call 61 ispunct 0
	mov qword [rbp + 61], character_testX$150
	mov [rbp + 69], rbp
	add rbp, 61
	jmp ispunct

 character_testX$150:
	; 182 PostCall 61

 character_testX$151:
	; 183 GetReturnValue £temporary3735

 character_testX$152:
	; 184 Equal 155 £temporary3735 integral4$0#
	cmp ebx, 0
	je character_testX$155

 character_testX$153:
	; 187 Assign £temporary3737 string_Yes#
	mov rax, @7941string_Yes#

 character_testX$154:
	; 188 Jump 156
	jmp character_testX$156

 character_testX$155:
	; 190 Assign £temporary3737 string_No#
	mov rax, @7942string_No#

 character_testX$156:
	; 192 Parameter 61 string £temporary3737
	mov [rbp + 61], rax

 character_testX$157:
	; 193 Call 25 printf 12
	mov qword [rbp + 25], character_testX$158
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$158:
	; 194 PostCall 25

 character_testX$159:
	; 195 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$160:
	; 196 Parameter 49 string string_iscntrl282725c2729203D2025s0A#
	mov qword [rbp + 49], @7943string_iscntrl282725c2729203D2025s0A#

 character_testX$161:
	; 197 IntegralToIntegral £temporary3739 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$162
	neg al
	neg eax

 character_testX$162:
	; 198 Parameter 57 signed int £temporary3739
	mov [rbp + 57], eax

 character_testX$163:
	; 199 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$164:
	; 200 IntegralToIntegral £temporary3740 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$165
	neg al
	neg eax

 character_testX$165:
	; 201 Parameter 85 signed int £temporary3740
	mov [rbp + 85], eax

 character_testX$166:
	; 202 Call 61 iscntrl 0
	mov qword [rbp + 61], character_testX$167
	mov [rbp + 69], rbp
	add rbp, 61
	jmp iscntrl

 character_testX$167:
	; 203 PostCall 61

 character_testX$168:
	; 204 GetReturnValue £temporary3741

 character_testX$169:
	; 205 Equal 172 £temporary3741 integral4$0#
	cmp ebx, 0
	je character_testX$172

 character_testX$170:
	; 208 Assign £temporary3743 string_Yes#
	mov rax, @7945string_Yes#

 character_testX$171:
	; 209 Jump 173
	jmp character_testX$173

 character_testX$172:
	; 211 Assign £temporary3743 string_No#
	mov rax, @7946string_No#

 character_testX$173:
	; 213 Parameter 61 string £temporary3743
	mov [rbp + 61], rax

 character_testX$174:
	; 214 Call 25 printf 12
	mov qword [rbp + 25], character_testX$175
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$175:
	; 215 PostCall 25

 character_testX$176:
	; 216 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$177:
	; 217 Parameter 49 string string_isspace282725c2729203D2025s0A#
	mov qword [rbp + 49], @7947string_isspace282725c2729203D2025s0A#

 character_testX$178:
	; 218 IntegralToIntegral £temporary3745 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$179
	neg al
	neg eax

 character_testX$179:
	; 219 Parameter 57 signed int £temporary3745
	mov [rbp + 57], eax

 character_testX$180:
	; 220 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$181:
	; 221 IntegralToIntegral £temporary3746 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$182
	neg al
	neg eax

 character_testX$182:
	; 222 Parameter 85 signed int £temporary3746
	mov [rbp + 85], eax

 character_testX$183:
	; 223 Call 61 isspace 0
	mov qword [rbp + 61], character_testX$184
	mov [rbp + 69], rbp
	add rbp, 61
	jmp isspace

 character_testX$184:
	; 224 PostCall 61

 character_testX$185:
	; 225 GetReturnValue £temporary3747

 character_testX$186:
	; 226 Equal 189 £temporary3747 integral4$0#
	cmp ebx, 0
	je character_testX$189

 character_testX$187:
	; 229 Assign £temporary3749 string_Yes#
	mov rax, @7949string_Yes#

 character_testX$188:
	; 230 Jump 190
	jmp character_testX$190

 character_testX$189:
	; 232 Assign £temporary3749 string_No#
	mov rax, @7950string_No#

 character_testX$190:
	; 234 Parameter 61 string £temporary3749
	mov [rbp + 61], rax

 character_testX$191:
	; 235 Call 25 printf 12
	mov qword [rbp + 25], character_testX$192
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 12
	jmp printf

 character_testX$192:
	; 236 PostCall 25

 character_testX$193:
	; 237 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$194:
	; 238 Parameter 49 string string_tolower282725c2729203D202725c270A#
	mov qword [rbp + 49], @7951string_tolower282725c2729203D202725c270A#

 character_testX$195:
	; 239 IntegralToIntegral £temporary3751 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$196
	neg al
	neg eax

 character_testX$196:
	; 240 Parameter 57 signed int £temporary3751
	mov [rbp + 57], eax

 character_testX$197:
	; 241 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$198:
	; 242 IntegralToIntegral £temporary3752 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$199
	neg al
	neg eax

 character_testX$199:
	; 243 Parameter 85 signed int £temporary3752
	mov [rbp + 85], eax

 character_testX$200:
	; 244 Call 61 tolower 0
	mov qword [rbp + 61], character_testX$201
	mov [rbp + 69], rbp
	add rbp, 61
	jmp tolower

 character_testX$201:
	; 245 PostCall 61

 character_testX$202:
	; 246 GetReturnValue £temporary3753

 character_testX$203:
	; 247 IntegralToIntegral £temporary3754 £temporary3753
	cmp ebx, 0
	jge character_testX$204
	neg ebx
	neg bl

 character_testX$204:
	; 248 IntegralToIntegral £temporary3755 £temporary3754
	and ebx, 255
	cmp bl, 0
	jge character_testX$205
	neg bl
	neg ebx

 character_testX$205:
	; 249 Parameter 61 signed int £temporary3755
	mov [rbp + 61], ebx

 character_testX$206:
	; 250 Call 25 printf 8
	mov qword [rbp + 25], character_testX$207
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

 character_testX$207:
	; 251 PostCall 25

 character_testX$208:
	; 252 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$209:
	; 253 Parameter 49 string string_toupper282725c2729203D202725c270A0A#
	mov qword [rbp + 49], @7952string_toupper282725c2729203D202725c270A0A#

 character_testX$210:
	; 254 IntegralToIntegral £temporary3757 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$211
	neg al
	neg eax

 character_testX$211:
	; 255 Parameter 57 signed int £temporary3757
	mov [rbp + 57], eax

 character_testX$212:
	; 256 PreCall 25 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_testX$213:
	; 257 IntegralToIntegral £temporary3758 c
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge character_testX$214
	neg al
	neg eax

 character_testX$214:
	; 258 Parameter 85 signed int £temporary3758
	mov [rbp + 85], eax

 character_testX$215:
	; 259 Call 61 toupper 0
	mov qword [rbp + 61], character_testX$216
	mov [rbp + 69], rbp
	add rbp, 61
	jmp toupper

 character_testX$216:
	; 260 PostCall 61

 character_testX$217:
	; 261 GetReturnValue £temporary3759

 character_testX$218:
	; 262 IntegralToIntegral £temporary3760 £temporary3759
	cmp ebx, 0
	jge character_testX$219
	neg ebx
	neg bl

 character_testX$219:
	; 263 IntegralToIntegral £temporary3761 £temporary3760
	and ebx, 255
	cmp bl, 0
	jge character_testX$220
	neg bl
	neg ebx

 character_testX$220:
	; 264 Parameter 61 signed int £temporary3761
	mov [rbp + 61], ebx

 character_testX$221:
	; 265 Call 25 printf 8
	mov qword [rbp + 25], character_testX$222
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp printf

 character_testX$222:
	; 266 PostCall 25

 character_testX$223:
	; 268 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 character_testX$224:
	; 269 FunctionEnd character_testX

section .text

 character_test:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$1:
	; 1 Parameter 48 signed char integral1$97#
	mov byte [rbp + 48], 97

 character_test$2:
	; 2 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$3:
	; 3 PostCall 24

 character_test$4:
	; 4 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$5:
	; 5 Parameter 48 signed char integral1$66#
	mov byte [rbp + 48], 66

 character_test$6:
	; 6 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$7:
	; 7 PostCall 24

 character_test$8:
	; 8 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$9:
	; 9 Parameter 48 signed char integral1$49#
	mov byte [rbp + 48], 49

 character_test$10:
	; 10 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$11:
	; 11 PostCall 24

 character_test$12:
	; 12 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$13:
	; 13 Parameter 48 signed char integral1$46#
	mov byte [rbp + 48], 46

 character_test$14:
	; 14 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$15
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$15:
	; 15 PostCall 24

 character_test$16:
	; 16 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$17:
	; 17 Parameter 48 signed char integral1$10#
	mov byte [rbp + 48], 10

 character_test$18:
	; 18 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$19:
	; 19 PostCall 24

 character_test$20:
	; 20 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$21:
	; 21 Parameter 48 signed char integral1$102#
	mov byte [rbp + 48], 102

 character_test$22:
	; 22 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$23:
	; 23 PostCall 24

 character_test$24:
	; 24 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 character_test$25:
	; 25 Parameter 48 signed char integral1$103#
	mov byte [rbp + 48], 103

 character_test$26:
	; 26 Call 24 character_testX 0
	mov qword [rbp + 24], character_test$27
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_testX

 character_test$27:
	; 27 PostCall 24

 character_test$28:
	; 29 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 character_test$29:
	; 30 FunctionEnd character_test
