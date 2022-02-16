	global assert_test
	global assert_testX
	global assert_test2

	extern stderr
	extern fprintf
	extern abort
	extern printf
	extern scanf
	extern $StackTop


section .data

@8594string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@8595string_n203D3D201#:
	; Initializer String n == 1
	db "n == 1", 0

section .data

@8596string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\AssertTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\AssertTest.c", 0

section .text

 assert_test:
	; 0 Assign n integral4$1#
	mov dword [rbp + 24], 1

 assert_test$1:
	; 1 Equal 13 n integral4$1#
	cmp dword [rbp + 24], 1
	je assert_test$13

 assert_test$2:
	; 4 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$3:
	; 5 Parameter 52 pointer stderr
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_test$4:
	; 6 Parameter 60 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 60], @8594string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_test$5:
	; 7 Parameter 68 string string_n203D3D201#
	mov qword [rbp + 68], @8595string_n203D3D201#

 assert_test$6:
	; 8 Parameter 76 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#
	mov qword [rbp + 76], @8596string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

 assert_test$7:
	; 9 Parameter 84 signed int integral4$8#
	mov dword [rbp + 84], 8

 assert_test$8:
	; 10 Call 28 fprintf 20
	mov qword [rbp + 28], assert_test$9
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_test$9:
	; 11 PostCall 28

 assert_test$10:
	; 12 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test$11:
	; 13 Call 28 abort 0
	mov qword [rbp + 28], assert_test$12
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_test$12:
	; 14 PostCall 28

 assert_test$13:
	; 20 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_test$14:
	; 21 FunctionEnd assert_test

section .data

@8606string_Please20write20a20number2028not20620or207293A20#:
	; Initializer String Please write a number (not 6 or 7): 
	db "Please write a number (not 6 or 7): ", 0

section .data

@8607string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@8609string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@8610string_n20213D206#:
	; Initializer String n != 6
	db "n != 6", 0

section .data

@8611string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\AssertTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\AssertTest.c", 0

section .text

 assert_testX:
	; 0 Assign n integral4$0#
	mov dword [rbp + 24], 0

 assert_testX$1:
	; 1 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$2:
	; 2 Parameter 52 string string_Please20write20a20number2028not20620or207293A20#
	mov qword [rbp + 52], @8606string_Please20write20a20number2028not20620or207293A20#

 assert_testX$3:
	; 3 Call 28 printf 0
	mov qword [rbp + 28], assert_testX$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

 assert_testX$4:
	; 4 PostCall 28

 assert_testX$5:
	; 5 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$6:
	; 6 Parameter 52 string string_25i#
	mov qword [rbp + 52], @8607string_25i#

 assert_testX$7:
	; 7 Address £temporary3792 n
	mov rsi, rbp
	add rsi, 24

 assert_testX$8:
	; 8 Parameter 60 pointer £temporary3792
	mov [rbp + 60], rsi

 assert_testX$9:
	; 9 Call 28 scanf 8
	mov qword [rbp + 28], assert_testX$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 assert_testX$10:
	; 10 PostCall 28

 assert_testX$11:
	; 11 NotEqual 23 n integral4$6#
	cmp dword [rbp + 24], 6
	jne assert_testX$23

 assert_testX$12:
	; 14 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$13:
	; 15 Parameter 52 pointer stderr
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_testX$14:
	; 16 Parameter 60 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 60], @8609string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_testX$15:
	; 17 Parameter 68 string string_n20213D206#
	mov qword [rbp + 68], @8610string_n20213D206#

 assert_testX$16:
	; 18 Parameter 76 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#
	mov qword [rbp + 76], @8611string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

 assert_testX$17:
	; 19 Parameter 84 signed int integral4$16#
	mov dword [rbp + 84], 16

 assert_testX$18:
	; 20 Call 28 fprintf 20
	mov qword [rbp + 28], assert_testX$19
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_testX$19:
	; 21 PostCall 28

 assert_testX$20:
	; 22 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$21:
	; 23 Call 28 abort 0
	mov qword [rbp + 28], assert_testX$22
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_testX$22:
	; 24 PostCall 28

 assert_testX$23:
	; 29 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_testX$24:
	; 30 Parameter 52 signed int n
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 assert_testX$25:
	; 31 Call 28 assert_test2 0
	mov qword [rbp + 28], assert_testX$26
	mov [rbp + 36], rbp
	add rbp, 28
	jmp assert_test2

 assert_testX$26:
	; 32 PostCall 28

 assert_testX$27:
	; 34 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_testX$28:
	; 35 FunctionEnd assert_testX

section .data

@8624string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@8625string_n20213D207#:
	; Initializer String n != 7
	db "n != 7", 0

section .data

@8626string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\AssertTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\AssertTest.c", 0

section .text

 assert_test2:
	; 0 NotEqual 12 n integral4$7#
	cmp dword [rbp + 24], 7
	jne assert_test2$12

 assert_test2$1:
	; 3 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test2$2:
	; 4 Parameter 52 pointer stderr
	mov rax, [stderr]
	mov [rbp + 52], rax

 assert_test2$3:
	; 5 Parameter 60 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 60], @8624string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 assert_test2$4:
	; 6 Parameter 68 string string_n20213D207#
	mov qword [rbp + 68], @8625string_n20213D207#

 assert_test2$5:
	; 7 Parameter 76 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#
	mov qword [rbp + 76], @8626string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CAssertTest2Ec#

 assert_test2$6:
	; 8 Parameter 84 signed int integral4$21#
	mov dword [rbp + 84], 21

 assert_test2$7:
	; 9 Call 28 fprintf 20
	mov qword [rbp + 28], assert_test2$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 assert_test2$8:
	; 10 PostCall 28

 assert_test2$9:
	; 11 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 assert_test2$10:
	; 12 Call 28 abort 0
	mov qword [rbp + 28], assert_test2$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

 assert_test2$11:
	; 13 PostCall 28

 assert_test2$12:
	; 19 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 assert_test2$13:
	; 20 FunctionEnd assert_test2
