	global buffer
	global inverse
	global divide
	global test
	global setjmp_test

	extern printf
	extern scanf
	extern setjmp
	extern longjmp
	extern $StackTop


section .data

buffer:
	; InitializerZero 24
	times 24 db 0

section .data

@9215string_Please20input20a20value3A20#:
	; Initializer String Please input a value: 
	db "Please input a value: ", 0

section .data

@9216string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@9219string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

@9220string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 @9212$main:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9212$main$1:
	; 1 Parameter 64 pointer string_Please20input20a20value3A20#
	mov qword [rbp + 64], @9215string_Please20input20a20value3A20#

 @9212$main$2:
	; 2 Call 40 printf 0
	mov qword [rbp + 40], @9212$main$3
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 @9212$main$3:
	; 3 PostCall 40

 @9212$main$4:
	; 4 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9212$main$5:
	; 5 Parameter 64 pointer string_25lf#
	mov qword [rbp + 64], @9216string_25lf#

 @9212$main$6:
	; 8 Address £temporary3885 x
	mov rsi, rbp
	add rsi, 32

 @9212$main$7:
	; 9 Parameter 72 pointer £temporary3885
	mov [rbp + 72], rsi

 @9212$main$8:
	; 10 Call 40 scanf 8
	mov qword [rbp + 40], @9212$main$9
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 @9212$main$9:
	; 11 PostCall 40

 @9212$main$10:
	; 12 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9212$main$11:
	; 13 Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 @9212$main$12:
	; 14 Call 40 setjmp 0
	mov qword [rbp + 40], @9212$main$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 @9212$main$13:
	; 15 PostCall 40

 @9212$main$14:
	; 16 GetReturnValue £temporary3887

 @9212$main$15:
	; 17 IntegralToIntegral £temporary3888 £temporary3887
	mov rax, 4294967295
	and rbx, rax

 @9212$main$16:
	; 18 Assign message £temporary3888
	mov [rbp + 24], rbx

 @9212$main$17:
	; 19 NotEqual 32 message integral8$0#
	cmp qword [rbp + 24], 0
	jne @9212$main$32

 @9212$main$18:
	; 22 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9212$main$19:
	; 23 Parameter 64 pointer string_12E0202F2025f203D2025f0A#
	mov qword [rbp + 64], @9219string_12E0202F2025f203D2025f0A#

 @9212$main$20:
	; 24 PushFloat x
	fld qword [rbp + 32]

 @9212$main$21:
	; 25 Parameter 72 double x
	fstp qword [rbp + 72]

 @9212$main$22:
	; 26 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9212$main$23:
	; 27 PushFloat x
	fld qword [rbp + 32]

 @9212$main$24:
	; 28 Parameter 104 double x
	fstp qword [rbp + 104]

 @9212$main$25:
	; 29 Call 80 inverse 0
	mov qword [rbp + 80], @9212$main$26
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 @9212$main$26:
	; 30 PostCall 80

 @9212$main$27:
	; 31 GetReturnValue £temporary3890

 @9212$main$28:
	; 32 Parameter 80 double £temporary3890
	fstp qword [rbp + 80]

 @9212$main$29:
	; 33 Call 40 printf 16
	mov qword [rbp + 40], @9212$main$30
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 @9212$main$30:
	; 34 PostCall 40

 @9212$main$31:
	; 35 Jump 37
	jmp @9212$main$37

 @9212$main$32:
	; 37 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9212$main$33:
	; 38 Parameter 64 pointer string_25s0A#
	mov qword [rbp + 64], @9220string_25s0A#

 @9212$main$34:
	; 39 Parameter 72 pointer message
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 @9212$main$35:
	; 40 Call 40 printf 8
	mov qword [rbp + 40], @9212$main$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 @9212$main$36:
	; 41 PostCall 40

 @9212$main$37:
	; 44 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @9212$main$38:
	; 45 FunctionEnd main

section .text

 inverse:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 inverse$1:
	; 1 PushFloat floating8$1#
	fld1

 inverse$2:
	; 2 Parameter 56 double floating8$1#
	fstp qword [rbp + 56]

 inverse$3:
	; 3 PushFloat x
	fld qword [rbp + 24]

 inverse$4:
	; 4 Parameter 64 double x
	fstp qword [rbp + 64]

 inverse$5:
	; 5 Call 32 divide 0
	mov qword [rbp + 32], inverse$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp divide

 inverse$6:
	; 6 PostCall 32

 inverse$7:
	; 7 GetReturnValue £temporary3899

 inverse$8:
	; 8 SetReturnValue

 inverse$9:
	; 9 Return £temporary3899
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 inverse$10:
	; 11 FunctionEnd inverse

section .data

@9235string_Division20by20Zero2E#:
	; Initializer String Division by Zero.
	db "Division by Zero.", 0

section .text

 divide:
	; 0 PushFloat y
	fld qword [rbp + 32]

 divide$1:
	; 1 PushFloat floating8$0#
	fldz

 divide$2:
	; 2 Equal 8 y floating8$0#
	fcompp
	fstsw ax
	sahf
	je divide$8

 divide$3:
	; 5 PushFloat x
	fld qword [rbp + 24]

 divide$4:
	; 6 PushFloat y
	fld qword [rbp + 32]

 divide$5:
	; 7 Divide £temporary3903 x y
	fdiv

 divide$6:
	; 8 SetReturnValue

 divide$7:
	; 9 Return £temporary3903
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$8:
	; 12 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 divide$9:
	; 13 Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 divide$10:
	; 14 IntegralToIntegral £temporary3904 string_Division20by20Zero2E#
	mov rax, @9235string_Division20by20Zero2E#

 divide$11:
	; 15 Parameter 72 signed int £temporary3904
	mov [rbp + 72], eax

 divide$12:
	; 16 Call 40 longjmp 0
	mov qword [rbp + 40], divide$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp longjmp

 divide$13:
	; 17 PostCall 40

 divide$14:
	; 18 PushFloat floating8$0#
	fldz

 divide$15:
	; 19 SetReturnValue

 divide$16:
	; 20 Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$17:
	; 23 FunctionEnd divide

section .data

@9244string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

@9245string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 test:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$1:
	; 1 Parameter 64 pointer buffer
	mov qword [rbp + 64], buffer

 test$2:
	; 2 Call 40 setjmp 0
	mov qword [rbp + 40], test$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 test$3:
	; 3 PostCall 40

 test$4:
	; 4 GetReturnValue £temporary3908

 test$5:
	; 5 IntegralToIntegral £temporary3909 £temporary3908
	mov rax, 4294967295
	and rbx, rax

 test$6:
	; 6 Assign message £temporary3909
	mov [rbp + 32], rbx

 test$7:
	; 7 NotEqual 22 message integral8$0#
	cmp qword [rbp + 32], 0
	jne test$22

 test$8:
	; 10 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$9:
	; 11 Parameter 64 pointer string_12E0202F2025f203D2025f0A#
	mov qword [rbp + 64], @9244string_12E0202F2025f203D2025f0A#

 test$10:
	; 12 PushFloat x
	fld qword [rbp + 24]

 test$11:
	; 13 Parameter 72 double x
	fstp qword [rbp + 72]

 test$12:
	; 14 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$13:
	; 15 PushFloat x
	fld qword [rbp + 24]

 test$14:
	; 16 Parameter 104 double x
	fstp qword [rbp + 104]

 test$15:
	; 17 Call 80 inverse 0
	mov qword [rbp + 80], test$16
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 test$16:
	; 18 PostCall 80

 test$17:
	; 19 GetReturnValue £temporary3911

 test$18:
	; 20 Parameter 80 double £temporary3911
	fstp qword [rbp + 80]

 test$19:
	; 21 Call 40 printf 16
	mov qword [rbp + 40], test$20
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 test$20:
	; 22 PostCall 40

 test$21:
	; 23 Jump 27
	jmp test$27

 test$22:
	; 25 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$23:
	; 26 Parameter 64 pointer string_25s0A#
	mov qword [rbp + 64], @9245string_25s0A#

 test$24:
	; 27 Parameter 72 pointer message
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 test$25:
	; 28 Call 40 printf 8
	mov qword [rbp + 40], test$26
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 test$26:
	; 29 PostCall 40

 test$27:
	; 32 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 test$28:
	; 33 FunctionEnd test

section .data

@9252floating8$10#:
	; Initializer Double 10
	dq 10.0

section .data

@9255floating8$0.1#:
	; Initializer Double 0.1
	dq 0.1

section .text

 setjmp_test:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$1:
	; 1 PushFloat floating8$10#
	fld qword [@9252floating8$10#]

 setjmp_test$2:
	; 2 Parameter 48 double floating8$10#
	fstp qword [rbp + 48]

 setjmp_test$3:
	; 3 Call 24 test 0
	mov qword [rbp + 24], setjmp_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$4:
	; 4 PostCall 24

 setjmp_test$5:
	; 5 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$6:
	; 6 PushFloat floating8$0#
	fldz

 setjmp_test$7:
	; 7 Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 setjmp_test$8:
	; 8 Call 24 test 0
	mov qword [rbp + 24], setjmp_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$9:
	; 9 PostCall 24

 setjmp_test$10:
	; 10 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$11:
	; 11 PushFloat floating8$0.1#
	fld qword [@9255floating8$0.1#]

 setjmp_test$12:
	; 12 Parameter 48 double floating8$0.1#
	fstp qword [rbp + 48]

 setjmp_test$13:
	; 13 Call 24 test 0
	mov qword [rbp + 24], setjmp_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$14:
	; 14 PostCall 24

 setjmp_test$15:
	; 16 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp_test$16:
	; 17 FunctionEnd setjmp_test
