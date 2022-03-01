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

@9498string_Please20input20a20value3A20#:
	; Initializer String Please input a value: 
	db "Please input a value: ", 0

section .data

@9499string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@9502string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

@9503string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 @9495$main:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9495$main$1:
	; Parameter 64 string string_Please20input20a20value3A20#
	mov qword [rbp + 64], @9498string_Please20input20a20value3A20#

 @9495$main$2:
	; Call 40 printf 0
	mov qword [rbp + 40], @9495$main$3
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 @9495$main$3:
	; PostCall 40

 @9495$main$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9495$main$5:
	; Parameter 64 string string_25lf#
	mov qword [rbp + 64], @9499string_25lf#

 @9495$main$6:
	; Address £temporary4126 x
	mov rsi, rbp
	add rsi, 32

 @9495$main$7:
	; Parameter 72 pointer £temporary4126
	mov [rbp + 72], rsi

 @9495$main$8:
	; Call 40 scanf 8
	mov qword [rbp + 40], @9495$main$9
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp scanf

 @9495$main$9:
	; PostCall 40

 @9495$main$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9495$main$11:
	; Parameter 64 array buffer
	mov qword [rbp + 64], buffer

 @9495$main$12:
	; Call 40 setjmp 0
	mov qword [rbp + 40], @9495$main$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 @9495$main$13:
	; PostCall 40

 @9495$main$14:
	; GetReturnValue £temporary4128

 @9495$main$15:
	; IntegralToIntegral £temporary4129 £temporary4128
	mov rax, 4294967295
	and rbx, rax

 @9495$main$16:
	; Assign message £temporary4129
	mov [rbp + 24], rbx

 @9495$main$17:
	; NotEqual 32 message integral8$0#
	cmp qword [rbp + 24], 0
	jne @9495$main$32

 @9495$main$18:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9495$main$19:
	; Parameter 64 string string_12E0202F2025f203D2025f0A#
	mov qword [rbp + 64], @9502string_12E0202F2025f203D2025f0A#

 @9495$main$20:
	; PushFloat x
	fld qword [rbp + 32]

 @9495$main$21:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 @9495$main$22:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9495$main$23:
	; PushFloat x
	fld qword [rbp + 32]

 @9495$main$24:
	; Parameter 104 double x
	fstp qword [rbp + 104]

 @9495$main$25:
	; Call 80 inverse 0
	mov qword [rbp + 80], @9495$main$26
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 @9495$main$26:
	; PostCall 80

 @9495$main$27:
	; GetReturnValue £temporary4131

 @9495$main$28:
	; Parameter 80 double £temporary4131
	fstp qword [rbp + 80]

 @9495$main$29:
	; Call 40 printf 16
	mov qword [rbp + 40], @9495$main$30
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 @9495$main$30:
	; PostCall 40

 @9495$main$31:
	; Jump 37
	jmp @9495$main$37

 @9495$main$32:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @9495$main$33:
	; Parameter 64 string string_25s0A#
	mov qword [rbp + 64], @9503string_25s0A#

 @9495$main$34:
	; Parameter 72 pointer message
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 @9495$main$35:
	; Call 40 printf 8
	mov qword [rbp + 40], @9495$main$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 @9495$main$36:
	; PostCall 40

 @9495$main$37:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @9495$main$38:
	; FunctionEnd main

section .text

 inverse:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 inverse$1:
	; PushFloat floating8$1#
	fld1

 inverse$2:
	; Parameter 56 double floating8$1#
	fstp qword [rbp + 56]

 inverse$3:
	; PushFloat x
	fld qword [rbp + 24]

 inverse$4:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 inverse$5:
	; Call 32 divide 0
	mov qword [rbp + 32], inverse$6
	mov [rbp + 40], rbp
	add rbp, 32
	jmp divide

 inverse$6:
	; PostCall 32

 inverse$7:
	; GetReturnValue £temporary4140

 inverse$8:
	; Return £temporary4140
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 inverse$9:
	; FunctionEnd inverse

section .data

@9518string_Division20by20Zero2E#:
	; Initializer String Division by Zero.
	db "Division by Zero.", 0

section .text

 divide:
	; PushFloat y
	fld qword [rbp + 32]

 divide$1:
	; PushFloat floating8$0#
	fldz

 divide$2:
	; Equal 7 y floating8$0#
	fcompp
	fstsw ax
	sahf
	je divide$7

 divide$3:
	; PushFloat x
	fld qword [rbp + 24]

 divide$4:
	; PushFloat y
	fld qword [rbp + 32]

 divide$5:
	; Divide £temporary4144 x y
	fdiv

 divide$6:
	; Return £temporary4144
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$7:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 divide$8:
	; Parameter 64 array buffer
	mov qword [rbp + 64], buffer

 divide$9:
	; IntegralToIntegral £temporary4145 string_Division20by20Zero2E#
	mov rax, @9518string_Division20by20Zero2E#

 divide$10:
	; Parameter 72 signed int £temporary4145
	mov [rbp + 72], eax

 divide$11:
	; Call 40 longjmp 0
	mov qword [rbp + 40], divide$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp longjmp

 divide$12:
	; PostCall 40

 divide$13:
	; PushFloat floating8$0#
	fldz

 divide$14:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 divide$15:
	; FunctionEnd divide

section .data

@9527string_12E0202F2025f203D2025f0A#:
	; Initializer String 1.0 / %f = %f\n
	db "1.0 / %f = %f", 10, 0

section .data

@9528string_25s0A#:
	; Initializer String %s\n
	db "%s", 10, 0

section .text

 test:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$1:
	; Parameter 64 array buffer
	mov qword [rbp + 64], buffer

 test$2:
	; Call 40 setjmp 0
	mov qword [rbp + 40], test$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp setjmp

 test$3:
	; PostCall 40

 test$4:
	; GetReturnValue £temporary4149

 test$5:
	; IntegralToIntegral £temporary4150 £temporary4149
	mov rax, 4294967295
	and rbx, rax

 test$6:
	; Assign message £temporary4150
	mov [rbp + 32], rbx

 test$7:
	; NotEqual 22 message integral8$0#
	cmp qword [rbp + 32], 0
	jne test$22

 test$8:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$9:
	; Parameter 64 string string_12E0202F2025f203D2025f0A#
	mov qword [rbp + 64], @9527string_12E0202F2025f203D2025f0A#

 test$10:
	; PushFloat x
	fld qword [rbp + 24]

 test$11:
	; Parameter 72 double x
	fstp qword [rbp + 72]

 test$12:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$13:
	; PushFloat x
	fld qword [rbp + 24]

 test$14:
	; Parameter 104 double x
	fstp qword [rbp + 104]

 test$15:
	; Call 80 inverse 0
	mov qword [rbp + 80], test$16
	mov [rbp + 88], rbp
	add rbp, 80
	jmp inverse

 test$16:
	; PostCall 80

 test$17:
	; GetReturnValue £temporary4152

 test$18:
	; Parameter 80 double £temporary4152
	fstp qword [rbp + 80]

 test$19:
	; Call 40 printf 16
	mov qword [rbp + 40], test$20
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 test$20:
	; PostCall 40

 test$21:
	; Jump 27
	jmp test$27

 test$22:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 test$23:
	; Parameter 64 string string_25s0A#
	mov qword [rbp + 64], @9528string_25s0A#

 test$24:
	; Parameter 72 pointer message
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 test$25:
	; Call 40 printf 8
	mov qword [rbp + 40], test$26
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 test$26:
	; PostCall 40

 test$27:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 test$28:
	; FunctionEnd test

section .data

@9535floating8$10#:
	; Initializer Double 10
	dq 10.0

section .data

@9538floating8$0.1#:
	; Initializer Double 0.1
	dq 0.1

section .text

 setjmp_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$1:
	; PushFloat floating8$10#
	fld qword [@9535floating8$10#]

 setjmp_test$2:
	; Parameter 48 double floating8$10#
	fstp qword [rbp + 48]

 setjmp_test$3:
	; Call 24 test 0
	mov qword [rbp + 24], setjmp_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$4:
	; PostCall 24

 setjmp_test$5:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$6:
	; PushFloat floating8$0#
	fldz

 setjmp_test$7:
	; Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 setjmp_test$8:
	; Call 24 test 0
	mov qword [rbp + 24], setjmp_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$9:
	; PostCall 24

 setjmp_test$10:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setjmp_test$11:
	; PushFloat floating8$0.1#
	fld qword [@9538floating8$0.1#]

 setjmp_test$12:
	; Parameter 48 double floating8$0.1#
	fstp qword [rbp + 48]

 setjmp_test$13:
	; Call 24 test 0
	mov qword [rbp + 24], setjmp_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp test

 setjmp_test$14:
	; PostCall 24

 setjmp_test$15:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setjmp_test$16:
	; FunctionEnd setjmp_test
