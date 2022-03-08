	global main

	extern printf
	extern scanf
	global _start
	global $StackTop


section .data

@156string_Hello210A#:
	; Initializer String Hello!\n
	db "Hello!", 10, 0

section .data

@157string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
	; Initializer String Please write a character, a string, an integer, and a double: 
	db "Please write a character, a string, an integer, and a double: ", 0

section .data

@158string_25c2025s2025i2025lf#:
	; Initializer String %c %s %i %lf
	db "%c %s %i %lf", 0

section .data

@159string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
	; Initializer String You wrote the character '%c', the string "%s", the integer %i, and the double %f.\n
	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0

section .text

 _start:
	; Initializerialize Stack Pointer
	mov rbp, $StackTop
	; Initializerialize Heap Pointer
	mov dword [$StackTop + 65534], $StackTop
	add dword [$StackTop + 65534], 65534
	; Initializerialize FPU Control Word, truncate mode => set bit 10 and 11.
	fstcw [rbp]
	or word [rbp], 3072
	fldcw [rbp]
	mov qword [$StackTop], 0

 main:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$1:
	; Parameter 81 string string_Hello210A#
	mov qword [rbp + 81], @156string_Hello210A#

 main$2:
	; Call 57 printf 0
	mov qword [rbp + 57], main$3
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	jmp printf

 main$3:
	; PostCall 57

 main$4:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$5:
	; Parameter 81 string string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#
	mov qword [rbp + 81], @157string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#

 main$6:
	; Call 57 printf 0
	mov qword [rbp + 57], main$7
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	jmp printf

 main$7:
	; PostCall 57

 main$8:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$9:
	; Parameter 81 string string_25c2025s2025i2025lf#
	mov qword [rbp + 81], @158string_25c2025s2025i2025lf#

 main$10:
	; Address £temporary2 c
	mov rsi, rbp
	add rsi, 36

 main$11:
	; Parameter 89 pointer £temporary2
	mov [rbp + 89], rsi

 main$12:
	; Parameter 97 array s
	mov [rbp + 97], rbp
	add qword [rbp + 97], 37

 main$13:
	; Address £temporary3 i
	mov rsi, rbp
	add rsi, 24

 main$14:
	; Parameter 105 pointer £temporary3
	mov [rbp + 105], rsi

 main$15:
	; Address £temporary4 d
	mov rsi, rbp
	add rsi, 28

 main$16:
	; Parameter 113 pointer £temporary4
	mov [rbp + 113], rsi

 main$17:
	; Call 57 scanf 32
	mov qword [rbp + 57], main$18
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 32
	jmp scanf

 main$18:
	; PostCall 57

 main$19:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 main$20:
	; Parameter 81 string string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#
	mov qword [rbp + 81], @159string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#

 main$21:
	; IntegralToIntegral £temporary6 c
	mov al, [rbp + 36]
	and eax, 255
	cmp al, 0
	jge main$22
	neg al
	neg eax

 main$22:
	; Parameter 89 signed int £temporary6
	mov [rbp + 89], eax

 main$23:
	; Parameter 93 array s
	mov [rbp + 93], rbp
	add qword [rbp + 93], 37

 main$24:
	; Parameter 101 signed int i
	mov eax, [rbp + 24]
	mov [rbp + 101], eax

 main$25:
	; PushFloat d
	fld qword [rbp + 28]

 main$26:
	; Parameter 105 double d
	fstp qword [rbp + 105]

 main$27:
	; Call 57 printf 24
	mov qword [rbp + 57], main$28
	mov [rbp + 65], rbp
	add rbp, 57
	mov rdi, rbp
	add rdi, 24
	jmp printf

 main$28:
	; PostCall 57

 main$29:
	; Return
	cmp qword [rbp], 0
	je main$30
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 main$30:
	; Exit
	mov rdi, 0
	mov rax, 60
	syscall

 main$31:
	; FunctionEnd main

section .data
$StackTop:	times 1048576 db 0
