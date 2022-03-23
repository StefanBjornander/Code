	global compare
	global reverse_compare
	global print_div
	global print_ldiv
	global exit_handle1x
	global exit_handle2x
	global exit_handle3x
	global hello
	global qtest
	global stdlib_testZ
	global stdlib_test

	extern printf
	extern atof
	extern strtod
	extern getenv
	extern system
	extern @abs
	extern labs
	extern div
	extern ldiv
	extern qsort
	extern bsearch
	extern $StackTop


section .text

 compare:
	; IntegralToIntegral £temporary5015 valuePtr1
	mov rsi, [{operand1}{WithSign(operand2)}]

 compare$1:
	; Dereference £temporary5016 £temporary5015 0

 compare$2:
	; Assign intValue1 £temporary5016
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 40], {operand2}

 compare$3:
	; IntegralToIntegral £temporary5017 valuePtr2
	mov rsi, [{operand1}{WithSign(operand2)}]

 compare$4:
	; Dereference £temporary5018 £temporary5017 0

 compare$5:
	; Assign intValue2 £temporary5018
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 44], {operand2}

 compare$6:
	; GreaterThanEqual 9 intValue1 intValue2
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 40], {operand2}
	jge compare$9

 compare$7:
	; Assign £temporary5022 integral4$minus1#
	mov ebx, -1

 compare$8:
	; Jump 13
	jmp compare$13

 compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 40], {operand2}
	jne compare$12

 compare$10:
	; Assign £temporary5022 integral4$0#
	mov ebx, 0

 compare$11:
	; Jump 13
	jmp compare$13

 compare$12:
	; Assign £temporary5022 integral4$1#
	mov ebx, 1

 compare$13:
	; Return £temporary5022
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 compare$14:
	; FunctionEnd compare

section .text

 reverse_compare:
	; IntegralToIntegral £temporary5023 valuePtr1
	mov rsi, [{operand1}{WithSign(operand2)}]

 reverse_compare$1:
	; Dereference £temporary5024 £temporary5023 0

 reverse_compare$2:
	; Assign intValue1 £temporary5024
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 40], {operand2}

 reverse_compare$3:
	; IntegralToIntegral £temporary5025 valuePtr2
	mov rsi, [{operand1}{WithSign(operand2)}]

 reverse_compare$4:
	; Dereference £temporary5026 £temporary5025 0

 reverse_compare$5:
	; Assign intValue2 £temporary5026
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 44], {operand2}

 reverse_compare$6:
	; GreaterThanEqual 9 intValue1 intValue2
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 40], {operand2}
	jge reverse_compare$9

 reverse_compare$7:
	; Assign £temporary5030 integral4$1#
	mov ebx, 1

 reverse_compare$8:
	; Jump 13
	jmp reverse_compare$13

 reverse_compare$9:
	; NotEqual 12 intValue1 intValue2
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 40], {operand2}
	jne reverse_compare$12

 reverse_compare$10:
	; Assign £temporary5030 integral4$0#
	mov ebx, 0

 reverse_compare$11:
	; Jump 13
	jmp reverse_compare$13

 reverse_compare$12:
	; Assign £temporary5030 integral4$minus1#
	mov ebx, -1

 reverse_compare$13:
	; Return £temporary5030
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 reverse_compare$14:
	; FunctionEnd reverse_compare

section .data

@12556string_div_t20quot2025i20rem2025i0A#:
	; Initializer String div_t quot %i rem %i\n
	db "div_t quot %i rem %i", 10, 0

section .text

 print_div:
	; PreCall 32

 print_div$1:
	; Parameter 56 string string_div_t20quot2025i20rem2025i0A#
	mov qword [rbp + 56], {operand2}

 print_div$2:
	; Parameter 64 signed int d.quot
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 print_div$3:
	; Parameter 68 signed int d.rem
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 68], {operand2}

 print_div$4:
	; Call 32 printf 8
	mov qword [rbp + 32], print_div$5
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_div$5:
	; PostCall 32

 print_div$6:
	; Add d.quot d.quot integral4$1#
	inc dword [rbp + 24]

 print_div$7:
	; Add d.rem d.rem integral4$1#
	inc dword [rbp + 28]

 print_div$8:
	; Return d
	mov rbx, rbp
	add rbx, 24
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 print_div$9:
	; FunctionEnd print_div

section .data

@12567string_ldiv_t20quot2025li20rem2025li0A#:
	; Initializer String ldiv_t quot %li rem %li\n
	db "ldiv_t quot %li rem %li", 10, 0

section .text

 print_ldiv:
	; PreCall 40

 print_ldiv$1:
	; Parameter 64 string string_ldiv_t20quot2025li20rem2025li0A#
	mov qword [rbp + 64], {operand2}

 print_ldiv$2:
	; Parameter 72 signed long int ld.quot
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 print_ldiv$3:
	; Parameter 80 signed long int ld.rem
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 print_ldiv$4:
	; Call 40 printf 16
	mov qword [rbp + 40], print_ldiv$5
	mov [rbp + 48], {operand2}
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 print_ldiv$5:
	; PostCall 40

 print_ldiv$6:
	; Subtract ld.quot ld.quot integral8$1#
	dec qword [rbp + 24]

 print_ldiv$7:
	; Subtract ld.rem ld.rem integral8$1#
	dec qword [rbp + 32]

 print_ldiv$8:
	; Return ld
	mov rbx, rbp
	add rbx, 24
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 print_ldiv$9:
	; FunctionEnd print_ldiv

section .data

@12578string_exit10A#:
	; Initializer String exit1\n
	db "exit1", 10, 0

section .text

 exit_handle1x:
	; PreCall 24

 exit_handle1x$1:
	; Parameter 48 string string_exit10A#
	mov qword [rbp + 48], {operand2}

 exit_handle1x$2:
	; Call 24 printf 0
	mov qword [rbp + 24], exit_handle1x$3
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle1x$3:
	; PostCall 24

 exit_handle1x$4:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 exit_handle1x$5:
	; FunctionEnd exit_handle1x

section .data

@12581string_exit20A#:
	; Initializer String exit2\n
	db "exit2", 10, 0

section .text

 exit_handle2x:
	; PreCall 24

 exit_handle2x$1:
	; Parameter 48 string string_exit20A#
	mov qword [rbp + 48], {operand2}

 exit_handle2x$2:
	; Call 24 printf 0
	mov qword [rbp + 24], exit_handle2x$3
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle2x$3:
	; PostCall 24

 exit_handle2x$4:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 exit_handle2x$5:
	; FunctionEnd exit_handle2x

section .data

@12584string_exit30A#:
	; Initializer String exit3\n
	db "exit3", 10, 0

section .text

 exit_handle3x:
	; PreCall 24

 exit_handle3x$1:
	; Parameter 48 string string_exit30A#
	mov qword [rbp + 48], {operand2}

 exit_handle3x$2:
	; Call 24 printf 0
	mov qword [rbp + 24], exit_handle3x$3
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle3x$3:
	; PostCall 24

 exit_handle3x$4:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 exit_handle3x$5:
	; FunctionEnd exit_handle3x

section .data

@12587string_HelloFFF#:
	; Initializer String HelloFFF
	db "HelloFFF", 0

section .text

 hello:
	; PreCall 24

 hello$1:
	; Parameter 48 string string_HelloFFF#
	mov qword [rbp + 48], {operand2}

 hello$2:
	; Call 24 printf 0
	mov qword [rbp + 24], hello$3
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	jmp printf

 hello$3:
	; PostCall 24

 hello$4:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 hello$5:
	; FunctionEnd hello

section .data

@12591string_f3A2025u0A#:
	; Initializer String f: %u\n
	db "f: %u", 10, 0

section .text

 qtest:
	; PreCall 32

 qtest$1:
	; Parameter 56 string string_f3A2025u0A#
	mov qword [rbp + 56], {operand2}

 qtest$2:
	; IntegralToIntegral £temporary5045 f
	mov rax, [{operand1}{WithSign(operand2)}]

 qtest$3:
	; Parameter 64 unsigned int £temporary5045
	mov [rbp + 64], {operand2}

 qtest$4:
	; Call 32 printf 4
	mov qword [rbp + 32], qtest$5
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	add rdi, 4
	jmp printf

 qtest$5:
	; PostCall 32

 qtest$6:
	; PreCall 32

 qtest$7:
	; Call 32 f 0
	mov qword [rbp + 32], qtest$8
	mov [rbp + 40], {operand2}
	mov rax, [{operand1}{WithSign(operand2)}]
	add rbp, 32
	jmp rax

 qtest$8:
	; PostCall 32

 qtest$9:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 qtest$10:
	; FunctionEnd qtest

section .data

@12595string_hello3A2025u0A#:
	; Initializer String hello: %u\n
	db "hello: %u", 10, 0

section .data

@12596string_Y#:
	; Initializer String Y
	db "Y", 0

section .text

 stdlib_testZ:
	; PreCall 24

 stdlib_testZ$1:
	; Parameter 48 string string_hello3A2025u0A#
	mov qword [rbp + 48], {operand2}

 stdlib_testZ$2:
	; IntegralToIntegral £temporary5048 hello
	mov rax, hello

 stdlib_testZ$3:
	; Parameter 56 unsigned int £temporary5048
	mov [rbp + 56], {operand2}

 stdlib_testZ$4:
	; Call 24 printf 4
	mov qword [rbp + 24], stdlib_testZ$5
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_testZ$5:
	; PostCall 24

 stdlib_testZ$6:
	; PreCall 24

 stdlib_testZ$7:
	; Parameter 48 function hello
	mov qword [rbp + 48], {operand2}

 stdlib_testZ$8:
	; Call 24 qtest 0
	mov qword [rbp + 24], stdlib_testZ$9
	mov [rbp + 32], {operand2}
	add rbp, 24
	jmp qtest

 stdlib_testZ$9:
	; PostCall 24

 stdlib_testZ$10:
	; PreCall 24

 stdlib_testZ$11:
	; Parameter 48 string string_Y#
	mov qword [rbp + 48], {operand2}

 stdlib_testZ$12:
	; Call 24 printf 0
	mov qword [rbp + 24], stdlib_testZ$13
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_testZ$13:
	; PostCall 24

 stdlib_testZ$14:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 stdlib_testZ$15:
	; FunctionEnd stdlib_testZ

section .data

@12603string_atof28221232E4562229203D2025f0A#:
	; Initializer String atof("123.456") = %f\n
	db "atof(", 34, "123.456", 34, ") = %f", 10, 0

section .data

@12604string_1232E456#:
	; Initializer String 123.456
	db "123.456", 0

section .data

@12605string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#:
	; Initializer String strtod("123.456789abc", &p) = (%f, %s)\n
	db "strtod(", 34, "123.456789abc", 34, ", &p) = (%f, %s)", 10, 0

section .data

@12606string_1232E456789abc#:
	; Initializer String 123.456789abc
	db "123.456789abc", 0

section .data

@12607string_0Agetenv2822path2229203D2025s0A#:
	; Initializer String \ngetenv("path") = %s\n
	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0

section .data

@12608string_path#:
	; Initializer String path
	db "path", 0

section .data

@12609string_system2822dir22290A#:
	; Initializer String system("dir")\n
	db "system(", 34, "dir", 34, ")", 10, 0

section .data

@12610string_dir#:
	; Initializer String dir
	db "dir", 0

section .data

@12611string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#:
	; Initializer String \nabs(-3) = %i, abs(3) = %i\n
	db 10, "abs(-3) = %i, abs(3) = %i", 10, 0

section .data

@12614string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#:
	; Initializer String labs(-3l) = %li, labs(3l) = %li\n\n
	db "labs(-3l) = %li, labs(3l) = %li", 10, 10, 0

section .data

@12620string_div_t28102C20329203D202825i2C2025i290A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n
	db "div_t(10, 3) = (%i, %i)", 10, 0

section .data

@12624string_div_t28102C20329203D202825i2C2025i290A0A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n\n
	db "div_t(10, 3) = (%i, %i)", 10, 10, 0

section .data

@12632string_ldiv_t28102C20329203D202825li2C2025li290A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 0

section .data

@12636string_ldiv_t28102C20329203D202825li2C2025li290A0A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 10, 0

section .data

@12653string_0AA20List2013A20#:
	; Initializer String \nA List 1: 
	db 10, "A List 1: ", 0

section .data

@12656string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12659string_0AB20List2023A20#:
	; Initializer String \nB List 2: 
	db 10, "B List 2: ", 0

section .data

@12667string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12670string_0AC20List2033A20#:
	; Initializer String \nC List 3: 
	db 10, "C List 3: ", 0

section .data

@12678string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12681string_0AB20List2043A20#:
	; Initializer String \nB List 4: 
	db 10, "B List 4: ", 0

section .data

@12689string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12692string_0A0ASearch3A0A#:
	; Initializer String \n\nSearch:\n
	db 10, 10, "Search:", 10, 0

section .data

@12707string_20202825i2C2025i290A#:
	; Initializer String   (%i, %i)\n
	db "  (%i, %i)", 10, 0

section .data

@12708string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@12657integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12668integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12679integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12690integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12704integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 stdlib_test:
	; PreCall 32

 stdlib_test$1:
	; Parameter 56 string string_atof28221232E4562229203D2025f0A#
	mov qword [rbp + 56], {operand2}

 stdlib_test$2:
	; PreCall 32

 stdlib_test$3:
	; Parameter 88 string string_1232E456#
	mov qword [rbp + 88], {operand2}

 stdlib_test$4:
	; Call 64 atof 0
	mov qword [rbp + 64], stdlib_test$5
	mov [rbp + 72], {operand2}
	add rbp, 64
	jmp atof

 stdlib_test$5:
	; PostCall 64

 stdlib_test$6:
	; GetReturnValue £temporary5052

 stdlib_test$7:
	; Parameter 64 double £temporary5052
	fstp qword [rbp + 64]

 stdlib_test$8:
	; Call 32 printf 8
	mov qword [rbp + 32], stdlib_test$9
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$9:
	; PostCall 32

 stdlib_test$10:
	; PreCall 32

 stdlib_test$11:
	; Parameter 56 string string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#
	mov qword [rbp + 56], {operand2}

 stdlib_test$12:
	; PreCall 32

 stdlib_test$13:
	; Parameter 88 string string_1232E456789abc#
	mov qword [rbp + 88], {operand2}

 stdlib_test$14:
	; Address £temporary5054 p
	mov rsi, rbp
	add rsi, 24

 stdlib_test$15:
	; Parameter 96 pointer £temporary5054
	mov [rbp + 96], {operand2}

 stdlib_test$16:
	; Call 64 strtod 0
	mov qword [rbp + 64], stdlib_test$17
	mov [rbp + 72], {operand2}
	add rbp, 64
	jmp strtod

 stdlib_test$17:
	; PostCall 64

 stdlib_test$18:
	; GetReturnValue £temporary5055

 stdlib_test$19:
	; Parameter 64 double £temporary5055
	fstp qword [rbp + 64]

 stdlib_test$20:
	; Parameter 72 pointer p
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 stdlib_test$21:
	; Call 32 printf 16
	mov qword [rbp + 32], stdlib_test$22
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$22:
	; PostCall 32

 stdlib_test$23:
	; PreCall 24

 stdlib_test$24:
	; Parameter 48 string string_0Agetenv2822path2229203D2025s0A#
	mov qword [rbp + 48], {operand2}

 stdlib_test$25:
	; PreCall 24

 stdlib_test$26:
	; Parameter 80 string string_path#
	mov qword [rbp + 80], {operand2}

 stdlib_test$27:
	; Call 56 getenv 0
	mov qword [rbp + 56], stdlib_test$28
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp getenv

 stdlib_test$28:
	; PostCall 56

 stdlib_test$29:
	; GetReturnValue £temporary5057

 stdlib_test$30:
	; Parameter 56 pointer £temporary5057
	mov [rbp + 56], {operand2}

 stdlib_test$31:
	; Call 24 printf 8
	mov qword [rbp + 24], stdlib_test$32
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$32:
	; PostCall 24

 stdlib_test$33:
	; PreCall 24

 stdlib_test$34:
	; Parameter 48 string string_system2822dir22290A#
	mov qword [rbp + 48], {operand2}

 stdlib_test$35:
	; Call 24 printf 0
	mov qword [rbp + 24], stdlib_test$36
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_test$36:
	; PostCall 24

 stdlib_test$37:
	; PreCall 24

 stdlib_test$38:
	; Parameter 48 string string_dir#
	mov qword [rbp + 48], {operand2}

 stdlib_test$39:
	; Call 24 system 0
	mov qword [rbp + 24], stdlib_test$40
	mov [rbp + 32], {operand2}
	add rbp, 24
	jmp system

 stdlib_test$40:
	; PostCall 24

 stdlib_test$41:
	; PreCall 24

 stdlib_test$42:
	; Parameter 48 string string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#
	mov qword [rbp + 48], {operand2}

 stdlib_test$43:
	; PreCall 24

 stdlib_test$44:
	; Parameter 80 signed int integral4$minus3#
	mov dword [rbp + 80], {operand2}

 stdlib_test$45:
	; Call 56 @abs 0
	mov qword [rbp + 56], stdlib_test$46
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp @abs

 stdlib_test$46:
	; PostCall 56

 stdlib_test$47:
	; GetReturnValue £temporary5061

 stdlib_test$48:
	; Parameter 56 signed int £temporary5061
	mov [rbp + 56], {operand2}

 stdlib_test$49:
	; PreCall 24

 stdlib_test$50:
	; Parameter 84 signed int integral4$3#
	mov dword [rbp + 84], {operand2}

 stdlib_test$51:
	; Call 60 @abs 0
	mov qword [rbp + 60], stdlib_test$52
	mov [rbp + 68], {operand2}
	add rbp, 60
	jmp @abs

 stdlib_test$52:
	; PostCall 60

 stdlib_test$53:
	; GetReturnValue £temporary5062

 stdlib_test$54:
	; Parameter 60 signed int £temporary5062
	mov [rbp + 60], {operand2}

 stdlib_test$55:
	; Call 24 printf 8
	mov qword [rbp + 24], stdlib_test$56
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$56:
	; PostCall 24

 stdlib_test$57:
	; PreCall 24

 stdlib_test$58:
	; Parameter 48 string string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#
	mov qword [rbp + 48], {operand2}

 stdlib_test$59:
	; PreCall 24

 stdlib_test$60:
	; Parameter 80 signed long int integral8$minus3#
	mov qword [rbp + 80], {operand2}

 stdlib_test$61:
	; Call 56 labs 0
	mov qword [rbp + 56], stdlib_test$62
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp labs

 stdlib_test$62:
	; PostCall 56

 stdlib_test$63:
	; GetReturnValue £temporary5064

 stdlib_test$64:
	; Parameter 56 signed long int £temporary5064
	mov [rbp + 56], {operand2}

 stdlib_test$65:
	; PreCall 24

 stdlib_test$66:
	; Parameter 88 signed long int integral8$3#
	mov qword [rbp + 88], {operand2}

 stdlib_test$67:
	; Call 64 labs 0
	mov qword [rbp + 64], stdlib_test$68
	mov [rbp + 72], {operand2}
	add rbp, 64
	jmp labs

 stdlib_test$68:
	; PostCall 64

 stdlib_test$69:
	; GetReturnValue £temporary5065

 stdlib_test$70:
	; Parameter 64 signed long int £temporary5065
	mov [rbp + 64], {operand2}

 stdlib_test$71:
	; Call 24 printf 16
	mov qword [rbp + 24], stdlib_test$72
	mov [rbp + 32], {operand2}
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$72:
	; PostCall 24

 stdlib_test$73:
	; PreCall 24

 stdlib_test$74:
	; Parameter 48 signed int integral4$10#
	mov dword [rbp + 48], {operand2}

 stdlib_test$75:
	; Parameter 52 signed int integral4$3#
	mov dword [rbp + 52], {operand2}

 stdlib_test$76:
	; Call 24 div 0
	mov qword [rbp + 24], stdlib_test$77
	mov [rbp + 32], {operand2}
	add rbp, 24
	jmp div

 stdlib_test$77:
	; PostCall 24

 stdlib_test$78:
	; GetReturnValue £temporary5067

 stdlib_test$79:
	; AssignInitSize i £temporary5067
	mov rsi, rbp
	add rsi, 24
	mov al, 8

 stdlib_test$80:
	; Assign i £temporary5067
	mov ah, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$80

 stdlib_test$81:
	; PreCall 32

 stdlib_test$82:
	; Parameter 56 string string_div_t28102C20329203D202825i2C2025i290A#
	mov qword [rbp + 56], {operand2}

 stdlib_test$83:
	; Parameter 64 signed int i.quot
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 stdlib_test$84:
	; Parameter 68 signed int i.rem
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 68], {operand2}

 stdlib_test$85:
	; Call 32 printf 8
	mov qword [rbp + 32], stdlib_test$86
	mov [rbp + 40], {operand2}
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$86:
	; PostCall 32

 stdlib_test$87:
	; PreCall 32

 stdlib_test$88:
	; ParameterInitSize 56 struct i
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 56
	mov al, 8

 stdlib_test$89:
	; Parameter 56 struct i
	mov ah, [{operand1}{WithSign(operand2)}]
	mov [rdi], {operand2}
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$89

 stdlib_test$90:
	; Call 32 print_div 0
	mov qword [rbp + 32], stdlib_test$91
	mov [rbp + 40], {operand2}
	add rbp, 32
	jmp print_div

 stdlib_test$91:
	; PostCall 32

 stdlib_test$92:
	; GetReturnValue £temporary5070

 stdlib_test$93:
	; AssignInitSize j £temporary5070
	mov rsi, rbp
	add rsi, 32
	mov al, 8

 stdlib_test$94:
	; Assign j £temporary5070
	mov ah, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$94

 stdlib_test$95:
	; PreCall 40

 stdlib_test$96:
	; Parameter 64 string string_div_t28102C20329203D202825i2C2025i290A0A#
	mov qword [rbp + 64], {operand2}

 stdlib_test$97:
	; Parameter 72 signed int j.quot
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 stdlib_test$98:
	; Parameter 76 signed int j.rem
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 76], {operand2}

 stdlib_test$99:
	; Call 40 printf 8
	mov qword [rbp + 40], stdlib_test$100
	mov [rbp + 48], {operand2}
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$100:
	; PostCall 40

 stdlib_test$101:
	; PreCall 24

 stdlib_test$102:
	; Parameter 48 signed long int integral8$10#
	mov qword [rbp + 48], {operand2}

 stdlib_test$103:
	; Parameter 56 signed long int integral8$3#
	mov qword [rbp + 56], {operand2}

 stdlib_test$104:
	; Call 24 ldiv 0
	mov qword [rbp + 24], stdlib_test$105
	mov [rbp + 32], {operand2}
	add rbp, 24
	jmp ldiv

 stdlib_test$105:
	; PostCall 24

 stdlib_test$106:
	; GetReturnValue £temporary5073

 stdlib_test$107:
	; AssignInitSize li £temporary5073
	mov rsi, rbp
	add rsi, 24
	mov al, 16

 stdlib_test$108:
	; Assign li £temporary5073
	mov ah, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$108

 stdlib_test$109:
	; PreCall 40

 stdlib_test$110:
	; Parameter 64 string string_ldiv_t28102C20329203D202825li2C2025li290A#
	mov qword [rbp + 64], {operand2}

 stdlib_test$111:
	; Parameter 72 signed long int li.quot
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 stdlib_test$112:
	; Parameter 80 signed long int li.rem
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$113:
	; Call 40 printf 16
	mov qword [rbp + 40], stdlib_test$114
	mov [rbp + 48], {operand2}
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$114:
	; PostCall 40

 stdlib_test$115:
	; PreCall 40

 stdlib_test$116:
	; ParameterInitSize 64 struct li
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

 stdlib_test$117:
	; Parameter 64 struct li
	mov ah, [{operand1}{WithSign(operand2)}]
	mov [rdi], {operand2}
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$117

 stdlib_test$118:
	; Call 40 print_ldiv 0
	mov qword [rbp + 40], stdlib_test$119
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp print_ldiv

 stdlib_test$119:
	; PostCall 40

 stdlib_test$120:
	; GetReturnValue £temporary5076

 stdlib_test$121:
	; AssignInitSize lj £temporary5076
	mov rsi, rbp
	add rsi, 40
	mov al, 16

 stdlib_test$122:
	; Assign lj £temporary5076
	mov ah, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$122

 stdlib_test$123:
	; PreCall 56

 stdlib_test$124:
	; Parameter 80 string string_ldiv_t28102C20329203D202825li2C2025li290A0A#
	mov qword [rbp + 80], {operand2}

 stdlib_test$125:
	; Parameter 88 signed long int lj.quot
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 stdlib_test$126:
	; Parameter 96 signed long int lj.rem
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 96], {operand2}

 stdlib_test$127:
	; Call 56 printf 16
	mov qword [rbp + 56], stdlib_test$128
	mov [rbp + 64], {operand2}
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$128:
	; PostCall 56

 stdlib_test$129:
	; Assign list[0] integral4$3#
	mov dword [rbp + 24], {operand2}

 stdlib_test$130:
	; Assign list[1] integral4$4#
	mov dword [rbp + 28], {operand2}

 stdlib_test$131:
	; Assign list[2] integral4$2#
	mov dword [rbp + 32], {operand2}

 stdlib_test$132:
	; Assign list[3] integral4$1#
	mov dword [rbp + 36], {operand2}

 stdlib_test$133:
	; Assign size integral4$4#
	mov dword [rbp + 40], {operand2}

 stdlib_test$134:
	; PreCall 48

 stdlib_test$135:
	; Parameter 72 string string_0AA20List2013A20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$136:
	; Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$137
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$137:
	; PostCall 48

 stdlib_test$138:
	; Assign index integral4$0#
	mov dword [rbp + 44], {operand2}

 stdlib_test$139:
	; GreaterThanEqual 151 index size
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 44], {operand2}
	jge stdlib_test$151

 stdlib_test$140:
	; PreCall 48

 stdlib_test$141:
	; Parameter 72 string string_25i20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$142:
	; Multiply £temporary5088 index integral4$4#
	mov eax, [{operand1}{WithSign(operand2)}]
	xor edx, edx
	imul dword [@12657integral4$4#]

 stdlib_test$143:
	; IntegralToIntegral £temporary5089 £temporary5088
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$144:
	; Add £temporary5090 list £temporary5089
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$145:
	; Dereference £temporary5091 £temporary5090 0

 stdlib_test$146:
	; Parameter 80 signed int £temporary5091
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$147:
	; Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$148
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$148:
	; PostCall 48

 stdlib_test$149:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$150:
	; Jump 139
	jmp stdlib_test$139

 stdlib_test$151:
	; PreCall 48

 stdlib_test$152:
	; Parameter 72 string string_0AB20List2023A20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$153:
	; Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$154
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$154:
	; PostCall 48

 stdlib_test$155:
	; PreCall 48

 stdlib_test$156:
	; Parameter 72 array list
	mov [rbp + 72], {operand2}
	add qword [rbp + 72], {operand2}

 stdlib_test$157:
	; Parameter 80 signed int size
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$158:
	; Parameter 84 signed int integral4$4#
	mov dword [rbp + 84], {operand2}

 stdlib_test$159:
	; Parameter 88 function compare
	mov qword [rbp + 88], {operand2}

 stdlib_test$160:
	; Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$161
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp qsort

 stdlib_test$161:
	; PostCall 48

 stdlib_test$162:
	; Assign index integral4$0#
	mov dword [rbp + 44], {operand2}

 stdlib_test$163:
	; GreaterThanEqual 175 index size
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 44], {operand2}
	jge stdlib_test$175

 stdlib_test$164:
	; PreCall 48

 stdlib_test$165:
	; Parameter 72 string string_25i20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$166:
	; Multiply £temporary5099 index integral4$4#
	mov eax, [{operand1}{WithSign(operand2)}]
	xor edx, edx
	imul dword [@12668integral4$4#]

 stdlib_test$167:
	; IntegralToIntegral £temporary5100 £temporary5099
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$168:
	; Add £temporary5101 list £temporary5100
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$169:
	; Dereference £temporary5102 £temporary5101 0

 stdlib_test$170:
	; Parameter 80 signed int £temporary5102
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$171:
	; Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$172
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$172:
	; PostCall 48

 stdlib_test$173:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$174:
	; Jump 163
	jmp stdlib_test$163

 stdlib_test$175:
	; PreCall 48

 stdlib_test$176:
	; Parameter 72 string string_0AC20List2033A20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$177:
	; Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$178
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$178:
	; PostCall 48

 stdlib_test$179:
	; PreCall 48

 stdlib_test$180:
	; Parameter 72 array list
	mov [rbp + 72], {operand2}
	add qword [rbp + 72], {operand2}

 stdlib_test$181:
	; Parameter 80 signed int size
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$182:
	; Parameter 84 signed int integral4$4#
	mov dword [rbp + 84], {operand2}

 stdlib_test$183:
	; Parameter 88 function reverse_compare
	mov qword [rbp + 88], {operand2}

 stdlib_test$184:
	; Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$185
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp qsort

 stdlib_test$185:
	; PostCall 48

 stdlib_test$186:
	; Assign index integral4$0#
	mov dword [rbp + 44], {operand2}

 stdlib_test$187:
	; GreaterThanEqual 199 index size
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 44], {operand2}
	jge stdlib_test$199

 stdlib_test$188:
	; PreCall 48

 stdlib_test$189:
	; Parameter 72 string string_25i20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$190:
	; Multiply £temporary5110 index integral4$4#
	mov eax, [{operand1}{WithSign(operand2)}]
	xor edx, edx
	imul dword [@12679integral4$4#]

 stdlib_test$191:
	; IntegralToIntegral £temporary5111 £temporary5110
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$192:
	; Add £temporary5112 list £temporary5111
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$193:
	; Dereference £temporary5113 £temporary5112 0

 stdlib_test$194:
	; Parameter 80 signed int £temporary5113
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$195:
	; Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$196
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$196:
	; PostCall 48

 stdlib_test$197:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$198:
	; Jump 187
	jmp stdlib_test$187

 stdlib_test$199:
	; PreCall 48

 stdlib_test$200:
	; Parameter 72 string string_0AB20List2043A20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$201:
	; Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$202
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$202:
	; PostCall 48

 stdlib_test$203:
	; PreCall 48

 stdlib_test$204:
	; Parameter 72 array list
	mov [rbp + 72], {operand2}
	add qword [rbp + 72], {operand2}

 stdlib_test$205:
	; Parameter 80 signed int size
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$206:
	; Parameter 84 signed int integral4$4#
	mov dword [rbp + 84], {operand2}

 stdlib_test$207:
	; Parameter 88 function compare
	mov qword [rbp + 88], {operand2}

 stdlib_test$208:
	; Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$209
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp qsort

 stdlib_test$209:
	; PostCall 48

 stdlib_test$210:
	; Assign index integral4$0#
	mov dword [rbp + 44], {operand2}

 stdlib_test$211:
	; GreaterThanEqual 223 index size
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp [rbp + 44], {operand2}
	jge stdlib_test$223

 stdlib_test$212:
	; PreCall 48

 stdlib_test$213:
	; Parameter 72 string string_25i20#
	mov qword [rbp + 72], {operand2}

 stdlib_test$214:
	; Multiply £temporary5121 index integral4$4#
	mov eax, [{operand1}{WithSign(operand2)}]
	xor edx, edx
	imul dword [@12690integral4$4#]

 stdlib_test$215:
	; IntegralToIntegral £temporary5122 £temporary5121
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$216:
	; Add £temporary5123 list £temporary5122
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$217:
	; Dereference £temporary5124 £temporary5123 0

 stdlib_test$218:
	; Parameter 80 signed int £temporary5124
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 stdlib_test$219:
	; Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$220
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$220:
	; PostCall 48

 stdlib_test$221:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$222:
	; Jump 211
	jmp stdlib_test$211

 stdlib_test$223:
	; PreCall 48

 stdlib_test$224:
	; Parameter 72 string string_0A0ASearch3A0A#
	mov qword [rbp + 72], {operand2}

 stdlib_test$225:
	; Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$226
	mov [rbp + 56], {operand2}
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$226:
	; PostCall 48

 stdlib_test$227:
	; Assign key integral4$0#
	mov dword [rbp + 44], {operand2}

 stdlib_test$228:
	; GreaterThanEqual 256 key integral4$6#
	cmp dword [rbp + 44], {operand2}
	jge stdlib_test$256

 stdlib_test$229:
	; PreCall 48

 stdlib_test$230:
	; Address £temporary5129 key
	mov rsi, rbp
	add rsi, 44

 stdlib_test$231:
	; Parameter 72 pointer £temporary5129
	mov [rbp + 72], {operand2}

 stdlib_test$232:
	; Parameter 80 array list
	mov [rbp + 80], {operand2}
	add qword [rbp + 80], {operand2}

 stdlib_test$233:
	; Parameter 88 signed int size
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 stdlib_test$234:
	; Parameter 92 signed int integral4$4#
	mov dword [rbp + 92], {operand2}

 stdlib_test$235:
	; Parameter 96 function compare
	mov qword [rbp + 96], {operand2}

 stdlib_test$236:
	; Call 48 bsearch 0
	mov qword [rbp + 48], stdlib_test$237
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp bsearch

 stdlib_test$237:
	; PostCall 48

 stdlib_test$238:
	; GetReturnValue £temporary5132

 stdlib_test$239:
	; IntegralToIntegral £temporary5133 £temporary5132

 stdlib_test$240:
	; Assign p £temporary5133
	mov [rbp + 48], {operand2}

 stdlib_test$241:
	; Equal 246 p integral8$0#
	cmp qword [rbp + 48], {operand2}
	je stdlib_test$246

 stdlib_test$242:
	; Subtract £temporary5135 p list
	mov rax, [{operand1}{WithSign(operand2)}]
	sub rax, rbp
	sub rax, 24

 stdlib_test$243:
	; IntegralToIntegral £temporary5136 £temporary5135

 stdlib_test$244:
	; Divide £temporary5138 £temporary5136 integral4$4#
	xor edx, edx
	idiv dword [@12704integral4$4#]

 stdlib_test$245:
	; Jump 247
	jmp stdlib_test$247

 stdlib_test$246:
	; Assign £temporary5138 integral4$minus1#
	mov eax, -1

 stdlib_test$247:
	; Assign index £temporary5138
	mov [rbp + 56], {operand2}

 stdlib_test$248:
	; PreCall 60

 stdlib_test$249:
	; Parameter 84 string string_20202825i2C2025i290A#
	mov qword [rbp + 84], {operand2}

 stdlib_test$250:
	; Parameter 92 signed int key
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 92], {operand2}

 stdlib_test$251:
	; Parameter 96 signed int index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 96], {operand2}

 stdlib_test$252:
	; Call 60 printf 8
	mov qword [rbp + 60], stdlib_test$253
	mov [rbp + 68], {operand2}
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$253:
	; PostCall 60

 stdlib_test$254:
	; Add key key integral4$1#
	inc dword [rbp + 44]

 stdlib_test$255:
	; Jump 228
	jmp stdlib_test$228

 stdlib_test$256:
	; PreCall 44

 stdlib_test$257:
	; Parameter 68 string string_0A#
	mov qword [rbp + 68], {operand2}

 stdlib_test$258:
	; Call 44 printf 0
	mov qword [rbp + 44], stdlib_test$259
	mov [rbp + 52], {operand2}
	add rbp, 44
	mov rdi, rbp
	jmp printf

 stdlib_test$259:
	; PostCall 44

 stdlib_test$260:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 stdlib_test$261:
	; FunctionEnd stdlib_test
