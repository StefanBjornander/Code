	global g_firstBlockPtr
	global malloc
	global calloc
	global free
	global realloc
	global print_heap

	extern stderr
	extern fprintf
	extern abort
	extern memset
	extern memcpy
	extern printf
	extern $StackTop


section .data

g_firstBlockPtr:
	; Initializer Pointer 0
	dq 0

section .data

@622string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@623string_memorySize203E3D200#:
	; Initializer String memorySize >= 0
	db "memorySize >= 0", 0

section .data

@624string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 malloc:
	; 0 IntegralToIntegral £temporary26 memorySize
	mov eax, [rbp + 24]

 malloc$1:
	; 1 Add newBlockSize £temporary26 integral4$12#
	add eax, 12
	mov [rbp + 28], eax

 malloc$2:
	; 3 Assign minGap integral4$0#
	mov dword [rbp + 32], 0

 malloc$3:
	; 4 StackTop £temporary28
	mov rax, $StackTop

 malloc$4:
	; 5 Add £temporary29 £temporary28 integral8$1048572#
	add rax, 1048572

 malloc$5:
	; 6 IntegralToIntegral £temporary30 £temporary29

 malloc$6:
	; 7 Assign lastAddress £temporary30
	mov [rbp + 36], eax

 malloc$7:
	; 8 Assign minBlockPtr integral8$0#
	mov qword [rbp + 40], 0

 malloc$8:
	; 9 Assign minPrevBlockPtr integral8$0#
	mov qword [rbp + 48], 0

 malloc$9:
	; 10 Assign prevBlockPtr integral8$0#
	mov qword [rbp + 56], 0

 malloc$10:
	; 11 Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

 malloc$11:
	; 12 GreaterThanEqual 23 memorySize integral4$0#
	cmp dword [rbp + 24], 0
	jge malloc$23

 malloc$12:
	; 15 PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$13:
	; 16 Parameter 96 pointer stderr
	mov rax, [stderr]
	mov [rbp + 96], rax

 malloc$14:
	; 17 Parameter 104 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 104], @622string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 malloc$15:
	; 18 Parameter 112 string string_memorySize203E3D200#
	mov qword [rbp + 112], @623string_memorySize203E3D200#

 malloc$16:
	; 19 Parameter 120 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 120], @624string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 malloc$17:
	; 20 Parameter 128 signed int integral4$41#
	mov dword [rbp + 128], 41

 malloc$18:
	; 21 Call 72 fprintf 20
	mov qword [rbp + 72], malloc$19
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 malloc$19:
	; 22 PostCall 72

 malloc$20:
	; 23 PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$21:
	; 24 Call 72 abort 0
	mov qword [rbp + 72], malloc$22
	mov [rbp + 80], rbp
	add rbp, 72
	jmp abort

 malloc$22:
	; 25 PostCall 72

 malloc$23:
	; 30 NotEqual 26 memorySize integral4$0#
	cmp dword [rbp + 24], 0
	jne malloc$26

 malloc$24:
	; 33 SetReturnValue

 malloc$25:
	; 34 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$26:
	; 39 Equal 44 currBlockPtr integral8$0#
	cmp qword [rbp + 64], 0
	je malloc$44

 malloc$27:
	; 41 IntegralToIntegral £temporary41 currBlockPtr
	mov rax, [rbp + 64]

 malloc$28:
	; 42 Assign currAddress £temporary41
	mov [rbp + 72], eax

 malloc$29:
	; 43 Dereference £temporary42 currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$30:
	; 44 Add £temporary43 currAddress £temporary42.size
	mov eax, [rbp + 72]
	add eax, [rsi]

 malloc$31:
	; 45 Add £temporary44 £temporary43 integral4$12#
	add eax, 12

 malloc$32:
	; 46 Subtract currGap lastAddress £temporary44
	mov ebx, [rbp + 36]
	sub ebx, eax
	mov [rbp + 76], ebx

 malloc$33:
	; 48 GreaterThan 39 newBlockSize currGap
	mov eax, [rbp + 76]
	cmp [rbp + 28], eax
	ja malloc$39

 malloc$34:
	; 50 Equal 36 minGap integral4$0#
	cmp dword [rbp + 32], 0
	je malloc$36

 malloc$35:
	; 52 GreaterThanEqual 39 currGap minGap
	mov eax, [rbp + 32]
	cmp [rbp + 76], eax
	jae malloc$39

 malloc$36:
	; 55 Assign minGap currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

 malloc$37:
	; 56 Assign minBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

 malloc$38:
	; 57 Assign minPrevBlockPtr prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

 malloc$39:
	; 61 Assign lastAddress currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

 malloc$40:
	; 62 Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

 malloc$41:
	; 63 Dereference £temporary53 currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$42:
	; 64 Assign currBlockPtr £temporary53.next
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

 malloc$43:
	; 66 Jump 26
	jmp malloc$26

 malloc$44:
	; 67 Equal 64 minBlockPtr integral8$0#
	cmp qword [rbp + 40], 0
	je malloc$64

 malloc$45:
	; 70 IntegralToIntegral £temporary55 minBlockPtr
	mov rax, [rbp + 40]

 malloc$46:
	; 71 Dereference £temporary56 minBlockPtr 0
	mov rsi, [rbp + 40]

 malloc$47:
	; 72 Add £temporary57 £temporary55 £temporary56.size
	add eax, [rsi]

 malloc$48:
	; 73 Add newAddress £temporary57 integral4$12#
	add eax, 12
	mov [rbp + 72], eax

 malloc$49:
	; 75 IntegralToIntegral £temporary59 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$50:
	; 76 Assign newBlockPtr £temporary59
	mov [rbp + 76], rax

 malloc$51:
	; 77 Dereference £temporary60 newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$52:
	; 78 Assign £temporary60.size memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$53:
	; 79 Dereference £temporary61 newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$54:
	; 80 Assign £temporary61.next minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

 malloc$55:
	; 81 Equal 59 minPrevBlockPtr integral8$0#
	cmp qword [rbp + 48], 0
	je malloc$59

 malloc$56:
	; 84 Dereference £temporary63 minPrevBlockPtr 0
	mov rsi, [rbp + 48]

 malloc$57:
	; 85 Assign £temporary63.next newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

 malloc$58:
	; 86 Jump 60
	jmp malloc$60

 malloc$59:
	; 88 Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

 malloc$60:
	; 90 Add £temporary66 newAddress integral4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$61:
	; 91 IntegralToIntegral £temporary67 £temporary66
	mov rax, 4294967295
	and rbx, rax

 malloc$62:
	; 92 SetReturnValue

 malloc$63:
	; 93 Return £temporary67
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$64:
	; 96 Subtract newAddress lastAddress newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]
	mov [rbp + 72], eax

 malloc$65:
	; 98 InspectRegister £temporary69 rbp

 malloc$66:
	; 99 IntegralToIntegral £temporary70 £temporary69

 malloc$67:
	; 100 Assign stackTop £temporary70
	mov [rbp + 76], ebp

 malloc$68:
	; 101 GreaterThan 84 stackTop newAddress
	mov eax, [rbp + 72]
	cmp [rbp + 76], eax
	ja malloc$84

 malloc$69:
	; 104 IntegralToIntegral £temporary72 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$70:
	; 105 Assign newBlockPtr £temporary72
	mov [rbp + 80], rax

 malloc$71:
	; 106 Dereference £temporary73 newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$72:
	; 107 Assign £temporary73.size memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$73:
	; 108 Dereference £temporary74 newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$74:
	; 109 Assign £temporary74.next integral8$0#
	mov qword [rsi + 4], 0

 malloc$75:
	; 110 Equal 79 prevBlockPtr integral8$0#
	cmp qword [rbp + 56], 0
	je malloc$79

 malloc$76:
	; 113 Dereference £temporary76 prevBlockPtr 0
	mov rsi, [rbp + 56]

 malloc$77:
	; 114 Assign £temporary76.next newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

 malloc$78:
	; 115 Jump 80
	jmp malloc$80

 malloc$79:
	; 117 Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

 malloc$80:
	; 119 Add £temporary79 newAddress integral4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$81:
	; 120 IntegralToIntegral £temporary80 £temporary79
	mov rax, 4294967295
	and rbx, rax

 malloc$82:
	; 121 SetReturnValue

 malloc$83:
	; 122 Return £temporary80
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$84:
	; 127 SetReturnValue

 malloc$85:
	; 128 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$86:
	; 130 FunctionEnd malloc

section .text

 calloc:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$1:
	; 1 Multiply £temporary85 number size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

 calloc$2:
	; 2 Parameter 56 signed int £temporary85
	mov [rbp + 56], eax

 calloc$3:
	; 3 Call 32 malloc 0
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 calloc$4:
	; 4 PostCall 32

 calloc$5:
	; 5 GetReturnValue £temporary86

 calloc$6:
	; 6 Assign pointer £temporary86
	mov [rbp + 32], rbx

 calloc$7:
	; 7 Equal 14 pointer integral8$0#
	cmp qword [rbp + 32], 0
	je calloc$14

 calloc$8:
	; 10 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$9:
	; 11 Parameter 64 pointer pointer
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 calloc$10:
	; 12 Parameter 72 signed int integral4$0#
	mov dword [rbp + 72], 0

 calloc$11:
	; 13 Parameter 76 signed int size
	mov eax, [rbp + 28]
	mov [rbp + 76], eax

 calloc$12:
	; 14 Call 40 memset 0
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp memset

 calloc$13:
	; 15 PostCall 40

 calloc$14:
	; 19 SetReturnValue

 calloc$15:
	; 20 Return pointer
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 calloc$16:
	; 22 FunctionEnd calloc

section .text

 free:
	; 0 IntegralToIntegral £temporary91 freeMemoryPtr
	mov rax, [rbp + 24]

 free$1:
	; 1 Subtract £temporary92 £temporary91 integral4$12#
	sub eax, 12

 free$2:
	; 2 IntegralToIntegral £temporary93 £temporary92
	mov rbx, 4294967295
	and rax, rbx

 free$3:
	; 3 Assign freeBlockPtr £temporary93
	mov [rbp + 32], rax

 free$4:
	; 4 Assign prevBlockPtr integral8$0#
	mov qword [rbp + 40], 0

 free$5:
	; 5 Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

 free$6:
	; 6 NotEqual 8 freeMemoryPtr integral8$0#
	cmp qword [rbp + 24], 0
	jne free$8

 free$7:
	; 9 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$8:
	; 14 Equal 32 currBlockPtr integral8$0#
	cmp qword [rbp + 48], 0
	je free$32

 free$9:
	; 16 NotEqual 28 currBlockPtr freeBlockPtr
	mov rax, [rbp + 32]
	cmp [rbp + 48], rax
	jne free$28

 free$10:
	; 19 NotEqual 15 prevBlockPtr integral8$0#
	cmp qword [rbp + 40], 0
	jne free$15

 free$11:
	; 21 Dereference £temporary100 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$12:
	; 22 NotEqual 15 £temporary100.next integral8$0#
	cmp qword [rsi + 4], 0
	jne free$15

 free$13:
	; 25 Assign g_firstBlockPtr integral8$0#
	mov qword [g_firstBlockPtr], 0

 free$14:
	; 26 Jump 27
	jmp free$27

 free$15:
	; 28 NotEqual 19 prevBlockPtr integral8$0#
	cmp qword [rbp + 40], 0
	jne free$19

 free$16:
	; 31 Dereference £temporary104 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$17:
	; 32 Assign g_firstBlockPtr £temporary104.next
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

 free$18:
	; 33 Jump 27
	jmp free$27

 free$19:
	; 35 Dereference £temporary105 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$20:
	; 36 NotEqual 24 £temporary105.next integral8$0#
	cmp qword [rsi + 4], 0
	jne free$24

 free$21:
	; 39 Dereference £temporary107 prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$22:
	; 40 Assign £temporary107.next integral8$0#
	mov qword [rsi + 4], 0

 free$23:
	; 41 Jump 27
	jmp free$27

 free$24:
	; 43 Dereference £temporary108 prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$25:
	; 44 Dereference £temporary109 currBlockPtr 0
	mov rdi, [rbp + 48]

 free$26:
	; 45 Assign £temporary108.next £temporary109.next
	mov rax, [rdi + 4]
	mov [rsi + 4], rax

 free$27:
	; 49 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$28:
	; 53 Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 48]
	mov [rbp + 40], rax

 free$29:
	; 54 Dereference £temporary118 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$30:
	; 55 Assign currBlockPtr £temporary118.next
	mov rax, [rsi + 4]
	mov [rbp + 48], rax

 free$31:
	; 57 Jump 8
	jmp free$8

 free$32:
	; 59 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$33:
	; 60 FunctionEnd free

section .data

@715string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@716string_newMemorySize203E3D200#:
	; Initializer String newMemorySize >= 0
	db "newMemorySize >= 0", 0

section .data

@717string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .data

@722string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@723string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; Initializer String ( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

section .data

@724string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 realloc:
	; 0 GreaterThanEqual 12 newMemorySize integral4$0#
	cmp dword [rbp + 32], 0
	jge realloc$12

 realloc$1:
	; 3 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$2:
	; 4 Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$3:
	; 5 Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], @715string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$4:
	; 6 Parameter 76 string string_newMemorySize203E3D200#
	mov qword [rbp + 76], @716string_newMemorySize203E3D200#

 realloc$5:
	; 7 Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 84], @717string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$6:
	; 8 Parameter 92 signed int integral4$259#
	mov dword [rbp + 92], 259

 realloc$7:
	; 9 Call 36 fprintf 20
	mov qword [rbp + 36], realloc$8
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$8:
	; 10 PostCall 36

 realloc$9:
	; 11 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$10:
	; 12 Call 36 abort 0
	mov qword [rbp + 36], realloc$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$11:
	; 13 PostCall 36

 realloc$12:
	; 18 NotEqual 25 oldMemoryPtr integral8$0#
	cmp qword [rbp + 24], 0
	jne realloc$25

 realloc$13:
	; 20 GreaterThan 25 newMemorySize integral4$0#
	cmp dword [rbp + 32], 0
	jg realloc$25

 realloc$14:
	; 23 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$15:
	; 24 Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$16:
	; 25 Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], @722string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$17:
	; 26 Parameter 76 string string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#
	mov qword [rbp + 76], @723string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#

 realloc$18:
	; 27 Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 84], @724string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$19:
	; 28 Parameter 92 signed int integral4$260#
	mov dword [rbp + 92], 260

 realloc$20:
	; 29 Call 36 fprintf 20
	mov qword [rbp + 36], realloc$21
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$21:
	; 30 PostCall 36

 realloc$22:
	; 31 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$23:
	; 32 Call 36 abort 0
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$24:
	; 33 PostCall 36

 realloc$25:
	; 38 NotEqual 33 oldMemoryPtr integral8$0#
	cmp qword [rbp + 24], 0
	jne realloc$33

 realloc$26:
	; 41 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$27:
	; 42 Parameter 60 signed int newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 60], eax

 realloc$28:
	; 43 Call 36 malloc 0
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

 realloc$29:
	; 44 PostCall 36

 realloc$30:
	; 45 GetReturnValue £temporary134

 realloc$31:
	; 46 SetReturnValue

 realloc$32:
	; 47 Return £temporary134
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$33:
	; 51 NotEqual 40 newMemorySize integral4$0#
	cmp dword [rbp + 32], 0
	jne realloc$40

 realloc$34:
	; 54 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$35:
	; 55 Parameter 60 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 realloc$36:
	; 56 Call 36 free 0
	mov qword [rbp + 36], realloc$37
	mov [rbp + 44], rbp
	add rbp, 36
	jmp free

 realloc$37:
	; 57 PostCall 36

 realloc$38:
	; 58 SetReturnValue

 realloc$39:
	; 59 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$40:
	; 63 IntegralToIntegral £temporary141 newMemorySize
	mov eax, [rbp + 32]

 realloc$41:
	; 64 Add newBlockSize £temporary141 integral4$12#
	add eax, 12
	mov [rbp + 36], eax

 realloc$42:
	; 66 IntegralToIntegral £temporary143 oldMemoryPtr
	mov rax, [rbp + 24]

 realloc$43:
	; 67 Subtract £temporary144 £temporary143 integral4$12#
	sub eax, 12

 realloc$44:
	; 68 IntegralToIntegral £temporary145 £temporary144
	mov rbx, 4294967295
	and rax, rbx

 realloc$45:
	; 69 Assign oldBlockPtr £temporary145
	mov [rbp + 40], rax

 realloc$46:
	; 70 Dereference £temporary146 oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$47:
	; 71 GreaterThan 52 newBlockSize £temporary146.size
	mov eax, [rsi]
	cmp [rbp + 36], eax
	ja realloc$52

 realloc$48:
	; 74 Dereference £temporary148 oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$49:
	; 75 Assign £temporary148.size newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$50:
	; 76 SetReturnValue

 realloc$51:
	; 77 Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$52:
	; 81 StackTop £temporary151
	mov rax, $StackTop

 realloc$53:
	; 82 Add £temporary152 £temporary151 integral8$1048572#
	add rax, 1048572

 realloc$54:
	; 83 IntegralToIntegral £temporary153 £temporary152

 realloc$55:
	; 84 Assign lastAddress £temporary153
	mov [rbp + 48], eax

 realloc$56:
	; 85 Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

 realloc$57:
	; 87 Equal 71 currBlockPtr integral8$0#
	cmp qword [rbp + 52], 0
	je realloc$71

 realloc$58:
	; 89 NotEqual 66 currBlockPtr oldBlockPtr
	mov rax, [rbp + 40]
	cmp [rbp + 52], rax
	jne realloc$66

 realloc$59:
	; 92 IntegralToIntegral £temporary156 currBlockPtr
	mov rax, [rbp + 52]

 realloc$60:
	; 93 Subtract availableSize lastAddress £temporary156
	mov ebx, [rbp + 48]
	sub ebx, eax
	mov [rbp + 60], ebx

 realloc$61:
	; 95 LessThan 71 availableSize newBlockSize
	mov eax, [rbp + 36]
	cmp [rbp + 60], eax
	jb realloc$71

 realloc$62:
	; 98 Dereference £temporary159 oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$63:
	; 99 Assign £temporary159.size newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$64:
	; 100 SetReturnValue

 realloc$65:
	; 101 Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$66:
	; 109 IntegralToIntegral £temporary164 currBlockPtr
	mov rax, [rbp + 52]

 realloc$67:
	; 110 Assign lastAddress £temporary164
	mov [rbp + 48], eax

 realloc$68:
	; 111 Dereference £temporary165 currBlockPtr 0
	mov rsi, [rbp + 52]

 realloc$69:
	; 112 Assign currBlockPtr £temporary165.next
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

 realloc$70:
	; 114 Jump 57
	jmp realloc$57

 realloc$71:
	; 115 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$72:
	; 116 Parameter 72 signed int newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 realloc$73:
	; 117 Call 48 malloc 0
	mov qword [rbp + 48], realloc$74
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

 realloc$74:
	; 118 PostCall 48

 realloc$75:
	; 119 GetReturnValue £temporary166

 realloc$76:
	; 120 Assign newMemoryPtr £temporary166
	mov [rbp + 48], rbx

 realloc$77:
	; 121 Equal 90 newMemoryPtr integral8$0#
	cmp qword [rbp + 48], 0
	je realloc$90

 realloc$78:
	; 124 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$79:
	; 125 Parameter 80 pointer newMemoryPtr
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 realloc$80:
	; 126 Parameter 88 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 realloc$81:
	; 127 Parameter 96 signed int newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 96], eax

 realloc$82:
	; 128 Call 56 memcpy 0
	mov qword [rbp + 56], realloc$83
	mov [rbp + 64], rbp
	add rbp, 56
	jmp memcpy

 realloc$83:
	; 129 PostCall 56

 realloc$84:
	; 130 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$85:
	; 131 Parameter 80 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 realloc$86:
	; 132 Call 56 free 0
	mov qword [rbp + 56], realloc$87
	mov [rbp + 64], rbp
	add rbp, 56
	jmp free

 realloc$87:
	; 133 PostCall 56

 realloc$88:
	; 134 SetReturnValue

 realloc$89:
	; 135 Return newMemoryPtr
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$90:
	; 139 SetReturnValue

 realloc$91:
	; 140 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$92:
	; 142 FunctionEnd realloc

section .data

@771string_Heap3A0A#:
	; Initializer String Heap:\n
	db "Heap:", 10, 0

section .data

@774string_2020Address2025u2C20Size2025u0A#:
	; Initializer String   Address %u, Size %u\n
	db "  Address %u, Size %u", 10, 0

section .data

@777string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 print_heap:
	; 0 Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 24], rax

 print_heap$1:
	; 1 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$2:
	; 2 Parameter 56 string string_Heap3A0A#
	mov qword [rbp + 56], @771string_Heap3A0A#

 print_heap$3:
	; 3 Call 32 printf 0
	mov qword [rbp + 32], print_heap$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$4:
	; 4 PostCall 32

 print_heap$5:
	; 6 Equal 17 currBlockPtr integral8$0#
	cmp qword [rbp + 24], 0
	je print_heap$17

 print_heap$6:
	; 8 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$7:
	; 9 Parameter 56 string string_2020Address2025u2C20Size2025u0A#
	mov qword [rbp + 56], @774string_2020Address2025u2C20Size2025u0A#

 print_heap$8:
	; 10 IntegralToIntegral £temporary174 currBlockPtr
	mov rax, [rbp + 24]

 print_heap$9:
	; 11 Parameter 64 unsigned int £temporary174
	mov [rbp + 64], eax

 print_heap$10:
	; 12 Dereference £temporary175 currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$11:
	; 13 Parameter 68 unsigned int £temporary175.size
	mov eax, [rsi]
	mov [rbp + 68], eax

 print_heap$12:
	; 14 Call 32 printf 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_heap$13:
	; 15 PostCall 32

 print_heap$14:
	; 16 Dereference £temporary177 currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$15:
	; 17 Assign currBlockPtr £temporary177.next
	mov rax, [rsi + 4]
	mov [rbp + 24], rax

 print_heap$16:
	; 19 Jump 5
	jmp print_heap$5

 print_heap$17:
	; 20 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$18:
	; 21 Parameter 56 string string_0A#
	mov qword [rbp + 56], @777string_0A#

 print_heap$19:
	; 22 Call 32 printf 0
	mov qword [rbp + 32], print_heap$20
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$20:
	; 23 PostCall 32

 print_heap$21:
	; 25 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_heap$22:
	; 26 FunctionEnd print_heap
