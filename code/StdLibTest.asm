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
	; 0 IntegralToIntegral £temporary4778 valuePtr1
	mov rsi, [rbp + 24]

 compare$1:
	; 1 Dereference £temporary4779 £temporary4778 0

 compare$2:
	; 2 Assign intValue1 £temporary4779
	mov eax, [rsi]
	mov [rbp + 40], eax

 compare$3:
	; 3 IntegralToIntegral £temporary4780 valuePtr2
	mov rsi, [rbp + 32]

 compare$4:
	; 4 Dereference £temporary4781 £temporary4780 0

 compare$5:
	; 5 Assign intValue2 £temporary4781
	mov eax, [rsi]
	mov [rbp + 44], eax

 compare$6:
	; 6 GreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge compare$9

 compare$7:
	; 9 Assign £temporary4785 integral4$minus1#
	mov ebx, -1

 compare$8:
	; 10 Jump 13
	jmp compare$13

 compare$9:
	; 12 NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne compare$12

 compare$10:
	; 15 Assign £temporary4785 integral4$0#
	mov ebx, 0

 compare$11:
	; 16 Jump 13
	jmp compare$13

 compare$12:
	; 18 Assign £temporary4785 integral4$1#
	mov ebx, 1

 compare$13:
	; 22 SetReturnValue

 compare$14:
	; 23 Return £temporary4785
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 compare$15:
	; 25 FunctionEnd compare

section .text

 reverse_compare:
	; 0 IntegralToIntegral £temporary4786 valuePtr1
	mov rsi, [rbp + 24]

 reverse_compare$1:
	; 1 Dereference £temporary4787 £temporary4786 0

 reverse_compare$2:
	; 2 Assign intValue1 £temporary4787
	mov eax, [rsi]
	mov [rbp + 40], eax

 reverse_compare$3:
	; 3 IntegralToIntegral £temporary4788 valuePtr2
	mov rsi, [rbp + 32]

 reverse_compare$4:
	; 4 Dereference £temporary4789 £temporary4788 0

 reverse_compare$5:
	; 5 Assign intValue2 £temporary4789
	mov eax, [rsi]
	mov [rbp + 44], eax

 reverse_compare$6:
	; 6 GreaterThanEqual 9 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jge reverse_compare$9

 reverse_compare$7:
	; 9 Assign £temporary4793 integral4$1#
	mov ebx, 1

 reverse_compare$8:
	; 10 Jump 13
	jmp reverse_compare$13

 reverse_compare$9:
	; 12 NotEqual 12 intValue1 intValue2
	mov eax, [rbp + 44]
	cmp [rbp + 40], eax
	jne reverse_compare$12

 reverse_compare$10:
	; 15 Assign £temporary4793 integral4$0#
	mov ebx, 0

 reverse_compare$11:
	; 16 Jump 13
	jmp reverse_compare$13

 reverse_compare$12:
	; 18 Assign £temporary4793 integral4$minus1#
	mov ebx, -1

 reverse_compare$13:
	; 22 SetReturnValue

 reverse_compare$14:
	; 23 Return £temporary4793
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 reverse_compare$15:
	; 25 FunctionEnd reverse_compare

section .data

@12277string_div_t20quot2025i20rem2025i0A#:
	; Initializer String div_t quot %i rem %i\n
	db "div_t quot %i rem %i", 10, 0

section .text

 print_div:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_div$1:
	; 1 Parameter 56 string string_div_t20quot2025i20rem2025i0A#
	mov qword [rbp + 56], @12277string_div_t20quot2025i20rem2025i0A#

 print_div$2:
	; 2 Parameter 64 signed int d.quot
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 print_div$3:
	; 3 Parameter 68 signed int d.rem
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 print_div$4:
	; 4 Call 32 printf 8
	mov qword [rbp + 32], print_div$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 print_div$5:
	; 5 PostCall 32

 print_div$6:
	; 6 Add d.quot d.quot integral4$1#
	inc dword [rbp + 24]

 print_div$7:
	; 8 Assign £temporary4797 d.rem
	mov eax, [rbp + 28]

 print_div$8:
	; 9 Add d.rem d.rem integral4$1#
	inc dword [rbp + 28]

 print_div$9:
	; 11 SetReturnValue

 print_div$10:
	; 12 Return d
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_div$11:
	; 14 FunctionEnd print_div

section .data

@12289string_ldiv_t20quot2025li20rem2025li0A#:
	; Initializer String ldiv_t quot %li rem %li\n
	db "ldiv_t quot %li rem %li", 10, 0

section .text

 print_ldiv:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 print_ldiv$1:
	; 1 Parameter 64 string string_ldiv_t20quot2025li20rem2025li0A#
	mov qword [rbp + 64], @12289string_ldiv_t20quot2025li20rem2025li0A#

 print_ldiv$2:
	; 2 Parameter 72 signed long int ld.quot
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 print_ldiv$3:
	; 3 Parameter 80 signed long int ld.rem
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 print_ldiv$4:
	; 4 Call 40 printf 16
	mov qword [rbp + 40], print_ldiv$5
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 print_ldiv$5:
	; 5 PostCall 40

 print_ldiv$6:
	; 6 Subtract ld.quot ld.quot integral8$1#
	dec qword [rbp + 24]

 print_ldiv$7:
	; 8 Assign £temporary4803 ld.rem
	mov rax, [rbp + 32]

 print_ldiv$8:
	; 9 Subtract ld.rem ld.rem integral8$1#
	dec qword [rbp + 32]

 print_ldiv$9:
	; 11 SetReturnValue

 print_ldiv$10:
	; 12 Return ld
	mov rbx, rbp
	add rbx, 24
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 print_ldiv$11:
	; 14 FunctionEnd print_ldiv

section .data

@12301string_exit10A#:
	; Initializer String exit1\n
	db "exit1", 10, 0

section .text

 exit_handle1x:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle1x$1:
	; 1 Parameter 48 string string_exit10A#
	mov qword [rbp + 48], @12301string_exit10A#

 exit_handle1x$2:
	; 2 Call 24 printf 0
	mov qword [rbp + 24], exit_handle1x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle1x$3:
	; 3 PostCall 24

 exit_handle1x$4:
	; 5 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle1x$5:
	; 6 FunctionEnd exit_handle1x

section .data

@12304string_exit20A#:
	; Initializer String exit2\n
	db "exit2", 10, 0

section .text

 exit_handle2x:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle2x$1:
	; 1 Parameter 48 string string_exit20A#
	mov qword [rbp + 48], @12304string_exit20A#

 exit_handle2x$2:
	; 2 Call 24 printf 0
	mov qword [rbp + 24], exit_handle2x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle2x$3:
	; 3 PostCall 24

 exit_handle2x$4:
	; 5 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle2x$5:
	; 6 FunctionEnd exit_handle2x

section .data

@12307string_exit30A#:
	; Initializer String exit3\n
	db "exit3", 10, 0

section .text

 exit_handle3x:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 exit_handle3x$1:
	; 1 Parameter 48 string string_exit30A#
	mov qword [rbp + 48], @12307string_exit30A#

 exit_handle3x$2:
	; 2 Call 24 printf 0
	mov qword [rbp + 24], exit_handle3x$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 exit_handle3x$3:
	; 3 PostCall 24

 exit_handle3x$4:
	; 5 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exit_handle3x$5:
	; 6 FunctionEnd exit_handle3x

section .data

@12310string_HelloFFF#:
	; Initializer String HelloFFF
	db "HelloFFF", 0

section .text

 hello:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 hello$1:
	; 1 Parameter 48 string string_HelloFFF#
	mov qword [rbp + 48], @12310string_HelloFFF#

 hello$2:
	; 2 Call 24 printf 0
	mov qword [rbp + 24], hello$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 hello$3:
	; 3 PostCall 24

 hello$4:
	; 5 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 hello$5:
	; 6 FunctionEnd hello

section .data

@12314string_f3A2025u0A#:
	; Initializer String f: %u\n
	db "f: %u", 10, 0

section .text

 qtest:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qtest$1:
	; 1 Parameter 56 string string_f3A2025u0A#
	mov qword [rbp + 56], @12314string_f3A2025u0A#

 qtest$2:
	; 2 IntegralToIntegral £temporary4810 f
	mov rax, [rbp + 24]

 qtest$3:
	; 3 Parameter 64 unsigned int £temporary4810
	mov [rbp + 64], eax

 qtest$4:
	; 4 Call 32 printf 4
	mov qword [rbp + 32], qtest$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 4
	jmp printf

 qtest$5:
	; 5 PostCall 32

 qtest$6:
	; 6 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 qtest$7:
	; 7 Call 32 f 0
	mov qword [rbp + 32], qtest$8
	mov [rbp + 40], rbp
	mov rax, [rbp + 24]
	add rbp, 32
	jmp rax

 qtest$8:
	; 8 PostCall 32

 qtest$9:
	; 10 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 qtest$10:
	; 11 FunctionEnd qtest

section .data

@12318string_hello3A2025u0A#:
	; Initializer String hello: %u\n
	db "hello: %u", 10, 0

section .data

@12319string_Y#:
	; Initializer String Y
	db "Y", 0

section .text

 stdlib_testZ:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$1:
	; 1 Parameter 48 string string_hello3A2025u0A#
	mov qword [rbp + 48], @12318string_hello3A2025u0A#

 stdlib_testZ$2:
	; 2 IntegralToIntegral £temporary4813 hello
	mov rax, hello

 stdlib_testZ$3:
	; 3 Parameter 56 unsigned int £temporary4813
	mov [rbp + 56], eax

 stdlib_testZ$4:
	; 4 Call 24 printf 4
	mov qword [rbp + 24], stdlib_testZ$5
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_testZ$5:
	; 5 PostCall 24

 stdlib_testZ$6:
	; 6 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$7:
	; 7 Parameter 48 function hello
	mov qword [rbp + 48], hello

 stdlib_testZ$8:
	; 8 Call 24 qtest 0
	mov qword [rbp + 24], stdlib_testZ$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp qtest

 stdlib_testZ$9:
	; 9 PostCall 24

 stdlib_testZ$10:
	; 10 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_testZ$11:
	; 11 Parameter 48 string string_Y#
	mov qword [rbp + 48], @12319string_Y#

 stdlib_testZ$12:
	; 12 Call 24 printf 0
	mov qword [rbp + 24], stdlib_testZ$13
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_testZ$13:
	; 13 PostCall 24

 stdlib_testZ$14:
	; 15 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_testZ$15:
	; 16 FunctionEnd stdlib_testZ

section .data

@12326string_atof28221232E4562229203D2025f0A#:
	; Initializer String atof("123.456") = %f\n
	db "atof(", 34, "123.456", 34, ") = %f", 10, 0

section .data

@12327string_1232E456#:
	; Initializer String 123.456
	db "123.456", 0

section .data

@12328string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#:
	; Initializer String strtod("123.456789abc", &p) = (%f, %s)\n
	db "strtod(", 34, "123.456789abc", 34, ", &p) = (%f, %s)", 10, 0

section .data

@12329string_1232E456789abc#:
	; Initializer String 123.456789abc
	db "123.456789abc", 0

section .data

@12330string_0Agetenv2822path2229203D2025s0A#:
	; Initializer String \ngetenv("path") = %s\n
	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0

section .data

@12331string_path#:
	; Initializer String path
	db "path", 0

section .data

@12332string_system2822dir22290A#:
	; Initializer String system("dir")\n
	db "system(", 34, "dir", 34, ")", 10, 0

section .data

@12333string_dir#:
	; Initializer String dir
	db "dir", 0

section .data

@12334string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#:
	; Initializer String \nabs(-3) = %i, abs(3) = %i\n
	db 10, "abs(-3) = %i, abs(3) = %i", 10, 0

section .data

@12337string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#:
	; Initializer String labs(-3l) = %li, labs(3l) = %li\n\n
	db "labs(-3l) = %li, labs(3l) = %li", 10, 10, 0

section .data

@12343string_div_t28102C20329203D202825i2C2025i290A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n
	db "div_t(10, 3) = (%i, %i)", 10, 0

section .data

@12347string_div_t28102C20329203D202825i2C2025i290A0A#:
	; Initializer String div_t(10, 3) = (%i, %i)\n\n
	db "div_t(10, 3) = (%i, %i)", 10, 10, 0

section .data

@12355string_ldiv_t28102C20329203D202825li2C2025li290A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 0

section .data

@12359string_ldiv_t28102C20329203D202825li2C2025li290A0A#:
	; Initializer String ldiv_t(10, 3) = (%li, %li)\n\n
	db "ldiv_t(10, 3) = (%li, %li)", 10, 10, 0

section .data

@12376string_0AA20List2013A20#:
	; Initializer String \nA List 1: 
	db 10, "A List 1: ", 0

section .data

@12379string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12382string_0AB20List2023A20#:
	; Initializer String \nB List 2: 
	db 10, "B List 2: ", 0

section .data

@12390string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12393string_0AC20List2033A20#:
	; Initializer String \nC List 3: 
	db 10, "C List 3: ", 0

section .data

@12401string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12404string_0AB20List2043A20#:
	; Initializer String \nB List 4: 
	db 10, "B List 4: ", 0

section .data

@12412string_25i20#:
	; Initializer String %i 
	db "%i ", 0

section .data

@12415string_0A0ASearch3A0A#:
	; Initializer String \n\nSearch:\n
	db 10, 10, "Search:", 10, 0

section .data

@12430string_20202825i2C2025i290A#:
	; Initializer String   (%i, %i)\n
	db "  (%i, %i)", 10, 0

section .data

@12431string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@12380integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12391integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12402integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12413integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .data

@12427integral4$4#:
	; Initializer SignedInt 4
	dd 4

section .text

 stdlib_test:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$1:
	; 1 Parameter 56 string string_atof28221232E4562229203D2025f0A#
	mov qword [rbp + 56], @12326string_atof28221232E4562229203D2025f0A#

 stdlib_test$2:
	; 2 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$3:
	; 3 Parameter 88 string string_1232E456#
	mov qword [rbp + 88], @12327string_1232E456#

 stdlib_test$4:
	; 4 Call 64 atof 0
	mov qword [rbp + 64], stdlib_test$5
	mov [rbp + 72], rbp
	add rbp, 64
	jmp atof

 stdlib_test$5:
	; 5 PostCall 64

 stdlib_test$6:
	; 6 GetReturnValue £temporary4817

 stdlib_test$7:
	; 7 Parameter 64 double £temporary4817
	fstp qword [rbp + 64]

 stdlib_test$8:
	; 8 Call 32 printf 8
	mov qword [rbp + 32], stdlib_test$9
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$9:
	; 9 PostCall 32

 stdlib_test$10:
	; 10 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$11:
	; 11 Parameter 56 string string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#
	mov qword [rbp + 56], @12328string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#

 stdlib_test$12:
	; 12 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$13:
	; 13 Parameter 88 string string_1232E456789abc#
	mov qword [rbp + 88], @12329string_1232E456789abc#

 stdlib_test$14:
	; 14 Address £temporary4819 p
	mov rsi, rbp
	add rsi, 24

 stdlib_test$15:
	; 15 Parameter 96 pointer £temporary4819
	mov [rbp + 96], rsi

 stdlib_test$16:
	; 16 Call 64 strtod 0
	mov qword [rbp + 64], stdlib_test$17
	mov [rbp + 72], rbp
	add rbp, 64
	jmp strtod

 stdlib_test$17:
	; 17 PostCall 64

 stdlib_test$18:
	; 18 GetReturnValue £temporary4820

 stdlib_test$19:
	; 19 Parameter 64 double £temporary4820
	fstp qword [rbp + 64]

 stdlib_test$20:
	; 20 Parameter 72 pointer p
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$21:
	; 21 Call 32 printf 16
	mov qword [rbp + 32], stdlib_test$22
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$22:
	; 22 PostCall 32

 stdlib_test$23:
	; 23 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$24:
	; 24 Parameter 48 string string_0Agetenv2822path2229203D2025s0A#
	mov qword [rbp + 48], @12330string_0Agetenv2822path2229203D2025s0A#

 stdlib_test$25:
	; 25 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$26:
	; 26 Parameter 80 string string_path#
	mov qword [rbp + 80], @12331string_path#

 stdlib_test$27:
	; 27 Call 56 getenv 0
	mov qword [rbp + 56], stdlib_test$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp getenv

 stdlib_test$28:
	; 28 PostCall 56

 stdlib_test$29:
	; 29 GetReturnValue £temporary4822

 stdlib_test$30:
	; 30 Parameter 56 pointer £temporary4822
	mov [rbp + 56], rbx

 stdlib_test$31:
	; 31 Call 24 printf 8
	mov qword [rbp + 24], stdlib_test$32
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$32:
	; 32 PostCall 24

 stdlib_test$33:
	; 33 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$34:
	; 34 Parameter 48 string string_system2822dir22290A#
	mov qword [rbp + 48], @12332string_system2822dir22290A#

 stdlib_test$35:
	; 35 Call 24 printf 0
	mov qword [rbp + 24], stdlib_test$36
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 stdlib_test$36:
	; 36 PostCall 24

 stdlib_test$37:
	; 37 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$38:
	; 38 Parameter 48 string string_dir#
	mov qword [rbp + 48], @12333string_dir#

 stdlib_test$39:
	; 39 Call 24 system 0
	mov qword [rbp + 24], stdlib_test$40
	mov [rbp + 32], rbp
	add rbp, 24
	jmp system

 stdlib_test$40:
	; 40 PostCall 24

 stdlib_test$41:
	; 41 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$42:
	; 42 Parameter 48 string string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#
	mov qword [rbp + 48], @12334string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#

 stdlib_test$43:
	; 43 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$44:
	; 44 Parameter 80 signed int integral4$minus3#
	mov dword [rbp + 80], -3

 stdlib_test$45:
	; 45 Call 56 @abs 0
	mov qword [rbp + 56], stdlib_test$46
	mov [rbp + 64], rbp
	add rbp, 56
	jmp @abs

 stdlib_test$46:
	; 46 PostCall 56

 stdlib_test$47:
	; 47 GetReturnValue £temporary4826

 stdlib_test$48:
	; 48 Parameter 56 signed int £temporary4826
	mov [rbp + 56], ebx

 stdlib_test$49:
	; 49 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$50:
	; 50 Parameter 84 signed int integral4$3#
	mov dword [rbp + 84], 3

 stdlib_test$51:
	; 51 Call 60 @abs 0
	mov qword [rbp + 60], stdlib_test$52
	mov [rbp + 68], rbp
	add rbp, 60
	jmp @abs

 stdlib_test$52:
	; 52 PostCall 60

 stdlib_test$53:
	; 53 GetReturnValue £temporary4827

 stdlib_test$54:
	; 54 Parameter 60 signed int £temporary4827
	mov [rbp + 60], ebx

 stdlib_test$55:
	; 55 Call 24 printf 8
	mov qword [rbp + 24], stdlib_test$56
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$56:
	; 56 PostCall 24

 stdlib_test$57:
	; 57 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$58:
	; 58 Parameter 48 string string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#
	mov qword [rbp + 48], @12337string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#

 stdlib_test$59:
	; 59 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$60:
	; 60 Parameter 80 signed long int integral8$minus3#
	mov qword [rbp + 80], -3

 stdlib_test$61:
	; 61 Call 56 labs 0
	mov qword [rbp + 56], stdlib_test$62
	mov [rbp + 64], rbp
	add rbp, 56
	jmp labs

 stdlib_test$62:
	; 62 PostCall 56

 stdlib_test$63:
	; 63 GetReturnValue £temporary4829

 stdlib_test$64:
	; 64 Parameter 56 signed long int £temporary4829
	mov [rbp + 56], rbx

 stdlib_test$65:
	; 65 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$66:
	; 66 Parameter 88 signed long int integral8$3#
	mov qword [rbp + 88], 3

 stdlib_test$67:
	; 67 Call 64 labs 0
	mov qword [rbp + 64], stdlib_test$68
	mov [rbp + 72], rbp
	add rbp, 64
	jmp labs

 stdlib_test$68:
	; 68 PostCall 64

 stdlib_test$69:
	; 69 GetReturnValue £temporary4830

 stdlib_test$70:
	; 70 Parameter 64 signed long int £temporary4830
	mov [rbp + 64], rbx

 stdlib_test$71:
	; 71 Call 24 printf 16
	mov qword [rbp + 24], stdlib_test$72
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$72:
	; 72 PostCall 24

 stdlib_test$73:
	; 73 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$74:
	; 74 Parameter 48 signed int integral4$10#
	mov dword [rbp + 48], 10

 stdlib_test$75:
	; 75 Parameter 52 signed int integral4$3#
	mov dword [rbp + 52], 3

 stdlib_test$76:
	; 76 Call 24 div 0
	mov qword [rbp + 24], stdlib_test$77
	mov [rbp + 32], rbp
	add rbp, 24
	jmp div

 stdlib_test$77:
	; 77 PostCall 24

 stdlib_test$78:
	; 78 GetReturnValue £temporary4832

 stdlib_test$79:
	; 79 AssignInitSize i £temporary4832
	mov rsi, rbp
	add rsi, 24
	mov al, 8

 stdlib_test$80:
	; 80 Assign i £temporary4832
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$80

 stdlib_test$81:
	; 81 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$82:
	; 82 Parameter 56 string string_div_t28102C20329203D202825i2C2025i290A#
	mov qword [rbp + 56], @12343string_div_t28102C20329203D202825i2C2025i290A#

 stdlib_test$83:
	; 83 Parameter 64 signed int i.quot
	mov eax, [rbp + 24]
	mov [rbp + 64], eax

 stdlib_test$84:
	; 84 Parameter 68 signed int i.rem
	mov eax, [rbp + 28]
	mov [rbp + 68], eax

 stdlib_test$85:
	; 85 Call 32 printf 8
	mov qword [rbp + 32], stdlib_test$86
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$86:
	; 86 PostCall 32

 stdlib_test$87:
	; 87 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$88:
	; 88 ParameterInitSize 56 struct i
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 56
	mov al, 8

 stdlib_test$89:
	; 89 Parameter 56 struct i
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$89

 stdlib_test$90:
	; 90 Call 32 print_div 0
	mov qword [rbp + 32], stdlib_test$91
	mov [rbp + 40], rbp
	add rbp, 32
	jmp print_div

 stdlib_test$91:
	; 91 PostCall 32

 stdlib_test$92:
	; 92 GetReturnValue £temporary4835

 stdlib_test$93:
	; 93 AssignInitSize j £temporary4835
	mov rsi, rbp
	add rsi, 32
	mov al, 8

 stdlib_test$94:
	; 94 Assign j £temporary4835
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$94

 stdlib_test$95:
	; 95 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$96:
	; 96 Parameter 64 string string_div_t28102C20329203D202825i2C2025i290A0A#
	mov qword [rbp + 64], @12347string_div_t28102C20329203D202825i2C2025i290A0A#

 stdlib_test$97:
	; 97 Parameter 72 signed int j.quot
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 stdlib_test$98:
	; 98 Parameter 76 signed int j.rem
	mov eax, [rbp + 36]
	mov [rbp + 76], eax

 stdlib_test$99:
	; 99 Call 40 printf 8
	mov qword [rbp + 40], stdlib_test$100
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$100:
	; 100 PostCall 40

 stdlib_test$101:
	; 101 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$102:
	; 102 Parameter 48 signed long int integral8$10#
	mov qword [rbp + 48], 10

 stdlib_test$103:
	; 103 Parameter 56 signed long int integral8$3#
	mov qword [rbp + 56], 3

 stdlib_test$104:
	; 104 Call 24 ldiv 0
	mov qword [rbp + 24], stdlib_test$105
	mov [rbp + 32], rbp
	add rbp, 24
	jmp ldiv

 stdlib_test$105:
	; 105 PostCall 24

 stdlib_test$106:
	; 106 GetReturnValue £temporary4838

 stdlib_test$107:
	; 107 AssignInitSize li £temporary4838
	mov rsi, rbp
	add rsi, 24
	mov al, 16

 stdlib_test$108:
	; 108 Assign li £temporary4838
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$108

 stdlib_test$109:
	; 109 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$110:
	; 110 Parameter 64 string string_ldiv_t28102C20329203D202825li2C2025li290A#
	mov qword [rbp + 64], @12355string_ldiv_t28102C20329203D202825li2C2025li290A#

 stdlib_test$111:
	; 111 Parameter 72 signed long int li.quot
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 stdlib_test$112:
	; 112 Parameter 80 signed long int li.rem
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 stdlib_test$113:
	; 113 Call 40 printf 16
	mov qword [rbp + 40], stdlib_test$114
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$114:
	; 114 PostCall 40

 stdlib_test$115:
	; 115 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$116:
	; 116 ParameterInitSize 64 struct li
	mov rsi, rbp
	add rsi, 24
	mov rdi, rbp
	add rdi, 64
	mov al, 16

 stdlib_test$117:
	; 117 Parameter 64 struct li
	mov ah, [rsi]
	mov [rdi], ah
	inc rsi
	inc rdi
	dec al
	cmp al, 0
	jne stdlib_test$117

 stdlib_test$118:
	; 118 Call 40 print_ldiv 0
	mov qword [rbp + 40], stdlib_test$119
	mov [rbp + 48], rbp
	add rbp, 40
	jmp print_ldiv

 stdlib_test$119:
	; 119 PostCall 40

 stdlib_test$120:
	; 120 GetReturnValue £temporary4841

 stdlib_test$121:
	; 121 AssignInitSize lj £temporary4841
	mov rsi, rbp
	add rsi, 40
	mov al, 16

 stdlib_test$122:
	; 122 Assign lj £temporary4841
	mov ah, [rbx]
	mov [rsi], ah
	inc rbx
	inc rsi
	dec al
	cmp al, 0
	jne stdlib_test$122

 stdlib_test$123:
	; 123 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$124:
	; 124 Parameter 80 string string_ldiv_t28102C20329203D202825li2C2025li290A0A#
	mov qword [rbp + 80], @12359string_ldiv_t28102C20329203D202825li2C2025li290A0A#

 stdlib_test$125:
	; 125 Parameter 88 signed long int lj.quot
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 stdlib_test$126:
	; 126 Parameter 96 signed long int lj.rem
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 stdlib_test$127:
	; 127 Call 56 printf 16
	mov qword [rbp + 56], stdlib_test$128
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp printf

 stdlib_test$128:
	; 128 PostCall 56

 stdlib_test$129:
	; 129 Assign list[0] integral4$3#
	mov dword [rbp + 24], 3

 stdlib_test$130:
	; 130 Assign list[1] integral4$4#
	mov dword [rbp + 28], 4

 stdlib_test$131:
	; 131 Assign list[2] integral4$2#
	mov dword [rbp + 32], 2

 stdlib_test$132:
	; 132 Assign list[3] integral4$1#
	mov dword [rbp + 36], 1

 stdlib_test$133:
	; 133 Assign size integral4$4#
	mov dword [rbp + 40], 4

 stdlib_test$134:
	; 134 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$135:
	; 135 Parameter 72 string string_0AA20List2013A20#
	mov qword [rbp + 72], @12376string_0AA20List2013A20#

 stdlib_test$136:
	; 136 Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$137
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$137:
	; 137 PostCall 48

 stdlib_test$138:
	; 138 Assign index integral4$0#
	mov dword [rbp + 44], 0

 stdlib_test$139:
	; 140 GreaterThanEqual 151 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$151

 stdlib_test$140:
	; 142 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$141:
	; 143 Parameter 72 string string_25i20#
	mov qword [rbp + 72], @12379string_25i20#

 stdlib_test$142:
	; 144 Multiply £temporary4853 index integral4$4#
	mov eax, [rbp + 44]
	xor edx, edx
	imul dword [@12380integral4$4#]

 stdlib_test$143:
	; 145 IntegralToIntegral £temporary4854 £temporary4853
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$144:
	; 146 Add £temporary4855 list £temporary4854
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$145:
	; 147 Dereference £temporary4856 £temporary4855 0

 stdlib_test$146:
	; 148 Parameter 80 signed int £temporary4856
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$147:
	; 149 Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$148
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$148:
	; 150 PostCall 48

 stdlib_test$149:
	; 152 Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$150:
	; 154 Jump 139
	jmp stdlib_test$139

 stdlib_test$151:
	; 155 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$152:
	; 156 Parameter 72 string string_0AB20List2023A20#
	mov qword [rbp + 72], @12382string_0AB20List2023A20#

 stdlib_test$153:
	; 157 Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$154
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$154:
	; 158 PostCall 48

 stdlib_test$155:
	; 159 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$156:
	; 160 Parameter 72 array list
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$157:
	; 161 Parameter 80 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$158:
	; 162 Parameter 84 signed int integral4$4#
	mov dword [rbp + 84], 4

 stdlib_test$159:
	; 163 Parameter 88 function compare
	mov qword [rbp + 88], compare

 stdlib_test$160:
	; 164 Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$161
	mov [rbp + 56], rbp
	add rbp, 48
	jmp qsort

 stdlib_test$161:
	; 165 PostCall 48

 stdlib_test$162:
	; 166 Assign index integral4$0#
	mov dword [rbp + 44], 0

 stdlib_test$163:
	; 168 GreaterThanEqual 175 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$175

 stdlib_test$164:
	; 170 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$165:
	; 171 Parameter 72 string string_25i20#
	mov qword [rbp + 72], @12390string_25i20#

 stdlib_test$166:
	; 172 Multiply £temporary4864 index integral4$4#
	mov eax, [rbp + 44]
	xor edx, edx
	imul dword [@12391integral4$4#]

 stdlib_test$167:
	; 173 IntegralToIntegral £temporary4865 £temporary4864
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$168:
	; 174 Add £temporary4866 list £temporary4865
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$169:
	; 175 Dereference £temporary4867 £temporary4866 0

 stdlib_test$170:
	; 176 Parameter 80 signed int £temporary4867
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$171:
	; 177 Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$172
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$172:
	; 178 PostCall 48

 stdlib_test$173:
	; 180 Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$174:
	; 182 Jump 163
	jmp stdlib_test$163

 stdlib_test$175:
	; 183 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$176:
	; 184 Parameter 72 string string_0AC20List2033A20#
	mov qword [rbp + 72], @12393string_0AC20List2033A20#

 stdlib_test$177:
	; 185 Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$178
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$178:
	; 186 PostCall 48

 stdlib_test$179:
	; 187 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$180:
	; 188 Parameter 72 array list
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$181:
	; 189 Parameter 80 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$182:
	; 190 Parameter 84 signed int integral4$4#
	mov dword [rbp + 84], 4

 stdlib_test$183:
	; 191 Parameter 88 function reverse_compare
	mov qword [rbp + 88], reverse_compare

 stdlib_test$184:
	; 192 Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$185
	mov [rbp + 56], rbp
	add rbp, 48
	jmp qsort

 stdlib_test$185:
	; 193 PostCall 48

 stdlib_test$186:
	; 194 Assign index integral4$0#
	mov dword [rbp + 44], 0

 stdlib_test$187:
	; 196 GreaterThanEqual 199 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$199

 stdlib_test$188:
	; 198 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$189:
	; 199 Parameter 72 string string_25i20#
	mov qword [rbp + 72], @12401string_25i20#

 stdlib_test$190:
	; 200 Multiply £temporary4875 index integral4$4#
	mov eax, [rbp + 44]
	xor edx, edx
	imul dword [@12402integral4$4#]

 stdlib_test$191:
	; 201 IntegralToIntegral £temporary4876 £temporary4875
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$192:
	; 202 Add £temporary4877 list £temporary4876
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$193:
	; 203 Dereference £temporary4878 £temporary4877 0

 stdlib_test$194:
	; 204 Parameter 80 signed int £temporary4878
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$195:
	; 205 Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$196
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$196:
	; 206 PostCall 48

 stdlib_test$197:
	; 208 Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$198:
	; 210 Jump 187
	jmp stdlib_test$187

 stdlib_test$199:
	; 211 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$200:
	; 212 Parameter 72 string string_0AB20List2043A20#
	mov qword [rbp + 72], @12404string_0AB20List2043A20#

 stdlib_test$201:
	; 213 Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$202
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$202:
	; 214 PostCall 48

 stdlib_test$203:
	; 215 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$204:
	; 216 Parameter 72 array list
	mov [rbp + 72], rbp
	add qword [rbp + 72], 24

 stdlib_test$205:
	; 217 Parameter 80 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 stdlib_test$206:
	; 218 Parameter 84 signed int integral4$4#
	mov dword [rbp + 84], 4

 stdlib_test$207:
	; 219 Parameter 88 function compare
	mov qword [rbp + 88], compare

 stdlib_test$208:
	; 220 Call 48 qsort 0
	mov qword [rbp + 48], stdlib_test$209
	mov [rbp + 56], rbp
	add rbp, 48
	jmp qsort

 stdlib_test$209:
	; 221 PostCall 48

 stdlib_test$210:
	; 222 Assign index integral4$0#
	mov dword [rbp + 44], 0

 stdlib_test$211:
	; 224 GreaterThanEqual 223 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge stdlib_test$223

 stdlib_test$212:
	; 226 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$213:
	; 227 Parameter 72 string string_25i20#
	mov qword [rbp + 72], @12412string_25i20#

 stdlib_test$214:
	; 228 Multiply £temporary4886 index integral4$4#
	mov eax, [rbp + 44]
	xor edx, edx
	imul dword [@12413integral4$4#]

 stdlib_test$215:
	; 229 IntegralToIntegral £temporary4887 £temporary4886
	mov rbx, 4294967295
	and rax, rbx

 stdlib_test$216:
	; 230 Add £temporary4888 list £temporary4887
	mov rsi, rbp
	add rsi, 24
	add rsi, rax

 stdlib_test$217:
	; 231 Dereference £temporary4889 £temporary4888 0

 stdlib_test$218:
	; 232 Parameter 80 signed int £temporary4889
	mov eax, [rsi]
	mov [rbp + 80], eax

 stdlib_test$219:
	; 233 Call 48 printf 4
	mov qword [rbp + 48], stdlib_test$220
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 stdlib_test$220:
	; 234 PostCall 48

 stdlib_test$221:
	; 236 Add index index integral4$1#
	inc dword [rbp + 44]

 stdlib_test$222:
	; 238 Jump 211
	jmp stdlib_test$211

 stdlib_test$223:
	; 239 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$224:
	; 240 Parameter 72 string string_0A0ASearch3A0A#
	mov qword [rbp + 72], @12415string_0A0ASearch3A0A#

 stdlib_test$225:
	; 241 Call 48 printf 0
	mov qword [rbp + 48], stdlib_test$226
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 stdlib_test$226:
	; 242 PostCall 48

 stdlib_test$227:
	; 243 Assign key integral4$0#
	mov dword [rbp + 44], 0

 stdlib_test$228:
	; 245 GreaterThanEqual 256 key integral4$6#
	cmp dword [rbp + 44], 6
	jge stdlib_test$256

 stdlib_test$229:
	; 247 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$230:
	; 248 Address £temporary4894 key
	mov rsi, rbp
	add rsi, 44

 stdlib_test$231:
	; 249 Parameter 72 pointer £temporary4894
	mov [rbp + 72], rsi

 stdlib_test$232:
	; 250 Parameter 80 array list
	mov [rbp + 80], rbp
	add qword [rbp + 80], 24

 stdlib_test$233:
	; 251 Parameter 88 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 stdlib_test$234:
	; 252 Parameter 92 signed int integral4$4#
	mov dword [rbp + 92], 4

 stdlib_test$235:
	; 253 Parameter 96 function compare
	mov qword [rbp + 96], compare

 stdlib_test$236:
	; 254 Call 48 bsearch 0
	mov qword [rbp + 48], stdlib_test$237
	mov [rbp + 56], rbp
	add rbp, 48
	jmp bsearch

 stdlib_test$237:
	; 255 PostCall 48

 stdlib_test$238:
	; 256 GetReturnValue £temporary4897

 stdlib_test$239:
	; 257 IntegralToIntegral £temporary4898 £temporary4897

 stdlib_test$240:
	; 258 Assign p £temporary4898
	mov [rbp + 48], rbx

 stdlib_test$241:
	; 259 Equal 246 p integral8$0#
	cmp qword [rbp + 48], 0
	je stdlib_test$246

 stdlib_test$242:
	; 262 Subtract £temporary4900 p list
	mov rax, [rbp + 48]
	sub rax, rbp
	sub rax, 24

 stdlib_test$243:
	; 263 IntegralToIntegral £temporary4901 £temporary4900

 stdlib_test$244:
	; 264 Divide £temporary4903 £temporary4901 integral4$4#
	xor edx, edx
	idiv dword [@12427integral4$4#]

 stdlib_test$245:
	; 266 Jump 247
	jmp stdlib_test$247

 stdlib_test$246:
	; 268 Assign £temporary4903 integral4$minus1#
	mov eax, -1

 stdlib_test$247:
	; 270 Assign index £temporary4903
	mov [rbp + 56], eax

 stdlib_test$248:
	; 271 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$249:
	; 272 Parameter 84 string string_20202825i2C2025i290A#
	mov qword [rbp + 84], @12430string_20202825i2C2025i290A#

 stdlib_test$250:
	; 273 Parameter 92 signed int key
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 stdlib_test$251:
	; 274 Parameter 96 signed int index
	mov eax, [rbp + 56]
	mov [rbp + 96], eax

 stdlib_test$252:
	; 275 Call 60 printf 8
	mov qword [rbp + 60], stdlib_test$253
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdlib_test$253:
	; 276 PostCall 60

 stdlib_test$254:
	; 278 Add key key integral4$1#
	inc dword [rbp + 44]

 stdlib_test$255:
	; 280 Jump 228
	jmp stdlib_test$228

 stdlib_test$256:
	; 281 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdlib_test$257:
	; 282 Parameter 68 string string_0A#
	mov qword [rbp + 68], @12431string_0A#

 stdlib_test$258:
	; 283 Call 44 printf 0
	mov qword [rbp + 44], stdlib_test$259
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	jmp printf

 stdlib_test$259:
	; 284 PostCall 44

 stdlib_test$260:
	; 286 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdlib_test$261:
	; 287 FunctionEnd stdlib_test
