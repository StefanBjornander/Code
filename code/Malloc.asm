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

@468string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@469string_memorySize203E3D200#:
	; Initializer String memorySize >= 0
	db "memorySize >= 0", 0

section .data

@470string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 malloc:
	; IntegralToIntegral £temporary12 memorySize
	mov eax, [rbp + 24]

 malloc$1:
	; Add newBlockSize £temporary12 integral4$12#
	add eax, 12
	mov [rbp + 28], eax

 malloc$2:
	; Assign minGap integral4$0#
	mov dword [rbp + 32], 0

 malloc$3:
	; StackTop £temporary14
	mov rax, $StackTop

 malloc$4:
	; Add £temporary15 £temporary14 integral8$1048572#
	add rax, 1048572

 malloc$5:
	; IntegralToIntegral £temporary16 £temporary15

 malloc$6:
	; Assign lastAddress £temporary16
	mov [rbp + 36], eax

 malloc$7:
	; Assign minBlockPtr integral8$0#
	mov qword [rbp + 40], 0

 malloc$8:
	; Assign minPrevBlockPtr integral8$0#
	mov qword [rbp + 48], 0

 malloc$9:
	; Assign prevBlockPtr integral8$0#
	mov qword [rbp + 56], 0

 malloc$10:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 64], rax

 malloc$11:
	; GreaterThanEqual 23 memorySize integral4$0#
	cmp dword [rbp + 24], 0
	jge malloc$23

 malloc$12:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$13:
	; Parameter 96 pointer stderr
	mov rax, [stderr]
	mov [rbp + 96], rax

 malloc$14:
	; Parameter 104 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 104], @468string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 malloc$15:
	; Parameter 112 string string_memorySize203E3D200#
	mov qword [rbp + 112], @469string_memorySize203E3D200#

 malloc$16:
	; Parameter 120 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 120], @470string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 malloc$17:
	; Parameter 128 signed int integral4$41#
	mov dword [rbp + 128], 41

 malloc$18:
	; Call 72 fprintf 20
	mov qword [rbp + 72], malloc$19
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 malloc$19:
	; PostCall 72

 malloc$20:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc$21:
	; Call 72 abort 0
	mov qword [rbp + 72], malloc$22
	mov [rbp + 80], rbp
	add rbp, 72
	jmp abort

 malloc$22:
	; PostCall 72

 malloc$23:
	; NotEqual 25 memorySize integral4$0#
	cmp dword [rbp + 24], 0
	jne malloc$25

 malloc$24:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$25:
	; Equal 43 currBlockPtr integral8$0#
	cmp qword [rbp + 64], 0
	je malloc$43

 malloc$26:
	; IntegralToIntegral £temporary27 currBlockPtr
	mov rax, [rbp + 64]

 malloc$27:
	; Assign currAddress £temporary27
	mov [rbp + 72], eax

 malloc$28:
	; Dereference £temporary28 currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$29:
	; Add £temporary29 currAddress £temporary28.size
	mov eax, [rbp + 72]
	add eax, [rsi]

 malloc$30:
	; Add £temporary30 £temporary29 integral4$12#
	add eax, 12

 malloc$31:
	; Subtract currGap lastAddress £temporary30
	mov ebx, [rbp + 36]
	sub ebx, eax
	mov [rbp + 76], ebx

 malloc$32:
	; GreaterThan 38 newBlockSize currGap
	mov eax, [rbp + 76]
	cmp [rbp + 28], eax
	ja malloc$38

 malloc$33:
	; Equal 35 minGap integral4$0#
	cmp dword [rbp + 32], 0
	je malloc$35

 malloc$34:
	; GreaterThanEqual 38 currGap minGap
	mov eax, [rbp + 32]
	cmp [rbp + 76], eax
	jae malloc$38

 malloc$35:
	; Assign minGap currGap
	mov eax, [rbp + 76]
	mov [rbp + 32], eax

 malloc$36:
	; Assign minBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 40], rax

 malloc$37:
	; Assign minPrevBlockPtr prevBlockPtr
	mov rax, [rbp + 56]
	mov [rbp + 48], rax

 malloc$38:
	; Assign lastAddress currAddress
	mov eax, [rbp + 72]
	mov [rbp + 36], eax

 malloc$39:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 64]
	mov [rbp + 56], rax

 malloc$40:
	; Dereference £temporary39 currBlockPtr 0
	mov rsi, [rbp + 64]

 malloc$41:
	; Assign currBlockPtr £temporary39.next
	mov rax, [rsi + 4]
	mov [rbp + 64], rax

 malloc$42:
	; Jump 25
	jmp malloc$25

 malloc$43:
	; Equal 62 minBlockPtr integral8$0#
	cmp qword [rbp + 40], 0
	je malloc$62

 malloc$44:
	; IntegralToIntegral £temporary41 minBlockPtr
	mov rax, [rbp + 40]

 malloc$45:
	; Dereference £temporary42 minBlockPtr 0
	mov rsi, [rbp + 40]

 malloc$46:
	; Add £temporary43 £temporary41 £temporary42.size
	add eax, [rsi]

 malloc$47:
	; Add newAddress £temporary43 integral4$12#
	add eax, 12
	mov [rbp + 72], eax

 malloc$48:
	; IntegralToIntegral £temporary45 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$49:
	; Assign newBlockPtr £temporary45
	mov [rbp + 76], rax

 malloc$50:
	; Dereference £temporary46 newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$51:
	; Assign £temporary46.size memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$52:
	; Dereference £temporary47 newBlockPtr 0
	mov rsi, [rbp + 76]

 malloc$53:
	; Assign £temporary47.next minBlockPtr
	mov rax, [rbp + 40]
	mov [rsi + 4], rax

 malloc$54:
	; Equal 58 minPrevBlockPtr integral8$0#
	cmp qword [rbp + 48], 0
	je malloc$58

 malloc$55:
	; Dereference £temporary49 minPrevBlockPtr 0
	mov rsi, [rbp + 48]

 malloc$56:
	; Assign £temporary49.next newBlockPtr
	mov rax, [rbp + 76]
	mov [rsi + 4], rax

 malloc$57:
	; Jump 59
	jmp malloc$59

 malloc$58:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 76]
	mov [g_firstBlockPtr], rax

 malloc$59:
	; Add £temporary52 newAddress integral4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$60:
	; IntegralToIntegral £temporary53 £temporary52
	mov rax, 4294967295
	and rbx, rax

 malloc$61:
	; Return £temporary53
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$62:
	; Subtract newAddress lastAddress newBlockSize
	mov eax, [rbp + 36]
	sub eax, [rbp + 28]
	mov [rbp + 72], eax

 malloc$63:
	; InspectRegister £temporary55 rbp

 malloc$64:
	; IntegralToIntegral £temporary56 £temporary55

 malloc$65:
	; Assign stackTop £temporary56
	mov [rbp + 76], ebp

 malloc$66:
	; GreaterThan 81 stackTop newAddress
	mov eax, [rbp + 72]
	cmp [rbp + 76], eax
	ja malloc$81

 malloc$67:
	; IntegralToIntegral £temporary58 newAddress
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 malloc$68:
	; Assign newBlockPtr £temporary58
	mov [rbp + 80], rax

 malloc$69:
	; Dereference £temporary59 newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$70:
	; Assign £temporary59.size memorySize
	mov eax, [rbp + 24]
	mov [rsi], eax

 malloc$71:
	; Dereference £temporary60 newBlockPtr 0
	mov rsi, [rbp + 80]

 malloc$72:
	; Assign £temporary60.next integral8$0#
	mov qword [rsi + 4], 0

 malloc$73:
	; Equal 77 prevBlockPtr integral8$0#
	cmp qword [rbp + 56], 0
	je malloc$77

 malloc$74:
	; Dereference £temporary62 prevBlockPtr 0
	mov rsi, [rbp + 56]

 malloc$75:
	; Assign £temporary62.next newBlockPtr
	mov rax, [rbp + 80]
	mov [rsi + 4], rax

 malloc$76:
	; Jump 78
	jmp malloc$78

 malloc$77:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [rbp + 80]
	mov [g_firstBlockPtr], rax

 malloc$78:
	; Add £temporary65 newAddress integral4$12#
	mov ebx, [rbp + 72]
	add ebx, 12

 malloc$79:
	; IntegralToIntegral £temporary66 £temporary65
	mov rax, 4294967295
	and rbx, rax

 malloc$80:
	; Return £temporary66
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$81:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc$82:
	; FunctionEnd malloc

section .text

 calloc:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$1:
	; Multiply £temporary71 number size
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [rbp + 28]

 calloc$2:
	; Parameter 56 signed int £temporary71
	mov [rbp + 56], eax

 calloc$3:
	; Call 32 malloc 0
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 calloc$4:
	; PostCall 32

 calloc$5:
	; GetReturnValue £temporary72

 calloc$6:
	; Assign pointer £temporary72
	mov [rbp + 32], rbx

 calloc$7:
	; Equal 14 pointer integral8$0#
	cmp qword [rbp + 32], 0
	je calloc$14

 calloc$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 calloc$9:
	; Parameter 64 pointer pointer
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 calloc$10:
	; Parameter 72 signed int integral4$0#
	mov dword [rbp + 72], 0

 calloc$11:
	; Parameter 76 signed int size
	mov eax, [rbp + 28]
	mov [rbp + 76], eax

 calloc$12:
	; Call 40 memset 0
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp memset

 calloc$13:
	; PostCall 40

 calloc$14:
	; Return pointer
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 calloc$15:
	; FunctionEnd calloc

section .text

 free:
	; IntegralToIntegral £temporary77 freeMemoryPtr
	mov rax, [rbp + 24]

 free$1:
	; Subtract £temporary78 £temporary77 integral4$12#
	sub eax, 12

 free$2:
	; IntegralToIntegral £temporary79 £temporary78
	mov rbx, 4294967295
	and rax, rbx

 free$3:
	; Assign freeBlockPtr £temporary79
	mov [rbp + 32], rax

 free$4:
	; Assign prevBlockPtr integral8$0#
	mov qword [rbp + 40], 0

 free$5:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 48], rax

 free$6:
	; NotEqual 8 freeMemoryPtr integral8$0#
	cmp qword [rbp + 24], 0
	jne free$8

 free$7:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$8:
	; Equal 32 currBlockPtr integral8$0#
	cmp qword [rbp + 48], 0
	je free$32

 free$9:
	; NotEqual 28 currBlockPtr freeBlockPtr
	mov rax, [rbp + 32]
	cmp [rbp + 48], rax
	jne free$28

 free$10:
	; NotEqual 15 prevBlockPtr integral8$0#
	cmp qword [rbp + 40], 0
	jne free$15

 free$11:
	; Dereference £temporary86 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$12:
	; NotEqual 15 £temporary86.next integral8$0#
	cmp qword [rsi + 4], 0
	jne free$15

 free$13:
	; Assign g_firstBlockPtr integral8$0#
	mov qword [g_firstBlockPtr], 0

 free$14:
	; Jump 27
	jmp free$27

 free$15:
	; NotEqual 19 prevBlockPtr integral8$0#
	cmp qword [rbp + 40], 0
	jne free$19

 free$16:
	; Dereference £temporary90 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$17:
	; Assign g_firstBlockPtr £temporary90.next
	mov rax, [rsi + 4]
	mov [g_firstBlockPtr], rax

 free$18:
	; Jump 27
	jmp free$27

 free$19:
	; Dereference £temporary91 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$20:
	; NotEqual 24 £temporary91.next integral8$0#
	cmp qword [rsi + 4], 0
	jne free$24

 free$21:
	; Dereference £temporary93 prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$22:
	; Assign £temporary93.next integral8$0#
	mov qword [rsi + 4], 0

 free$23:
	; Jump 27
	jmp free$27

 free$24:
	; Dereference £temporary94 prevBlockPtr 0
	mov rsi, [rbp + 40]

 free$25:
	; Dereference £temporary95 currBlockPtr 0
	mov rdi, [rbp + 48]

 free$26:
	; Assign £temporary94.next £temporary95.next
	mov rax, [rdi + 4]
	mov [rsi + 4], rax

 free$27:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$28:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [rbp + 48]
	mov [rbp + 40], rax

 free$29:
	; Dereference £temporary104 currBlockPtr 0
	mov rsi, [rbp + 48]

 free$30:
	; Assign currBlockPtr £temporary104.next
	mov rax, [rsi + 4]
	mov [rbp + 48], rax

 free$31:
	; Jump 8
	jmp free$8

 free$32:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 free$33:
	; FunctionEnd free

section .data

@561string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@562string_newMemorySize203E3D200#:
	; Initializer String newMemorySize >= 0
	db "newMemorySize >= 0", 0

section .data

@563string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .data

@568string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@569string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; Initializer String ( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

section .data

@570string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 realloc:
	; GreaterThanEqual 12 newMemorySize integral4$0#
	cmp dword [rbp + 32], 0
	jge realloc$12

 realloc$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$2:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$3:
	; Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], @561string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$4:
	; Parameter 76 string string_newMemorySize203E3D200#
	mov qword [rbp + 76], @562string_newMemorySize203E3D200#

 realloc$5:
	; Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 84], @563string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$6:
	; Parameter 92 signed int integral4$259#
	mov dword [rbp + 92], 259

 realloc$7:
	; Call 36 fprintf 20
	mov qword [rbp + 36], realloc$8
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$8:
	; PostCall 36

 realloc$9:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$10:
	; Call 36 abort 0
	mov qword [rbp + 36], realloc$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$11:
	; PostCall 36

 realloc$12:
	; NotEqual 25 oldMemoryPtr integral8$0#
	cmp qword [rbp + 24], 0
	jne realloc$25

 realloc$13:
	; GreaterThan 25 newMemorySize integral4$0#
	cmp dword [rbp + 32], 0
	jg realloc$25

 realloc$14:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$15:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 realloc$16:
	; Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], @568string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 realloc$17:
	; Parameter 76 string string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#
	mov qword [rbp + 76], @569string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#

 realloc$18:
	; Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 84], @570string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#

 realloc$19:
	; Parameter 92 signed int integral4$260#
	mov dword [rbp + 92], 260

 realloc$20:
	; Call 36 fprintf 20
	mov qword [rbp + 36], realloc$21
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$21:
	; PostCall 36

 realloc$22:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$23:
	; Call 36 abort 0
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 realloc$24:
	; PostCall 36

 realloc$25:
	; NotEqual 32 oldMemoryPtr integral8$0#
	cmp qword [rbp + 24], 0
	jne realloc$32

 realloc$26:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$27:
	; Parameter 60 signed int newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 60], eax

 realloc$28:
	; Call 36 malloc 0
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], rbp
	add rbp, 36
	jmp malloc

 realloc$29:
	; PostCall 36

 realloc$30:
	; GetReturnValue £temporary120

 realloc$31:
	; Return £temporary120
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$32:
	; NotEqual 38 newMemorySize integral4$0#
	cmp dword [rbp + 32], 0
	jne realloc$38

 realloc$33:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$34:
	; Parameter 60 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 realloc$35:
	; Call 36 free 0
	mov qword [rbp + 36], realloc$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp free

 realloc$36:
	; PostCall 36

 realloc$37:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$38:
	; IntegralToIntegral £temporary127 newMemorySize
	mov eax, [rbp + 32]

 realloc$39:
	; Add newBlockSize £temporary127 integral4$12#
	add eax, 12
	mov [rbp + 36], eax

 realloc$40:
	; IntegralToIntegral £temporary129 oldMemoryPtr
	mov rax, [rbp + 24]

 realloc$41:
	; Subtract £temporary130 £temporary129 integral4$12#
	sub eax, 12

 realloc$42:
	; IntegralToIntegral £temporary131 £temporary130
	mov rbx, 4294967295
	and rax, rbx

 realloc$43:
	; Assign oldBlockPtr £temporary131
	mov [rbp + 40], rax

 realloc$44:
	; Dereference £temporary132 oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$45:
	; GreaterThan 49 newBlockSize £temporary132.size
	mov eax, [rsi]
	cmp [rbp + 36], eax
	ja realloc$49

 realloc$46:
	; Dereference £temporary134 oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$47:
	; Assign £temporary134.size newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$48:
	; Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$49:
	; StackTop £temporary137
	mov rax, $StackTop

 realloc$50:
	; Add £temporary138 £temporary137 integral8$1048572#
	add rax, 1048572

 realloc$51:
	; IntegralToIntegral £temporary139 £temporary138

 realloc$52:
	; Assign lastAddress £temporary139
	mov [rbp + 48], eax

 realloc$53:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 52], rax

 realloc$54:
	; Equal 67 currBlockPtr integral8$0#
	cmp qword [rbp + 52], 0
	je realloc$67

 realloc$55:
	; NotEqual 62 currBlockPtr oldBlockPtr
	mov rax, [rbp + 40]
	cmp [rbp + 52], rax
	jne realloc$62

 realloc$56:
	; IntegralToIntegral £temporary142 currBlockPtr
	mov rax, [rbp + 52]

 realloc$57:
	; Subtract availableSize lastAddress £temporary142
	mov ebx, [rbp + 48]
	sub ebx, eax
	mov [rbp + 60], ebx

 realloc$58:
	; LessThan 67 availableSize newBlockSize
	mov eax, [rbp + 36]
	cmp [rbp + 60], eax
	jb realloc$67

 realloc$59:
	; Dereference £temporary145 oldBlockPtr 0
	mov rsi, [rbp + 40]

 realloc$60:
	; Assign £temporary145.size newBlockSize
	mov eax, [rbp + 36]
	mov [rsi], eax

 realloc$61:
	; Return oldMemoryPtr
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$62:
	; IntegralToIntegral £temporary150 currBlockPtr
	mov rax, [rbp + 52]

 realloc$63:
	; Assign lastAddress £temporary150
	mov [rbp + 48], eax

 realloc$64:
	; Dereference £temporary151 currBlockPtr 0
	mov rsi, [rbp + 52]

 realloc$65:
	; Assign currBlockPtr £temporary151.next
	mov rax, [rsi + 4]
	mov [rbp + 52], rax

 realloc$66:
	; Jump 54
	jmp realloc$54

 realloc$67:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$68:
	; Parameter 72 signed int newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 realloc$69:
	; Call 48 malloc 0
	mov qword [rbp + 48], realloc$70
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

 realloc$70:
	; PostCall 48

 realloc$71:
	; GetReturnValue £temporary152

 realloc$72:
	; Assign newMemoryPtr £temporary152
	mov [rbp + 48], rbx

 realloc$73:
	; Equal 85 newMemoryPtr integral8$0#
	cmp qword [rbp + 48], 0
	je realloc$85

 realloc$74:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$75:
	; Parameter 80 pointer newMemoryPtr
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 realloc$76:
	; Parameter 88 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 realloc$77:
	; Parameter 96 signed int newMemorySize
	mov eax, [rbp + 32]
	mov [rbp + 96], eax

 realloc$78:
	; Call 56 memcpy 0
	mov qword [rbp + 56], realloc$79
	mov [rbp + 64], rbp
	add rbp, 56
	jmp memcpy

 realloc$79:
	; PostCall 56

 realloc$80:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 realloc$81:
	; Parameter 80 pointer oldMemoryPtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 realloc$82:
	; Call 56 free 0
	mov qword [rbp + 56], realloc$83
	mov [rbp + 64], rbp
	add rbp, 56
	jmp free

 realloc$83:
	; PostCall 56

 realloc$84:
	; Return newMemoryPtr
	mov rbx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$85:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 realloc$86:
	; FunctionEnd realloc

section .data

@619string_Heap3A0A#:
	; Initializer String Heap:\n
	db "Heap:", 10, 0

section .data

@622string_2020Address2025u2C20Size2025u0A#:
	; Initializer String   Address %u, Size %u\n
	db "  Address %u, Size %u", 10, 0

section .data

@625string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 print_heap:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [g_firstBlockPtr]
	mov [rbp + 24], rax

 print_heap$1:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$2:
	; Parameter 56 string string_Heap3A0A#
	mov qword [rbp + 56], @619string_Heap3A0A#

 print_heap$3:
	; Call 32 printf 0
	mov qword [rbp + 32], print_heap$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$4:
	; PostCall 32

 print_heap$5:
	; Equal 17 currBlockPtr integral8$0#
	cmp qword [rbp + 24], 0
	je print_heap$17

 print_heap$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$7:
	; Parameter 56 string string_2020Address2025u2C20Size2025u0A#
	mov qword [rbp + 56], @622string_2020Address2025u2C20Size2025u0A#

 print_heap$8:
	; IntegralToIntegral £temporary160 currBlockPtr
	mov rax, [rbp + 24]

 print_heap$9:
	; Parameter 64 unsigned int £temporary160
	mov [rbp + 64], eax

 print_heap$10:
	; Dereference £temporary161 currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$11:
	; Parameter 68 unsigned int £temporary161.size
	mov eax, [rsi]
	mov [rbp + 68], eax

 print_heap$12:
	; Call 32 printf 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_heap$13:
	; PostCall 32

 print_heap$14:
	; Dereference £temporary163 currBlockPtr 0
	mov rsi, [rbp + 24]

 print_heap$15:
	; Assign currBlockPtr £temporary163.next
	mov rax, [rsi + 4]
	mov [rbp + 24], rax

 print_heap$16:
	; Jump 5
	jmp print_heap$5

 print_heap$17:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_heap$18:
	; Parameter 56 string string_0A#
	mov qword [rbp + 56], @625string_0A#

 print_heap$19:
	; Call 32 printf 0
	mov qword [rbp + 32], print_heap$20
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$20:
	; PostCall 32

 print_heap$21:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_heap$22:
	; FunctionEnd print_heap
