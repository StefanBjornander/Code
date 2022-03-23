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

@623string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@624string_memorySize203E3D200#:
	; Initializer String memorySize >= 0
	db "memorySize >= 0", 0

section .data

@625string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 malloc:
	; IntegralToIntegral £temporary25 memorySize
	mov eax, [{operand1}{WithSign(operand2)}]

 malloc$1:
	; Add newBlockSize £temporary25 integral4$12#
	add eax, 12
	mov [rbp + 28], {operand2}

 malloc$2:
	; Assign minGap integral4$0#
	mov dword [rbp + 32], {operand2}

 malloc$3:
	; StackTop £temporary27
	mov rax, $StackTop

 malloc$4:
	; Add £temporary28 £temporary27 integral8$1048572#
	add rax, 1048572

 malloc$5:
	; IntegralToIntegral £temporary29 £temporary28

 malloc$6:
	; Assign lastAddress £temporary29
	mov [rbp + 36], {operand2}

 malloc$7:
	; Assign minBlockPtr integral8$0#
	mov qword [rbp + 40], {operand2}

 malloc$8:
	; Assign minPrevBlockPtr integral8$0#
	mov qword [rbp + 48], {operand2}

 malloc$9:
	; Assign prevBlockPtr integral8$0#
	mov qword [rbp + 56], {operand2}

 malloc$10:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 malloc$11:
	; GreaterThanEqual 23 memorySize integral4$0#
	cmp dword [rbp + 24], {operand2}
	jge malloc$23

 malloc$12:
	; PreCall 72

 malloc$13:
	; Parameter 96 pointer stderr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 96], {operand2}

 malloc$14:
	; Parameter 104 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 104], {operand2}

 malloc$15:
	; Parameter 112 string string_memorySize203E3D200#
	mov qword [rbp + 112], {operand2}

 malloc$16:
	; Parameter 120 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 120], {operand2}

 malloc$17:
	; Parameter 128 signed int integral4$41#
	mov dword [rbp + 128], {operand2}

 malloc$18:
	; Call 72 fprintf 20
	mov qword [rbp + 72], malloc$19
	mov [rbp + 80], {operand2}
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 malloc$19:
	; PostCall 72

 malloc$20:
	; PreCall 72

 malloc$21:
	; Call 72 abort 0
	mov qword [rbp + 72], malloc$22
	mov [rbp + 80], {operand2}
	add rbp, 72
	jmp abort

 malloc$22:
	; PostCall 72

 malloc$23:
	; NotEqual 25 memorySize integral4$0#
	cmp dword [rbp + 24], {operand2}
	jne malloc$25

 malloc$24:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 malloc$25:
	; Equal 43 currBlockPtr integral8$0#
	cmp qword [rbp + 64], {operand2}
	je malloc$43

 malloc$26:
	; IntegralToIntegral £temporary40 currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 malloc$27:
	; Assign currAddress £temporary40
	mov [rbp + 72], {operand2}

 malloc$28:
	; Dereference £temporary41 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$29:
	; Add £temporary42 currAddress £temporary41.size
	mov eax, [{operand1}{WithSign(operand2)}]
	add eax, [{operand1}{WithSign(operand2)}]

 malloc$30:
	; Add £temporary43 £temporary42 integral4$12#
	add eax, 12

 malloc$31:
	; Subtract currGap lastAddress £temporary43
	mov ebx, [{operand1}{WithSign(operand2)}]
	sub ebx, eax
	mov [rbp + 76], {operand2}

 malloc$32:
	; GreaterThan 38 newBlockSize currGap
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 28], {operand2}
	ja malloc$38

 malloc$33:
	; Equal 35 minGap integral4$0#
	cmp dword [rbp + 32], {operand2}
	je malloc$35

 malloc$34:
	; GreaterThanEqual 38 currGap minGap
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 76], {operand2}
	jae malloc$38

 malloc$35:
	; Assign minGap currGap
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 32], {operand2}

 malloc$36:
	; Assign minBlockPtr currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 40], {operand2}

 malloc$37:
	; Assign minPrevBlockPtr prevBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 48], {operand2}

 malloc$38:
	; Assign lastAddress currAddress
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 36], {operand2}

 malloc$39:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 56], {operand2}

 malloc$40:
	; Dereference £temporary52 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$41:
	; Assign currBlockPtr £temporary52.next
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 malloc$42:
	; Jump 25
	jmp malloc$25

 malloc$43:
	; Equal 62 minBlockPtr integral8$0#
	cmp qword [rbp + 40], {operand2}
	je malloc$62

 malloc$44:
	; IntegralToIntegral £temporary54 minBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 malloc$45:
	; Dereference £temporary55 minBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$46:
	; Add £temporary56 £temporary54 £temporary55.size
	add eax, [{operand1}{WithSign(operand2)}]

 malloc$47:
	; Add newAddress £temporary56 integral4$12#
	add eax, 12
	mov [rbp + 72], {operand2}

 malloc$48:
	; IntegralToIntegral £temporary58 newAddress
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 malloc$49:
	; Assign newBlockPtr £temporary58
	mov [rbp + 76], {operand2}

 malloc$50:
	; Dereference £temporary59 newBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$51:
	; Assign £temporary59.size memorySize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 malloc$52:
	; Dereference £temporary60 newBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$53:
	; Assign £temporary60.next minBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi + 4], {operand2}

 malloc$54:
	; Equal 58 minPrevBlockPtr integral8$0#
	cmp qword [rbp + 48], {operand2}
	je malloc$58

 malloc$55:
	; Dereference £temporary62 minPrevBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$56:
	; Assign £temporary62.next newBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi + 4], {operand2}

 malloc$57:
	; Jump 59
	jmp malloc$59

 malloc$58:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [g_firstBlockPtr], {operand2}

 malloc$59:
	; Add £temporary65 newAddress integral4$12#
	mov ebx, [{operand1}{WithSign(operand2)}]
	add ebx, 12

 malloc$60:
	; IntegralToIntegral £temporary66 £temporary65
	mov rax, 4294967295
	and rbx, rax

 malloc$61:
	; Return £temporary66
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 malloc$62:
	; Subtract newAddress lastAddress newBlockSize
	mov eax, [{operand1}{WithSign(operand2)}]
	sub eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 malloc$63:
	; InspectRegister £temporary68 rbp

 malloc$64:
	; IntegralToIntegral £temporary69 £temporary68

 malloc$65:
	; Assign stackTop £temporary69
	mov [rbp + 76], {operand2}

 malloc$66:
	; GreaterThan 81 stackTop newAddress
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 76], {operand2}
	ja malloc$81

 malloc$67:
	; IntegralToIntegral £temporary71 newAddress
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 malloc$68:
	; Assign newBlockPtr £temporary71
	mov [rbp + 80], {operand2}

 malloc$69:
	; Dereference £temporary72 newBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$70:
	; Assign £temporary72.size memorySize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 malloc$71:
	; Dereference £temporary73 newBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$72:
	; Assign £temporary73.next integral8$0#
	mov qword [rsi + 4], {operand2}

 malloc$73:
	; Equal 77 prevBlockPtr integral8$0#
	cmp qword [rbp + 56], {operand2}
	je malloc$77

 malloc$74:
	; Dereference £temporary75 prevBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 malloc$75:
	; Assign £temporary75.next newBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi + 4], {operand2}

 malloc$76:
	; Jump 78
	jmp malloc$78

 malloc$77:
	; Assign g_firstBlockPtr newBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [g_firstBlockPtr], {operand2}

 malloc$78:
	; Add £temporary78 newAddress integral4$12#
	mov ebx, [{operand1}{WithSign(operand2)}]
	add ebx, 12

 malloc$79:
	; IntegralToIntegral £temporary79 £temporary78
	mov rax, 4294967295
	and rbx, rax

 malloc$80:
	; Return £temporary79
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 malloc$81:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 malloc$82:
	; FunctionEnd malloc

section .text

 calloc:
	; PreCall 32

 calloc$1:
	; Multiply £temporary84 number size
	mov eax, [{operand1}{WithSign(operand2)}]
	xor edx, edx
	imul dword [rbp + 28]

 calloc$2:
	; Parameter 56 signed int £temporary84
	mov [rbp + 56], {operand2}

 calloc$3:
	; Call 32 malloc 0
	mov qword [rbp + 32], calloc$4
	mov [rbp + 40], {operand2}
	add rbp, 32
	jmp malloc

 calloc$4:
	; PostCall 32

 calloc$5:
	; GetReturnValue £temporary85

 calloc$6:
	; Assign pointer £temporary85
	mov [rbp + 32], {operand2}

 calloc$7:
	; Equal 14 pointer integral8$0#
	cmp qword [rbp + 32], {operand2}
	je calloc$14

 calloc$8:
	; PreCall 40

 calloc$9:
	; Parameter 64 pointer pointer
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 calloc$10:
	; Parameter 72 signed int integral4$0#
	mov dword [rbp + 72], {operand2}

 calloc$11:
	; Parameter 76 signed int size
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 76], {operand2}

 calloc$12:
	; Call 40 memset 0
	mov qword [rbp + 40], calloc$13
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp memset

 calloc$13:
	; PostCall 40

 calloc$14:
	; Return pointer
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 calloc$15:
	; FunctionEnd calloc

section .text

 free:
	; IntegralToIntegral £temporary90 freeMemoryPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 free$1:
	; Subtract £temporary91 £temporary90 integral4$12#
	sub eax, 12

 free$2:
	; IntegralToIntegral £temporary92 £temporary91
	mov rbx, 4294967295
	and rax, rbx

 free$3:
	; Assign freeBlockPtr £temporary92
	mov [rbp + 32], {operand2}

 free$4:
	; Assign prevBlockPtr integral8$0#
	mov qword [rbp + 40], {operand2}

 free$5:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 48], {operand2}

 free$6:
	; NotEqual 8 freeMemoryPtr integral8$0#
	cmp qword [rbp + 24], {operand2}
	jne free$8

 free$7:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 free$8:
	; Equal 32 currBlockPtr integral8$0#
	cmp qword [rbp + 48], {operand2}
	je free$32

 free$9:
	; NotEqual 28 currBlockPtr freeBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 48], {operand2}
	jne free$28

 free$10:
	; NotEqual 15 prevBlockPtr integral8$0#
	cmp qword [rbp + 40], {operand2}
	jne free$15

 free$11:
	; Dereference £temporary99 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 free$12:
	; NotEqual 15 £temporary99.next integral8$0#
	cmp qword [rsi + 4], {operand2}
	jne free$15

 free$13:
	; Assign g_firstBlockPtr integral8$0#
	mov qword [g_firstBlockPtr], {operand2}

 free$14:
	; Jump 27
	jmp free$27

 free$15:
	; NotEqual 19 prevBlockPtr integral8$0#
	cmp qword [rbp + 40], {operand2}
	jne free$19

 free$16:
	; Dereference £temporary103 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 free$17:
	; Assign g_firstBlockPtr £temporary103.next
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [g_firstBlockPtr], {operand2}

 free$18:
	; Jump 27
	jmp free$27

 free$19:
	; Dereference £temporary104 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 free$20:
	; NotEqual 24 £temporary104.next integral8$0#
	cmp qword [rsi + 4], {operand2}
	jne free$24

 free$21:
	; Dereference £temporary106 prevBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 free$22:
	; Assign £temporary106.next integral8$0#
	mov qword [rsi + 4], {operand2}

 free$23:
	; Jump 27
	jmp free$27

 free$24:
	; Dereference £temporary107 prevBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 free$25:
	; Dereference £temporary108 currBlockPtr 0
	mov rdi, [{operand1}{WithSign(operand2)}]

 free$26:
	; Assign £temporary107.next £temporary108.next
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rsi + 4], {operand2}

 free$27:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 free$28:
	; Assign prevBlockPtr currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 40], {operand2}

 free$29:
	; Dereference £temporary117 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 free$30:
	; Assign currBlockPtr £temporary117.next
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 48], {operand2}

 free$31:
	; Jump 8
	jmp free$8

 free$32:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 free$33:
	; FunctionEnd free

section .data

@716string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@717string_newMemorySize203E3D200#:
	; Initializer String newMemorySize >= 0
	db "newMemorySize >= 0", 0

section .data

@718string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .data

@723string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@724string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#:
	; Initializer String ( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )
	db "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )", 0

section .data

@725string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\Malloc.c", 0

section .text

 realloc:
	; GreaterThanEqual 12 newMemorySize integral4$0#
	cmp dword [rbp + 32], {operand2}
	jge realloc$12

 realloc$1:
	; PreCall 36

 realloc$2:
	; Parameter 60 pointer stderr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 60], {operand2}

 realloc$3:
	; Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], {operand2}

 realloc$4:
	; Parameter 76 string string_newMemorySize203E3D200#
	mov qword [rbp + 76], {operand2}

 realloc$5:
	; Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 84], {operand2}

 realloc$6:
	; Parameter 92 signed int integral4$259#
	mov dword [rbp + 92], {operand2}

 realloc$7:
	; Call 36 fprintf 20
	mov qword [rbp + 36], realloc$8
	mov [rbp + 44], {operand2}
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$8:
	; PostCall 36

 realloc$9:
	; PreCall 36

 realloc$10:
	; Call 36 abort 0
	mov qword [rbp + 36], realloc$11
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp abort

 realloc$11:
	; PostCall 36

 realloc$12:
	; NotEqual 25 oldMemoryPtr integral8$0#
	cmp qword [rbp + 24], {operand2}
	jne realloc$25

 realloc$13:
	; GreaterThan 25 newMemorySize integral4$0#
	cmp dword [rbp + 32], {operand2}
	jg realloc$25

 realloc$14:
	; PreCall 36

 realloc$15:
	; Parameter 60 pointer stderr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 60], {operand2}

 realloc$16:
	; Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], {operand2}

 realloc$17:
	; Parameter 76 string string_2820oldMemoryPtr20213D20NULL2029207C7C202820newMemorySize203E2002029#
	mov qword [rbp + 76], {operand2}

 realloc$18:
	; Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#
	mov qword [rbp + 84], {operand2}

 realloc$19:
	; Parameter 92 signed int integral4$260#
	mov dword [rbp + 92], {operand2}

 realloc$20:
	; Call 36 fprintf 20
	mov qword [rbp + 36], realloc$21
	mov [rbp + 44], {operand2}
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 realloc$21:
	; PostCall 36

 realloc$22:
	; PreCall 36

 realloc$23:
	; Call 36 abort 0
	mov qword [rbp + 36], realloc$24
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp abort

 realloc$24:
	; PostCall 36

 realloc$25:
	; NotEqual 32 oldMemoryPtr integral8$0#
	cmp qword [rbp + 24], {operand2}
	jne realloc$32

 realloc$26:
	; PreCall 36

 realloc$27:
	; Parameter 60 signed int newMemorySize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 60], {operand2}

 realloc$28:
	; Call 36 malloc 0
	mov qword [rbp + 36], realloc$29
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp malloc

 realloc$29:
	; PostCall 36

 realloc$30:
	; GetReturnValue £temporary133

 realloc$31:
	; Return £temporary133
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 realloc$32:
	; NotEqual 38 newMemorySize integral4$0#
	cmp dword [rbp + 32], {operand2}
	jne realloc$38

 realloc$33:
	; PreCall 36

 realloc$34:
	; Parameter 60 pointer oldMemoryPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 60], {operand2}

 realloc$35:
	; Call 36 free 0
	mov qword [rbp + 36], realloc$36
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp free

 realloc$36:
	; PostCall 36

 realloc$37:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 realloc$38:
	; IntegralToIntegral £temporary140 newMemorySize
	mov eax, [{operand1}{WithSign(operand2)}]

 realloc$39:
	; Add newBlockSize £temporary140 integral4$12#
	add eax, 12
	mov [rbp + 36], {operand2}

 realloc$40:
	; IntegralToIntegral £temporary142 oldMemoryPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 realloc$41:
	; Subtract £temporary143 £temporary142 integral4$12#
	sub eax, 12

 realloc$42:
	; IntegralToIntegral £temporary144 £temporary143
	mov rbx, 4294967295
	and rax, rbx

 realloc$43:
	; Assign oldBlockPtr £temporary144
	mov [rbp + 40], {operand2}

 realloc$44:
	; Dereference £temporary145 oldBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 realloc$45:
	; GreaterThan 49 newBlockSize £temporary145.size
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 36], {operand2}
	ja realloc$49

 realloc$46:
	; Dereference £temporary147 oldBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 realloc$47:
	; Assign £temporary147.size newBlockSize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 realloc$48:
	; Return oldMemoryPtr
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 realloc$49:
	; StackTop £temporary150
	mov rax, $StackTop

 realloc$50:
	; Add £temporary151 £temporary150 integral8$1048572#
	add rax, 1048572

 realloc$51:
	; IntegralToIntegral £temporary152 £temporary151

 realloc$52:
	; Assign lastAddress £temporary152
	mov [rbp + 48], {operand2}

 realloc$53:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 52], {operand2}

 realloc$54:
	; Equal 67 currBlockPtr integral8$0#
	cmp qword [rbp + 52], {operand2}
	je realloc$67

 realloc$55:
	; NotEqual 62 currBlockPtr oldBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 52], {operand2}
	jne realloc$62

 realloc$56:
	; IntegralToIntegral £temporary155 currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 realloc$57:
	; Subtract availableSize lastAddress £temporary155
	mov ebx, [{operand1}{WithSign(operand2)}]
	sub ebx, eax
	mov [rbp + 60], {operand2}

 realloc$58:
	; LessThan 67 availableSize newBlockSize
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 60], {operand2}
	jb realloc$67

 realloc$59:
	; Dereference £temporary158 oldBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 realloc$60:
	; Assign £temporary158.size newBlockSize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 realloc$61:
	; Return oldMemoryPtr
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 realloc$62:
	; IntegralToIntegral £temporary163 currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 realloc$63:
	; Assign lastAddress £temporary163
	mov [rbp + 48], {operand2}

 realloc$64:
	; Dereference £temporary164 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 realloc$65:
	; Assign currBlockPtr £temporary164.next
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 52], {operand2}

 realloc$66:
	; Jump 54
	jmp realloc$54

 realloc$67:
	; PreCall 48

 realloc$68:
	; Parameter 72 signed int newMemorySize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 realloc$69:
	; Call 48 malloc 0
	mov qword [rbp + 48], realloc$70
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp malloc

 realloc$70:
	; PostCall 48

 realloc$71:
	; GetReturnValue £temporary165

 realloc$72:
	; Assign newMemoryPtr £temporary165
	mov [rbp + 48], {operand2}

 realloc$73:
	; Equal 85 newMemoryPtr integral8$0#
	cmp qword [rbp + 48], {operand2}
	je realloc$85

 realloc$74:
	; PreCall 56

 realloc$75:
	; Parameter 80 pointer newMemoryPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 realloc$76:
	; Parameter 88 pointer oldMemoryPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 realloc$77:
	; Parameter 96 signed int newMemorySize
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 96], {operand2}

 realloc$78:
	; Call 56 memcpy 0
	mov qword [rbp + 56], realloc$79
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp memcpy

 realloc$79:
	; PostCall 56

 realloc$80:
	; PreCall 56

 realloc$81:
	; Parameter 80 pointer oldMemoryPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 realloc$82:
	; Call 56 free 0
	mov qword [rbp + 56], realloc$83
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp free

 realloc$83:
	; PostCall 56

 realloc$84:
	; Return newMemoryPtr
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 realloc$85:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 realloc$86:
	; FunctionEnd realloc

section .data

@774string_Heap3A0A#:
	; Initializer String Heap:\n
	db "Heap:", 10, 0

section .data

@777string_2020Address2025u2C20Size2025u0A#:
	; Initializer String   Address %u, Size %u\n
	db "  Address %u, Size %u", 10, 0

section .data

@780string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 print_heap:
	; Assign currBlockPtr g_firstBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 24], {operand2}

 print_heap$1:
	; PreCall 32

 print_heap$2:
	; Parameter 56 string string_Heap3A0A#
	mov qword [rbp + 56], {operand2}

 print_heap$3:
	; Call 32 printf 0
	mov qword [rbp + 32], print_heap$4
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$4:
	; PostCall 32

 print_heap$5:
	; Equal 17 currBlockPtr integral8$0#
	cmp qword [rbp + 24], {operand2}
	je print_heap$17

 print_heap$6:
	; PreCall 32

 print_heap$7:
	; Parameter 56 string string_2020Address2025u2C20Size2025u0A#
	mov qword [rbp + 56], {operand2}

 print_heap$8:
	; IntegralToIntegral £temporary173 currBlockPtr
	mov rax, [{operand1}{WithSign(operand2)}]

 print_heap$9:
	; Parameter 64 unsigned int £temporary173
	mov [rbp + 64], {operand2}

 print_heap$10:
	; Dereference £temporary174 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 print_heap$11:
	; Parameter 68 unsigned int £temporary174.size
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 68], {operand2}

 print_heap$12:
	; Call 32 printf 8
	mov qword [rbp + 32], print_heap$13
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_heap$13:
	; PostCall 32

 print_heap$14:
	; Dereference £temporary176 currBlockPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 print_heap$15:
	; Assign currBlockPtr £temporary176.next
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 24], {operand2}

 print_heap$16:
	; Jump 5
	jmp print_heap$5

 print_heap$17:
	; PreCall 32

 print_heap$18:
	; Parameter 56 string string_0A#
	mov qword [rbp + 56], {operand2}

 print_heap$19:
	; Call 32 printf 0
	mov qword [rbp + 32], print_heap$20
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	jmp printf

 print_heap$20:
	; PostCall 32

 print_heap$21:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 print_heap$22:
	; FunctionEnd print_heap
