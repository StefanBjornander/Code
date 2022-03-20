	global exp
	global log
	global log10
	global pow
	global ldexp
	global frexp
	global sqrt
	global modf
	global fmod
	global sin
	global cos
	global tan
	global asin
	global acos
	global atan
	global atan2
	global sinh
	global cosh
	global tanh
	global floor
	global ceil
	global round
	global fabs

	extern errno
	extern $StackTop


section .data

@1535floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 exp:
	; PushFloat floating8$1#
	fld1

 exp$1:
	; PopFloat index
	fstp qword [rbp + 32]

 exp$2:
	; PushFloat floating8$1#
	fld1

 exp$3:
	; PopFloat sum
	fstp qword [rbp + 48]

 exp$4:
	; PushFloat floating8$1#
	fld1

 exp$5:
	; PopFloat faculty
	fstp qword [rbp + 56]

 exp$6:
	; PushFloat x
	fld qword [rbp + 24]

 exp$7:
	; PopFloat power
	fstp qword [rbp + 64]

 exp$8:
	; PushFloat power
	fld qword [rbp + 64]

 exp$9:
	; PushFloat faculty
	fld qword [rbp + 56]

 exp$10:
	; Divide £temporary388 power faculty
	fdiv

 exp$11:
	; PopFloat term
	fstp qword [rbp + 40]

 exp$12:
	; PushFloat sum
	fld qword [rbp + 48]

 exp$13:
	; PushFloat term
	fld qword [rbp + 40]

 exp$14:
	; Add £temporary389 sum term
	fadd

 exp$15:
	; PopFloat sum
	fstp qword [rbp + 48]

 exp$16:
	; PushFloat power
	fld qword [rbp + 64]

 exp$17:
	; PushFloat x
	fld qword [rbp + 24]

 exp$18:
	; Multiply £temporary390 power x
	fmul

 exp$19:
	; PopFloat power
	fstp qword [rbp + 64]

 exp$20:
	; PushFloat faculty
	fld qword [rbp + 56]

 exp$21:
	; PushFloat index
	fld qword [rbp + 32]

 exp$22:
	; PushOne
	fld1

 exp$23:
	; Add £temporary392 index £temporary391
	fadd

 exp$24:
	; TopFloat index
	fst qword [rbp + 32]

 exp$25:
	; Multiply £temporary393 faculty index
	fmul

 exp$26:
	; PopFloat faculty
	fstp qword [rbp + 56]

 exp$27:
	; PreCall 72

 exp$28:
	; PushFloat term
	fld qword [rbp + 40]

 exp$29:
	; Parameter 96 double term
	fstp qword [rbp + 96]

 exp$30:
	; Call 72 fabs 0
	mov qword [rbp + 72], exp$31
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 exp$31:
	; PostCall 72

 exp$32:
	; GetReturnValue £temporary394

 exp$33:
	; PushFloat floating8$0.000000001#
	fld qword [@1535floating8$0.000000001#]

 exp$34:
	; GreaterThanEqual 8 £temporary394 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe exp$8

 exp$35:
	; PushFloat sum
	fld qword [rbp + 48]

 exp$36:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exp$37:
	; FunctionEnd exp

section .data

@1546floating8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .data

@1548floating8$0.368#:
	; Initializer Double 0.368
	dq 0.368

section .data

@1549floating8$0.368#:
	; Initializer Double 0.368
	dq 0.368

section .data

@1550floating8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .data

@1566floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@1567floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 log:
	; PushFloat x
	fld qword [rbp + 24]

 log$1:
	; PushFloat floating8$0#
	fldz

 log$2:
	; LessThanEqual 73 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae log$73

 log$3:
	; Assign n integral4$0#
	mov dword [rbp + 32], 0

 log$4:
	; PushFloat x
	fld qword [rbp + 24]

 log$5:
	; PushFloat floating8$1#
	fld1

 log$6:
	; LessThanEqual 16 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jae log$16

 log$7:
	; PushFloat x
	fld qword [rbp + 24]

 log$8:
	; PushFloat floating8$1#
	fld1

 log$9:
	; LessThanEqual 28 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jae log$28

 log$10:
	; PushFloat x
	fld qword [rbp + 24]

 log$11:
	; PushFloat floating8$2.71#
	fld qword [@1546floating8$2.71#]

 log$12:
	; Divide £temporary400 x floating8$2.71#
	fdiv

 log$13:
	; PopFloat x
	fstp qword [rbp + 24]

 log$14:
	; Add n n integral4$1#
	inc dword [rbp + 32]

 log$15:
	; Jump 7
	jmp log$7

 log$16:
	; PushFloat x
	fld qword [rbp + 24]

 log$17:
	; PushFloat floating8$0.368#
	fld qword [@1548floating8$0.368#]

 log$18:
	; GreaterThanEqual 28 x floating8$0.368#
	fcompp
	fstsw ax
	sahf
	jbe log$28

 log$19:
	; PushFloat x
	fld qword [rbp + 24]

 log$20:
	; PushFloat floating8$0.368#
	fld qword [@1549floating8$0.368#]

 log$21:
	; GreaterThanEqual 28 x floating8$0.368#
	fcompp
	fstsw ax
	sahf
	jbe log$28

 log$22:
	; PushFloat x
	fld qword [rbp + 24]

 log$23:
	; PushFloat floating8$2.71#
	fld qword [@1550floating8$2.71#]

 log$24:
	; Multiply £temporary404 x floating8$2.71#
	fmul

 log$25:
	; PopFloat x
	fstp qword [rbp + 24]

 log$26:
	; Subtract n n integral4$1#
	dec dword [rbp + 32]

 log$27:
	; Jump 19
	jmp log$19

 log$28:
	; PushFloat floating8$1#
	fld1

 log$29:
	; PopFloat index
	fstp qword [rbp + 36]

 log$30:
	; PushFloat floating8$0#
	fldz

 log$31:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$32:
	; PushFloat floating8$1#
	fld1

 log$33:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$34:
	; PushFloat x
	fld qword [rbp + 24]

 log$35:
	; PushFloat floating8$1#
	fld1

 log$36:
	; Subtract £temporary410 x floating8$1#
	fsub

 log$37:
	; TopFloat x_minus_1
	fst qword [rbp + 68]

 log$38:
	; PopFloat power
	fstp qword [rbp + 76]

 log$39:
	; PushFloat sign
	fld qword [rbp + 60]

 log$40:
	; PushFloat power
	fld qword [rbp + 76]

 log$41:
	; Multiply £temporary411 sign power
	fmul

 log$42:
	; PushFloat index
	fld qword [rbp + 36]

 log$43:
	; PushFloat index
	fld qword [rbp + 36]

 log$44:
	; PushOne
	fld1

 log$45:
	; Add £temporary413 index £temporary412
	fadd

 log$46:
	; PopFloat index
	fstp qword [rbp + 36]

 log$47:
	; Divide £temporary414 £temporary411 index
	fdiv

 log$48:
	; PopFloat term
	fstp qword [rbp + 44]

 log$49:
	; PushFloat sum
	fld qword [rbp + 52]

 log$50:
	; PushFloat term
	fld qword [rbp + 44]

 log$51:
	; Add £temporary415 sum term
	fadd

 log$52:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$53:
	; PushFloat power
	fld qword [rbp + 76]

 log$54:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$55:
	; Multiply £temporary416 power x_minus_1
	fmul

 log$56:
	; PopFloat power
	fstp qword [rbp + 76]

 log$57:
	; PushFloat sign
	fld qword [rbp + 60]

 log$58:
	; PushFloat floating8$minus1.0#
	fld qword [@1566floating8$minus1.0#]

 log$59:
	; Multiply £temporary417 sign floating8$minus1.0#
	fmul

 log$60:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$61:
	; PreCall 84

 log$62:
	; PushFloat term
	fld qword [rbp + 44]

 log$63:
	; Parameter 108 double term
	fstp qword [rbp + 108]

 log$64:
	; Call 84 fabs 0
	mov qword [rbp + 84], log$65
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

 log$65:
	; PostCall 84

 log$66:
	; GetReturnValue £temporary418

 log$67:
	; PushFloat floating8$0.000000001#
	fld qword [@1567floating8$0.000000001#]

 log$68:
	; GreaterThanEqual 39 £temporary418 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe log$39

 log$69:
	; PushFloat sum
	fld qword [rbp + 52]

 log$70:
	; IntegralToFloating £temporary421 n
	fild dword [rbp + 32]

 log$71:
	; Add £temporary420 sum £temporary421
	fadd

 log$72:
	; Return £temporary420
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$73:
	; Assign errno EDOM
	mov dword [errno], 6

 log$74:
	; PushFloat floating8$0#
	fldz

 log$75:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$76:
	; FunctionEnd log

section .data

@1572floating8$2.30#:
	; Initializer Double 2.30
	dq 2.30

section .text

 log10:
	; PreCall 32

 log10$1:
	; PushFloat x
	fld qword [rbp + 24]

 log10$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 log10$3:
	; Call 32 log 0
	mov qword [rbp + 32], log10$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 log10$4:
	; PostCall 32

 log10$5:
	; GetReturnValue £temporary425

 log10$6:
	; PushFloat floating8$2.30#
	fld qword [@1572floating8$2.30#]

 log10$7:
	; Divide £temporary426 £temporary425 floating8$2.30#
	fdiv

 log10$8:
	; Return £temporary426
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10$9:
	; FunctionEnd log10

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@1593integral8$2#:
	; Initializer SignedLongInt 2
	dq 2

section .text

 pow:
	; PushFloat x
	fld qword [rbp + 24]

 pow$1:
	; PushFloat floating8$0#
	fldz

 pow$2:
	; LessThanEqual 17 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae pow$17

 pow$3:
	; PreCall 40

 pow$4:
	; PushFloat y
	fld qword [rbp + 32]

 pow$5:
	; PreCall 40
	fstp qword [rbp + 40]

 pow$6:
	; PushFloat x
	fld qword [rbp + 24]

 pow$7:
	; Parameter 64 double x
	fstp qword [rbp + 72]

 pow$8:
	; Call 40 log 0
	mov qword [rbp + 48], pow$9
	mov [rbp + 56], rbp
	add rbp, 48
	jmp log

 pow$9:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$10:
	; GetReturnValue £temporary429

 pow$11:
	; Multiply £temporary430 y £temporary429
	fmul

 pow$12:
	; Parameter 64 double £temporary430
	fstp qword [rbp + 64]

 pow$13:
	; Call 40 exp 0
	mov qword [rbp + 40], pow$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 pow$14:
	; PostCall 40

 pow$15:
	; GetReturnValue £temporary431

 pow$16:
	; Return £temporary431
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$17:
	; PushFloat x
	fld qword [rbp + 24]

 pow$18:
	; PushFloat floating8$0#
	fldz

 pow$19:
	; NotEqual 25 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jne pow$25

 pow$20:
	; PushFloat y
	fld qword [rbp + 32]

 pow$21:
	; PushFloat floating8$0#
	fldz

 pow$22:
	; NotEqual 25 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jne pow$25

 pow$23:
	; PushFloat floating8$1#
	fld1

 pow$24:
	; Return floating8$1#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$25:
	; PushFloat x
	fld qword [rbp + 24]

 pow$26:
	; PushFloat floating8$0#
	fldz

 pow$27:
	; NotEqual 33 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jne pow$33

 pow$28:
	; PushFloat y
	fld qword [rbp + 32]

 pow$29:
	; PushFloat floating8$0#
	fldz

 pow$30:
	; LessThanEqual 33 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jae pow$33

 pow$31:
	; PushFloat floating8$0#
	fldz

 pow$32:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$33:
	; PushFloat x
	fld qword [rbp + 24]

 pow$34:
	; PushFloat floating8$0#
	fldz

 pow$35:
	; GreaterThanEqual 85 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe pow$85

 pow$36:
	; PreCall 40

 pow$37:
	; PushFloat y
	fld qword [rbp + 32]

 pow$38:
	; Parameter 64 double y
	fstp qword [rbp + 64]

 pow$39:
	; Call 40 floor 0
	mov qword [rbp + 40], pow$40
	mov [rbp + 48], rbp
	add rbp, 40
	jmp floor

 pow$40:
	; PostCall 40

 pow$41:
	; GetReturnValue £temporary439

 pow$42:
	; PreCall 40
	fstp qword [rbp + 40]

 pow$43:
	; PushFloat y
	fld qword [rbp + 32]

 pow$44:
	; Parameter 64 double y
	fstp qword [rbp + 72]

 pow$45:
	; Call 40 ceil 0
	mov qword [rbp + 48], pow$46
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ceil

 pow$46:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$47:
	; GetReturnValue £temporary440

 pow$48:
	; NotEqual 85 £temporary439 £temporary440
	fcompp
	fstsw ax
	sahf
	jne pow$85

 pow$49:
	; PushFloat y
	fld qword [rbp + 32]

 pow$50:
	; FloatingToIntegral £temporary443 y
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 pow$51:
	; Assign long_y £temporary443
	mov [rbp + 40], rax

 pow$52:
	; Modulo £temporary444 long_y integral8$2#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@1593integral8$2#]

 pow$53:
	; NotEqual 69 £temporary444 integral8$0#
	cmp rdx, 0
	jne pow$69

 pow$54:
	; PreCall 48

 pow$55:
	; PushFloat y
	fld qword [rbp + 32]

 pow$56:
	; PreCall 48
	fstp qword [rbp + 48]

 pow$57:
	; PushFloat x
	fld qword [rbp + 24]

 pow$58:
	; Minus £temporary446 x
	fchs

 pow$59:
	; Parameter 72 double £temporary446
	fstp qword [rbp + 80]

 pow$60:
	; Call 48 log 0
	mov qword [rbp + 56], pow$61
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$61:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$62:
	; GetReturnValue £temporary447

 pow$63:
	; Multiply £temporary448 y £temporary447
	fmul

 pow$64:
	; Parameter 72 double £temporary448
	fstp qword [rbp + 72]

 pow$65:
	; Call 48 exp 0
	mov qword [rbp + 48], pow$66
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$66:
	; PostCall 48

 pow$67:
	; GetReturnValue £temporary449

 pow$68:
	; Return £temporary449
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$69:
	; PreCall 48

 pow$70:
	; PushFloat y
	fld qword [rbp + 32]

 pow$71:
	; PreCall 48
	fstp qword [rbp + 48]

 pow$72:
	; PushFloat x
	fld qword [rbp + 24]

 pow$73:
	; Minus £temporary450 x
	fchs

 pow$74:
	; Parameter 72 double £temporary450
	fstp qword [rbp + 80]

 pow$75:
	; Call 48 log 0
	mov qword [rbp + 56], pow$76
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$76:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$77:
	; GetReturnValue £temporary451

 pow$78:
	; Multiply £temporary452 y £temporary451
	fmul

 pow$79:
	; Parameter 72 double £temporary452
	fstp qword [rbp + 72]

 pow$80:
	; Call 48 exp 0
	mov qword [rbp + 48], pow$81
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$81:
	; PostCall 48

 pow$82:
	; GetReturnValue £temporary453

 pow$83:
	; Minus £temporary454 £temporary453
	fchs

 pow$84:
	; Return £temporary454
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$85:
	; Assign errno EDOM
	mov dword [errno], 6

 pow$86:
	; PushFloat floating8$0#
	fldz

 pow$87:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$88:
	; FunctionEnd pow

section .data

@1601floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 ldexp:
	; PushFloat x
	fld qword [rbp + 24]

 ldexp$1:
	; PreCall 36
	fstp qword [rbp + 36]

 ldexp$2:
	; PushFloat floating8$2#
	fld qword [@1601floating8$2#]

 ldexp$3:
	; Parameter 60 double floating8$2#
	fstp qword [rbp + 68]

 ldexp$4:
	; IntegralToFloating £temporary473 n
	fild dword [rbp + 32]

 ldexp$5:
	; Parameter 68 double £temporary473
	fstp qword [rbp + 76]

 ldexp$6:
	; Call 36 pow 0
	mov qword [rbp + 44], ldexp$7
	mov [rbp + 52], rbp
	add rbp, 44
	jmp pow

 ldexp$7:
	; PostCall 36
	fstp qword [rbp + 44]
	fld qword [rbp + 36]
	fld qword [rbp + 44]

 ldexp$8:
	; GetReturnValue £temporary474

 ldexp$9:
	; Multiply £temporary475 x £temporary474
	fmul

 ldexp$10:
	; Return £temporary475
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldexp$11:
	; FunctionEnd ldexp

section .data

@1604floating8$0.693#:
	; Initializer Double 0.693
	dq 0.693

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 @1603$log2:
	; PreCall 32

 @1603$log2$1:
	; PushFloat x
	fld qword [rbp + 24]

 @1603$log2$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 @1603$log2$3:
	; Call 32 log 0
	mov qword [rbp + 32], @1603$log2$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 @1603$log2$4:
	; PostCall 32

 @1603$log2$5:
	; GetReturnValue £temporary478

 @1603$log2$6:
	; PushFloat floating8$0.693#
	fld qword [@1604floating8$0.693#]

 @1603$log2$7:
	; Divide £temporary479 £temporary478 floating8$0.693#
	fdiv

 @1603$log2$8:
	; FloatingToIntegral £temporary480 £temporary479
	fistp dword [container4bytes#]
	mov ebx, [container4bytes#]

 @1603$log2$9:
	; Return £temporary480
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @1603$log2$10:
	; FunctionEnd log2

section .data

@1611floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1616floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 frexp:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$1:
	; PushFloat floating8$0#
	fldz

 frexp$2:
	; Equal 41 x floating8$0#
	fcompp
	fstsw ax
	sahf
	je frexp$41

 frexp$3:
	; PreCall 40

 frexp$4:
	; PreCall 40

 frexp$5:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$6:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 frexp$7:
	; Call 40 fabs 0
	mov qword [rbp + 40], frexp$8
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 frexp$8:
	; PostCall 40

 frexp$9:
	; GetReturnValue £temporary483

 frexp$10:
	; Parameter 64 double £temporary483
	fstp qword [rbp + 64]

 frexp$11:
	; Call 40 log2 0
	mov qword [rbp + 40], frexp$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp @1603$log2

 frexp$12:
	; PostCall 40

 frexp$13:
	; GetReturnValue £temporary484

 frexp$14:
	; IntegralToIntegral £temporary485 £temporary484

 frexp$15:
	; Assign exponent £temporary485
	mov [rbp + 40], ebx

 frexp$16:
	; PreCall 44

 frexp$17:
	; PushFloat floating8$2#
	fld qword [@1611floating8$2#]

 frexp$18:
	; Parameter 68 double floating8$2#
	fstp qword [rbp + 68]

 frexp$19:
	; IntegralToFloating £temporary486 exponent
	fild dword [rbp + 40]

 frexp$20:
	; Parameter 76 double £temporary486
	fstp qword [rbp + 76]

 frexp$21:
	; Call 44 pow 0
	mov qword [rbp + 44], frexp$22
	mov [rbp + 52], rbp
	add rbp, 44
	jmp pow

 frexp$22:
	; PostCall 44

 frexp$23:
	; GetReturnValue £temporary487

 frexp$24:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$25:
	; GreaterThanEqual 27 £temporary487 x
	fcompp
	fstsw ax
	sahf
	jbe frexp$27

 frexp$26:
	; Add exponent exponent integral4$1#
	inc dword [rbp + 40]

 frexp$27:
	; Equal 30 p integral8$0#
	cmp qword [rbp + 32], 0
	je frexp$30

 frexp$28:
	; Dereference £temporary493 p 0
	mov rsi, [rbp + 32]

 frexp$29:
	; Assign £temporary493 exponent
	mov eax, [rbp + 40]
	mov [rsi], eax

 frexp$30:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$31:
	; PreCall 44
	fstp qword [rbp + 44]

 frexp$32:
	; PushFloat floating8$2#
	fld qword [@1616floating8$2#]

 frexp$33:
	; Parameter 68 double floating8$2#
	fstp qword [rbp + 76]

 frexp$34:
	; IntegralToFloating £temporary496 exponent
	fild dword [rbp + 40]

 frexp$35:
	; Parameter 76 double £temporary496
	fstp qword [rbp + 84]

 frexp$36:
	; Call 44 pow 0
	mov qword [rbp + 52], frexp$37
	mov [rbp + 60], rbp
	add rbp, 52
	jmp pow

 frexp$37:
	; PostCall 44
	fstp qword [rbp + 52]
	fld qword [rbp + 44]
	fld qword [rbp + 52]

 frexp$38:
	; GetReturnValue £temporary497

 frexp$39:
	; Divide £temporary498 x £temporary497
	fdiv

 frexp$40:
	; Return £temporary498
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$41:
	; Equal 44 p integral8$0#
	cmp qword [rbp + 32], 0
	je frexp$44

 frexp$42:
	; Dereference £temporary500 p 0
	mov rsi, [rbp + 32]

 frexp$43:
	; Assign £temporary500 integral4$0#
	mov dword [rsi], 0

 frexp$44:
	; PushFloat floating8$0#
	fldz

 frexp$45:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$46:
	; FunctionEnd frexp

section .data

@1630floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1631floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 sqrt:
	; PushFloat x
	fld qword [rbp + 24]

 sqrt$1:
	; PushFloat floating8$0#
	fldz

 sqrt$2:
	; LessThan 26 x floating8$0#
	fcompp
	fstsw ax
	sahf
	ja sqrt$26

 sqrt$3:
	; PushFloat floating8$1#
	fld1

 sqrt$4:
	; PopFloat root_i_plus_1
	fstp qword [rbp + 40]

 sqrt$5:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$6:
	; TopFloat root_i
	fst qword [rbp + 32]

 sqrt$7:
	; PushFloat x
	fld qword [rbp + 24]

 sqrt$8:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$9:
	; Divide £temporary512 x root_i
	fdiv

 sqrt$10:
	; Add £temporary513 root_i £temporary512
	fadd

 sqrt$11:
	; PushFloat floating8$2#
	fld qword [@1630floating8$2#]

 sqrt$12:
	; Divide £temporary514 £temporary513 floating8$2#
	fdiv

 sqrt$13:
	; PopFloat root_i_plus_1
	fstp qword [rbp + 40]

 sqrt$14:
	; PreCall 48

 sqrt$15:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$16:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$17:
	; Subtract £temporary515 root_i_plus_1 root_i
	fsub

 sqrt$18:
	; Parameter 72 double £temporary515
	fstp qword [rbp + 72]

 sqrt$19:
	; Call 48 fabs 0
	mov qword [rbp + 48], sqrt$20
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 sqrt$20:
	; PostCall 48

 sqrt$21:
	; GetReturnValue £temporary516

 sqrt$22:
	; PushFloat floating8$0.000000001#
	fld qword [@1631floating8$0.000000001#]

 sqrt$23:
	; GreaterThanEqual 5 £temporary516 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe sqrt$5

 sqrt$24:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$25:
	; Return root_i_plus_1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$26:
	; Assign errno EDOM
	mov dword [errno], 6

 sqrt$27:
	; PushFloat floating8$0#
	fldz

 sqrt$28:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$29:
	; FunctionEnd sqrt

section .text

 modf:
	; PreCall 40

 modf$1:
	; PushFloat x
	fld qword [rbp + 24]

 modf$2:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 modf$3:
	; Call 40 fabs 0
	mov qword [rbp + 40], modf$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 modf$4:
	; PostCall 40

 modf$5:
	; GetReturnValue £temporary521

 modf$6:
	; TopFloat abs_x
	fst qword [rbp + 40]

 modf$7:
	; FloatingToIntegral £temporary522 abs_x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 modf$8:
	; IntegralToFloating £temporary523 £temporary522
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 modf$9:
	; PopFloat integral
	fstp qword [rbp + 48]

 modf$10:
	; PushFloat abs_x
	fld qword [rbp + 40]

 modf$11:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$12:
	; Subtract £temporary524 abs_x integral
	fsub

 modf$13:
	; PopFloat fractional
	fstp qword [rbp + 56]

 modf$14:
	; Equal 25 p integral8$0#
	cmp qword [rbp + 32], 0
	je modf$25

 modf$15:
	; Dereference £temporary526 p 0
	mov rsi, [rbp + 32]

 modf$16:
	; PushFloat x
	fld qword [rbp + 24]

 modf$17:
	; PushFloat floating8$0#
	fldz

 modf$18:
	; LessThanEqual 22 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae modf$22

 modf$19:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$20:
	; DecreaseStack

 modf$21:
	; Jump 24
	jmp modf$24

 modf$22:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$23:
	; Minus £temporary528 integral
	fchs

 modf$24:
	; PopFloat £temporary526
	fstp qword [rsi]

 modf$25:
	; PushFloat x
	fld qword [rbp + 24]

 modf$26:
	; PushFloat floating8$0#
	fldz

 modf$27:
	; LessThanEqual 31 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae modf$31

 modf$28:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$29:
	; DecreaseStack

 modf$30:
	; Jump 33
	jmp modf$33

 modf$31:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$32:
	; Minus £temporary533 fractional
	fchs

 modf$33:
	; Return £temporary534
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 modf$34:
	; FunctionEnd modf

section .text

 fmod:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$1:
	; PushFloat floating8$0#
	fldz

 fmod$2:
	; Equal 27 y floating8$0#
	fcompp
	fstsw ax
	sahf
	je fmod$27

 fmod$3:
	; PreCall 40

 fmod$4:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$5:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$6:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$7:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$8:
	; Divide £temporary537 x y
	fdiv

 fmod$9:
	; FloatingToIntegral £temporary538 £temporary537
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 fmod$10:
	; IntegralToFloating £temporary540 £temporary538
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 fmod$11:
	; Multiply £temporary539 y £temporary540
	fmul

 fmod$12:
	; Subtract £temporary541 x £temporary539
	fsub

 fmod$13:
	; Parameter 64 double £temporary541
	fstp qword [rbp + 64]

 fmod$14:
	; Call 40 fabs 0
	mov qword [rbp + 40], fmod$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fabs

 fmod$15:
	; PostCall 40

 fmod$16:
	; GetReturnValue £temporary542

 fmod$17:
	; PopFloat remainder
	fstp qword [rbp + 40]

 fmod$18:
	; PushFloat x
	fld qword [rbp + 24]

 fmod$19:
	; PushFloat floating8$0#
	fldz

 fmod$20:
	; LessThanEqual 24 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae fmod$24

 fmod$21:
	; PushFloat remainder
	fld qword [rbp + 40]

 fmod$22:
	; DecreaseStack

 fmod$23:
	; Jump 26
	jmp fmod$26

 fmod$24:
	; PushFloat remainder
	fld qword [rbp + 40]

 fmod$25:
	; Minus £temporary544 remainder
	fchs

 fmod$26:
	; Return £temporary545
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$27:
	; Assign errno EDOM
	mov dword [errno], 6

 fmod$28:
	; PushFloat floating8$0#
	fldz

 fmod$29:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$30:
	; FunctionEnd fmod

section .data

@1659floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1664floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1680floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@1681floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 sin:
	; PreCall 32

 sin$1:
	; PushFloat x
	fld qword [rbp + 24]

 sin$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 sin$3:
	; Call 32 fabs 0
	mov qword [rbp + 32], sin$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 sin$4:
	; PostCall 32

 sin$5:
	; GetReturnValue £temporary549

 sin$6:
	; PushFloat floating8$6.28#
	fld qword [@1659floating8$6.28#]

 sin$7:
	; LessThanEqual 17 £temporary549 floating8$6.28#
	fcompp
	fstsw ax
	sahf
	jae sin$17

 sin$8:
	; PreCall 32

 sin$9:
	; PushFloat x
	fld qword [rbp + 24]

 sin$10:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 sin$11:
	; PushFloat floating8$6.28#
	fld qword [@1664floating8$6.28#]

 sin$12:
	; Parameter 64 double floating8$6.28#
	fstp qword [rbp + 64]

 sin$13:
	; Call 32 fmod 0
	mov qword [rbp + 32], sin$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fmod

 sin$14:
	; PostCall 32

 sin$15:
	; GetReturnValue £temporary551

 sin$16:
	; PopFloat x
	fstp qword [rbp + 24]

 sin$17:
	; PushFloat floating8$1#
	fld1

 sin$18:
	; PopFloat index
	fstp qword [rbp + 32]

 sin$19:
	; PushFloat floating8$0#
	fldz

 sin$20:
	; PopFloat sum
	fstp qword [rbp + 48]

 sin$21:
	; PushFloat floating8$1#
	fld1

 sin$22:
	; PopFloat sign
	fstp qword [rbp + 56]

 sin$23:
	; PushFloat x
	fld qword [rbp + 24]

 sin$24:
	; PopFloat power
	fstp qword [rbp + 64]

 sin$25:
	; PushFloat floating8$1#
	fld1

 sin$26:
	; PopFloat faculty
	fstp qword [rbp + 72]

 sin$27:
	; PushFloat sign
	fld qword [rbp + 56]

 sin$28:
	; PushFloat power
	fld qword [rbp + 64]

 sin$29:
	; Multiply £temporary554 sign power
	fmul

 sin$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$31:
	; Divide £temporary555 £temporary554 faculty
	fdiv

 sin$32:
	; PopFloat term
	fstp qword [rbp + 40]

 sin$33:
	; PushFloat sum
	fld qword [rbp + 48]

 sin$34:
	; PushFloat term
	fld qword [rbp + 40]

 sin$35:
	; Add £temporary556 sum term
	fadd

 sin$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 sin$37:
	; PushFloat sign
	fld qword [rbp + 56]

 sin$38:
	; PushFloat floating8$minus1#
	fld qword [@1680floating8$minus1#]

 sin$39:
	; Multiply £temporary557 sign floating8$minus1#
	fmul

 sin$40:
	; PopFloat sign
	fstp qword [rbp + 56]

 sin$41:
	; PushFloat power
	fld qword [rbp + 64]

 sin$42:
	; PushFloat x
	fld qword [rbp + 24]

 sin$43:
	; PushFloat x
	fld qword [rbp + 24]

 sin$44:
	; Multiply £temporary558 x x
	fmul

 sin$45:
	; Multiply £temporary559 power £temporary558
	fmul

 sin$46:
	; PopFloat power
	fstp qword [rbp + 64]

 sin$47:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$48:
	; PushFloat index
	fld qword [rbp + 32]

 sin$49:
	; PushOne
	fld1

 sin$50:
	; Add £temporary561 index £temporary560
	fadd

 sin$51:
	; TopFloat index
	fst qword [rbp + 32]

 sin$52:
	; PushFloat index
	fld qword [rbp + 32]

 sin$53:
	; PushOne
	fld1

 sin$54:
	; Add £temporary563 index £temporary562
	fadd

 sin$55:
	; TopFloat index
	fst qword [rbp + 32]

 sin$56:
	; Multiply £temporary564 index index
	fmul

 sin$57:
	; Multiply £temporary565 faculty £temporary564
	fmul

 sin$58:
	; PopFloat faculty
	fstp qword [rbp + 72]

 sin$59:
	; PreCall 80

 sin$60:
	; PushFloat term
	fld qword [rbp + 40]

 sin$61:
	; Parameter 104 double term
	fstp qword [rbp + 104]

 sin$62:
	; Call 80 fabs 0
	mov qword [rbp + 80], sin$63
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 sin$63:
	; PostCall 80

 sin$64:
	; GetReturnValue £temporary566

 sin$65:
	; PushFloat floating8$0.000000001#
	fld qword [@1681floating8$0.000000001#]

 sin$66:
	; GreaterThanEqual 27 £temporary566 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe sin$27

 sin$67:
	; PushFloat sum
	fld qword [rbp + 48]

 sin$68:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sin$69:
	; FunctionEnd sin

section .data

@1689floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1694floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1712floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@1713floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 cos:
	; PreCall 32

 cos$1:
	; PushFloat x
	fld qword [rbp + 24]

 cos$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 cos$3:
	; Call 32 fabs 0
	mov qword [rbp + 32], cos$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fabs

 cos$4:
	; PostCall 32

 cos$5:
	; GetReturnValue £temporary572

 cos$6:
	; PushFloat floating8$6.28#
	fld qword [@1689floating8$6.28#]

 cos$7:
	; LessThanEqual 17 £temporary572 floating8$6.28#
	fcompp
	fstsw ax
	sahf
	jae cos$17

 cos$8:
	; PreCall 32

 cos$9:
	; PushFloat x
	fld qword [rbp + 24]

 cos$10:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 cos$11:
	; PushFloat floating8$6.28#
	fld qword [@1694floating8$6.28#]

 cos$12:
	; Parameter 64 double floating8$6.28#
	fstp qword [rbp + 64]

 cos$13:
	; Call 32 fmod 0
	mov qword [rbp + 32], cos$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fmod

 cos$14:
	; PostCall 32

 cos$15:
	; GetReturnValue £temporary574

 cos$16:
	; PopFloat x
	fstp qword [rbp + 24]

 cos$17:
	; PushFloat floating8$0#
	fldz

 cos$18:
	; PopFloat index
	fstp qword [rbp + 32]

 cos$19:
	; PushFloat floating8$0#
	fldz

 cos$20:
	; PopFloat sum
	fstp qword [rbp + 48]

 cos$21:
	; PushFloat floating8$1#
	fld1

 cos$22:
	; PopFloat sign
	fstp qword [rbp + 56]

 cos$23:
	; PushFloat floating8$1#
	fld1

 cos$24:
	; PopFloat power
	fstp qword [rbp + 64]

 cos$25:
	; PushFloat floating8$1#
	fld1

 cos$26:
	; PopFloat faculty
	fstp qword [rbp + 72]

 cos$27:
	; PushFloat sign
	fld qword [rbp + 56]

 cos$28:
	; PushFloat power
	fld qword [rbp + 64]

 cos$29:
	; Multiply £temporary577 sign power
	fmul

 cos$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$31:
	; Divide £temporary578 £temporary577 faculty
	fdiv

 cos$32:
	; PopFloat term
	fstp qword [rbp + 40]

 cos$33:
	; PushFloat sum
	fld qword [rbp + 48]

 cos$34:
	; PushFloat term
	fld qword [rbp + 40]

 cos$35:
	; Add £temporary579 sum term
	fadd

 cos$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 cos$37:
	; PushFloat sign
	fld qword [rbp + 56]

 cos$38:
	; PushFloat floating8$minus1#
	fld qword [@1712floating8$minus1#]

 cos$39:
	; Multiply £temporary580 sign floating8$minus1#
	fmul

 cos$40:
	; PopFloat sign
	fstp qword [rbp + 56]

 cos$41:
	; PushFloat power
	fld qword [rbp + 64]

 cos$42:
	; PushFloat x
	fld qword [rbp + 24]

 cos$43:
	; PushFloat x
	fld qword [rbp + 24]

 cos$44:
	; Multiply £temporary581 x x
	fmul

 cos$45:
	; Multiply £temporary582 power £temporary581
	fmul

 cos$46:
	; PopFloat power
	fstp qword [rbp + 64]

 cos$47:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$48:
	; PushFloat index
	fld qword [rbp + 32]

 cos$49:
	; PushOne
	fld1

 cos$50:
	; Add £temporary584 index £temporary583
	fadd

 cos$51:
	; TopFloat index
	fst qword [rbp + 32]

 cos$52:
	; PushFloat index
	fld qword [rbp + 32]

 cos$53:
	; PushOne
	fld1

 cos$54:
	; Add £temporary586 index £temporary585
	fadd

 cos$55:
	; TopFloat index
	fst qword [rbp + 32]

 cos$56:
	; Multiply £temporary587 index index
	fmul

 cos$57:
	; Multiply £temporary588 faculty £temporary587
	fmul

 cos$58:
	; PopFloat faculty
	fstp qword [rbp + 72]

 cos$59:
	; PreCall 80

 cos$60:
	; PushFloat term
	fld qword [rbp + 40]

 cos$61:
	; Parameter 104 double term
	fstp qword [rbp + 104]

 cos$62:
	; Call 80 fabs 0
	mov qword [rbp + 80], cos$63
	mov [rbp + 88], rbp
	add rbp, 80
	jmp fabs

 cos$63:
	; PostCall 80

 cos$64:
	; GetReturnValue £temporary589

 cos$65:
	; PushFloat floating8$0.000000001#
	fld qword [@1713floating8$0.000000001#]

 cos$66:
	; GreaterThanEqual 27 £temporary589 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe cos$27

 cos$67:
	; PushFloat sum
	fld qword [rbp + 48]

 cos$68:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cos$69:
	; FunctionEnd cos

section .text

 tan:
	; PreCall 32

 tan$1:
	; PushFloat x
	fld qword [rbp + 24]

 tan$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 tan$3:
	; Call 32 cos 0
	mov qword [rbp + 32], tan$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp cos

 tan$4:
	; PostCall 32

 tan$5:
	; GetReturnValue £temporary595

 tan$6:
	; TopFloat cos_of_x
	fst qword [rbp + 32]

 tan$7:
	; PushFloat floating8$0#
	fldz

 tan$8:
	; Equal 18 cos_of_x floating8$0#
	fcompp
	fstsw ax
	sahf
	je tan$18

 tan$9:
	; PreCall 40

 tan$10:
	; PushFloat x
	fld qword [rbp + 24]

 tan$11:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 tan$12:
	; Call 40 sin 0
	mov qword [rbp + 40], tan$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sin

 tan$13:
	; PostCall 40

 tan$14:
	; GetReturnValue £temporary597

 tan$15:
	; PushFloat cos_of_x
	fld qword [rbp + 32]

 tan$16:
	; Divide £temporary598 £temporary597 cos_of_x
	fdiv

 tan$17:
	; Return £temporary598
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$18:
	; Assign errno EDOM
	mov dword [errno], 6

 tan$19:
	; PushFloat floating8$0#
	fldz

 tan$20:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$21:
	; FunctionEnd tan

section .data

@1729floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .text

 asin:
	; PushFloat x
	fld qword [rbp + 24]

 asin$1:
	; PushFloat floating8$1#
	fld1

 asin$2:
	; NotEqual 5 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jne asin$5

 asin$3:
	; PushFloat floating8$1.57#
	fld qword [@1729floating8$1.57#]

 asin$4:
	; Return floating8$1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$5:
	; PushFloat x
	fld qword [rbp + 24]

 asin$6:
	; PushFloat floating8$0#
	fldz

 asin$7:
	; GreaterThanEqual 17 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe asin$17

 asin$8:
	; PreCall 32

 asin$9:
	; PushFloat x
	fld qword [rbp + 24]

 asin$10:
	; Minus £temporary605 x
	fchs

 asin$11:
	; Parameter 56 double £temporary605
	fstp qword [rbp + 56]

 asin$12:
	; Call 32 asin 0
	mov qword [rbp + 32], asin$13
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asin

 asin$13:
	; PostCall 32

 asin$14:
	; GetReturnValue £temporary606

 asin$15:
	; Minus £temporary607 £temporary606
	fchs

 asin$16:
	; Return £temporary607
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$17:
	; PushFloat x
	fld qword [rbp + 24]

 asin$18:
	; PushFloat floating8$1#
	fld1

 asin$19:
	; GreaterThanEqual 38 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jbe asin$38

 asin$20:
	; PreCall 32

 asin$21:
	; PushFloat x
	fld qword [rbp + 24]

 asin$22:
	; PreCall 32
	fstp qword [rbp + 32]

 asin$23:
	; PushFloat floating8$1#
	fld1

 asin$24:
	; PushFloat x
	fld qword [rbp + 24]

 asin$25:
	; PushFloat x
	fld qword [rbp + 24]

 asin$26:
	; Multiply £temporary609 x x
	fmul

 asin$27:
	; Subtract £temporary610 floating8$1# £temporary609
	fsub

 asin$28:
	; Parameter 56 double £temporary610
	fstp qword [rbp + 64]

 asin$29:
	; Call 32 sqrt 0
	mov qword [rbp + 40], asin$30
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sqrt

 asin$30:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 asin$31:
	; GetReturnValue £temporary611

 asin$32:
	; Divide £temporary612 x £temporary611
	fdiv

 asin$33:
	; Parameter 56 double £temporary612
	fstp qword [rbp + 56]

 asin$34:
	; Call 32 atan 0
	mov qword [rbp + 32], asin$35
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 asin$35:
	; PostCall 32

 asin$36:
	; GetReturnValue £temporary613

 asin$37:
	; Return £temporary613
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$38:
	; Assign errno EDOM
	mov dword [errno], 6

 asin$39:
	; PushFloat floating8$0#
	fldz

 asin$40:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$41:
	; FunctionEnd asin

section .data

@1745floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1748floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .text

 acos:
	; PushFloat x
	fld qword [rbp + 24]

 acos$1:
	; PushFloat floating8$0#
	fldz

 acos$2:
	; NotEqual 5 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jne acos$5

 acos$3:
	; PushFloat floating8$1.57#
	fld qword [@1745floating8$1.57#]

 acos$4:
	; Return floating8$1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$5:
	; PushFloat x
	fld qword [rbp + 24]

 acos$6:
	; PushFloat floating8$0#
	fldz

 acos$7:
	; GreaterThanEqual 18 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe acos$18

 acos$8:
	; PushFloat floating8$3.14#
	fld qword [@1748floating8$3.14#]

 acos$9:
	; PreCall 32
	fstp qword [rbp + 32]

 acos$10:
	; PushFloat x
	fld qword [rbp + 24]

 acos$11:
	; Minus £temporary625 x
	fchs

 acos$12:
	; Parameter 56 double £temporary625
	fstp qword [rbp + 64]

 acos$13:
	; Call 32 acos 0
	mov qword [rbp + 40], acos$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp acos

 acos$14:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 acos$15:
	; GetReturnValue £temporary626

 acos$16:
	; Subtract £temporary627 floating8$3.14# £temporary626
	fsub

 acos$17:
	; Return £temporary627
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$18:
	; PushFloat x
	fld qword [rbp + 24]

 acos$19:
	; PushFloat floating8$1#
	fld1

 acos$20:
	; GreaterThan 39 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jb acos$39

 acos$21:
	; PreCall 32

 acos$22:
	; PreCall 32

 acos$23:
	; PushFloat floating8$1#
	fld1

 acos$24:
	; PushFloat x
	fld qword [rbp + 24]

 acos$25:
	; PushFloat x
	fld qword [rbp + 24]

 acos$26:
	; Multiply £temporary629 x x
	fmul

 acos$27:
	; Subtract £temporary630 floating8$1# £temporary629
	fsub

 acos$28:
	; Parameter 56 double £temporary630
	fstp qword [rbp + 56]

 acos$29:
	; Call 32 sqrt 0
	mov qword [rbp + 32], acos$30
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

 acos$30:
	; PostCall 32

 acos$31:
	; GetReturnValue £temporary631

 acos$32:
	; PushFloat x
	fld qword [rbp + 24]

 acos$33:
	; Divide £temporary632 £temporary631 x
	fdiv

 acos$34:
	; Parameter 56 double £temporary632
	fstp qword [rbp + 56]

 acos$35:
	; Call 32 atan 0
	mov qword [rbp + 32], acos$36
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 acos$36:
	; PostCall 32

 acos$37:
	; GetReturnValue £temporary633

 acos$38:
	; Return £temporary633
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$39:
	; Assign errno EDOM
	mov dword [errno], 6

 acos$40:
	; PushFloat floating8$0#
	fldz

 acos$41:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$42:
	; FunctionEnd acos

section .data

@1764floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1767floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .data

@1773floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1786floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1787floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 atan:
	; PushFloat x
	fld qword [rbp + 24]

 atan$1:
	; PushFloat floating8$0#
	fldz

 atan$2:
	; GreaterThanEqual 12 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan$12

 atan$3:
	; PreCall 32

 atan$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan$5:
	; Minus £temporary644 x
	fchs

 atan$6:
	; Parameter 56 double £temporary644
	fstp qword [rbp + 56]

 atan$7:
	; Call 32 atan 0
	mov qword [rbp + 32], atan$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 atan$8:
	; PostCall 32

 atan$9:
	; GetReturnValue £temporary645

 atan$10:
	; Minus £temporary646 £temporary645
	fchs

 atan$11:
	; Return £temporary646
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$12:
	; PushFloat x
	fld qword [rbp + 24]

 atan$13:
	; PushFloat floating8$1#
	fld1

 atan$14:
	; LessThanEqual 26 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jae atan$26

 atan$15:
	; PushFloat floating8$1.57#
	fld qword [@1764floating8$1.57#]

 atan$16:
	; PreCall 32
	fstp qword [rbp + 32]

 atan$17:
	; PushFloat floating8$1#
	fld1

 atan$18:
	; PushFloat x
	fld qword [rbp + 24]

 atan$19:
	; Divide £temporary648 floating8$1# x
	fdiv

 atan$20:
	; Parameter 56 double £temporary648
	fstp qword [rbp + 64]

 atan$21:
	; Call 32 atan 0
	mov qword [rbp + 40], atan$22
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan$22:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 atan$23:
	; GetReturnValue £temporary649

 atan$24:
	; Subtract £temporary650 floating8$1.57# £temporary649
	fsub

 atan$25:
	; Return £temporary650
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$26:
	; PushFloat x
	fld qword [rbp + 24]

 atan$27:
	; PushFloat floating8$0.5#
	fld qword [@1767floating8$0.5#]

 atan$28:
	; LessThanEqual 51 x floating8$0.5#
	fcompp
	fstsw ax
	sahf
	jae atan$51

 atan$29:
	; PushFloat floating8$2#
	fld qword [@1773floating8$2#]

 atan$30:
	; PreCall 32
	fstp qword [rbp + 32]

 atan$31:
	; PushFloat x
	fld qword [rbp + 24]

 atan$32:
	; PushFloat floating8$1#
	fld1

 atan$33:
	; PreCall 32
	fstp qword [rbp + 40]
	fstp qword [rbp + 48]

 atan$34:
	; PushFloat floating8$1#
	fld1

 atan$35:
	; PushFloat x
	fld qword [rbp + 24]

 atan$36:
	; PushFloat x
	fld qword [rbp + 24]

 atan$37:
	; Multiply £temporary652 x x
	fmul

 atan$38:
	; Add £temporary653 floating8$1# £temporary652
	fadd

 atan$39:
	; Parameter 56 double £temporary653
	fstp qword [rbp + 88]

 atan$40:
	; Call 32 sqrt 0
	mov qword [rbp + 64], atan$41
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

 atan$41:
	; PostCall 32
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 56]

 atan$42:
	; GetReturnValue £temporary654

 atan$43:
	; Add £temporary655 floating8$1# £temporary654
	fadd

 atan$44:
	; Divide £temporary656 x £temporary655
	fdiv

 atan$45:
	; Parameter 56 double £temporary656
	fstp qword [rbp + 64]

 atan$46:
	; Call 32 atan 0
	mov qword [rbp + 40], atan$47
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan$47:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 atan$48:
	; GetReturnValue £temporary657

 atan$49:
	; Multiply £temporary658 floating8$2# £temporary657
	fmul

 atan$50:
	; Return £temporary658
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$51:
	; PushFloat floating8$0#
	fldz

 atan$52:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$53:
	; PushFloat floating8$1#
	fld1

 atan$54:
	; PopFloat sign
	fstp qword [rbp + 48]

 atan$55:
	; PushFloat floating8$1#
	fld1

 atan$56:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$57:
	; PushFloat x
	fld qword [rbp + 24]

 atan$58:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$59:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$60:
	; PushFloat product
	fld qword [rbp + 64]

 atan$61:
	; Multiply £temporary659 sign product
	fmul

 atan$62:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$63:
	; Divide £temporary660 £temporary659 denominator
	fdiv

 atan$64:
	; PopFloat term
	fstp qword [rbp + 32]

 atan$65:
	; PushFloat sum
	fld qword [rbp + 40]

 atan$66:
	; PushFloat term
	fld qword [rbp + 32]

 atan$67:
	; Add £temporary661 sum term
	fadd

 atan$68:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$69:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$70:
	; Minus £temporary662 sign
	fchs

 atan$71:
	; PopFloat sign
	fstp qword [rbp + 48]

 atan$72:
	; PushFloat product
	fld qword [rbp + 64]

 atan$73:
	; PushFloat x
	fld qword [rbp + 24]

 atan$74:
	; PushFloat x
	fld qword [rbp + 24]

 atan$75:
	; Multiply £temporary663 x x
	fmul

 atan$76:
	; Multiply £temporary664 product £temporary663
	fmul

 atan$77:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$78:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$79:
	; PushFloat floating8$2#
	fld qword [@1786floating8$2#]

 atan$80:
	; Add £temporary665 denominator floating8$2#
	fadd

 atan$81:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$82:
	; PreCall 72

 atan$83:
	; PushFloat term
	fld qword [rbp + 32]

 atan$84:
	; Parameter 96 double term
	fstp qword [rbp + 96]

 atan$85:
	; Call 72 fabs 0
	mov qword [rbp + 72], atan$86
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 atan$86:
	; PostCall 72

 atan$87:
	; GetReturnValue £temporary666

 atan$88:
	; PushFloat floating8$0.000000001#
	fld qword [@1787floating8$0.000000001#]

 atan$89:
	; GreaterThanEqual 59 £temporary666 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe atan$59

 atan$90:
	; PushFloat sum
	fld qword [rbp + 40]

 atan$91:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$92:
	; FunctionEnd atan

section .data

@1796floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@1802floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@1811floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1821floating8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .text

 atan2:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$1:
	; PushFloat floating8$0#
	fldz

 atan2$2:
	; LessThanEqual 12 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jae atan2$12

 atan2$3:
	; PreCall 40

 atan2$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$5:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$6:
	; Divide £temporary680 x y
	fdiv

 atan2$7:
	; Parameter 64 double £temporary680
	fstp qword [rbp + 64]

 atan2$8:
	; Call 40 atan 0
	mov qword [rbp + 40], atan2$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan2$9:
	; PostCall 40

 atan2$10:
	; GetReturnValue £temporary681

 atan2$11:
	; Return £temporary681
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$12:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$13:
	; PushFloat floating8$0#
	fldz

 atan2$14:
	; LessThan 29 x floating8$0#
	fcompp
	fstsw ax
	sahf
	ja atan2$29

 atan2$15:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$16:
	; PushFloat floating8$0#
	fldz

 atan2$17:
	; GreaterThanEqual 29 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$29

 atan2$18:
	; PushFloat floating8$3.14#
	fld qword [@1796floating8$3.14#]

 atan2$19:
	; PreCall 40
	fstp qword [rbp + 40]

 atan2$20:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$21:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$22:
	; Divide £temporary685 x y
	fdiv

 atan2$23:
	; Parameter 64 double £temporary685
	fstp qword [rbp + 72]

 atan2$24:
	; Call 40 atan 0
	mov qword [rbp + 48], atan2$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2$25:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2$26:
	; GetReturnValue £temporary686

 atan2$27:
	; Add £temporary687 floating8$3.14# £temporary686
	fadd

 atan2$28:
	; Return £temporary687
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$29:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$30:
	; PushFloat floating8$0#
	fldz

 atan2$31:
	; GreaterThanEqual 46 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$46

 atan2$32:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$33:
	; PushFloat floating8$0#
	fldz

 atan2$34:
	; GreaterThanEqual 46 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$46

 atan2$35:
	; PushFloat floating8$minus3.14#
	fld qword [@1802floating8$minus3.14#]

 atan2$36:
	; PreCall 40
	fstp qword [rbp + 40]

 atan2$37:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$38:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$39:
	; Divide £temporary691 x y
	fdiv

 atan2$40:
	; Parameter 64 double £temporary691
	fstp qword [rbp + 72]

 atan2$41:
	; Call 40 atan 0
	mov qword [rbp + 48], atan2$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2$42:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2$43:
	; GetReturnValue £temporary692

 atan2$44:
	; Add £temporary693 floating8$minus3.14# £temporary692
	fadd

 atan2$45:
	; Return £temporary693
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$46:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$47:
	; PushFloat floating8$0#
	fldz

 atan2$48:
	; LessThanEqual 54 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae atan2$54

 atan2$49:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$50:
	; PushFloat floating8$0#
	fldz

 atan2$51:
	; NotEqual 54 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jne atan2$54

 atan2$52:
	; PushFloat floating8$1.57#
	fld qword [@1811floating8$1.57#]

 atan2$53:
	; Return floating8$1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$54:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$55:
	; PushFloat floating8$0#
	fldz

 atan2$56:
	; GreaterThanEqual 62 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$62

 atan2$57:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$58:
	; PushFloat floating8$0#
	fldz

 atan2$59:
	; NotEqual 62 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jne atan2$62

 atan2$60:
	; PushFloat floating8$minus1.57#
	fld qword [@1821floating8$minus1.57#]

 atan2$61:
	; Return floating8$minus1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$62:
	; Assign errno EDOM
	mov dword [errno], 6

 atan2$63:
	; PushFloat floating8$0#
	fldz

 atan2$64:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$65:
	; FunctionEnd atan2

section .data

@1826floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 sinh:
	; PreCall 32

 sinh$1:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 sinh$3:
	; Call 32 exp 0
	mov qword [rbp + 32], sinh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

 sinh$4:
	; PostCall 32

 sinh$5:
	; GetReturnValue £temporary713

 sinh$6:
	; PreCall 32
	fstp qword [rbp + 32]

 sinh$7:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$8:
	; Minus £temporary714 x
	fchs

 sinh$9:
	; Parameter 56 double £temporary714
	fstp qword [rbp + 64]

 sinh$10:
	; Call 32 exp 0
	mov qword [rbp + 40], sinh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 sinh$11:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 sinh$12:
	; GetReturnValue £temporary715

 sinh$13:
	; Subtract £temporary716 £temporary713 £temporary715
	fsub

 sinh$14:
	; PushFloat floating8$2#
	fld qword [@1826floating8$2#]

 sinh$15:
	; Divide £temporary717 £temporary716 floating8$2#
	fdiv

 sinh$16:
	; Return £temporary717
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sinh$17:
	; FunctionEnd sinh

section .data

@1829floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 cosh:
	; PreCall 32

 cosh$1:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 cosh$3:
	; Call 32 exp 0
	mov qword [rbp + 32], cosh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp exp

 cosh$4:
	; PostCall 32

 cosh$5:
	; GetReturnValue £temporary720

 cosh$6:
	; PreCall 32
	fstp qword [rbp + 32]

 cosh$7:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$8:
	; Minus £temporary721 x
	fchs

 cosh$9:
	; Parameter 56 double £temporary721
	fstp qword [rbp + 64]

 cosh$10:
	; Call 32 exp 0
	mov qword [rbp + 40], cosh$11
	mov [rbp + 48], rbp
	add rbp, 40
	jmp exp

 cosh$11:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 cosh$12:
	; GetReturnValue £temporary722

 cosh$13:
	; Add £temporary723 £temporary720 £temporary722
	fadd

 cosh$14:
	; PushFloat floating8$2#
	fld qword [@1829floating8$2#]

 cosh$15:
	; Divide £temporary724 £temporary723 floating8$2#
	fdiv

 cosh$16:
	; Return £temporary724
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cosh$17:
	; FunctionEnd cosh

section .text

 tanh:
	; PreCall 32

 tanh$1:
	; PushFloat x
	fld qword [rbp + 24]

 tanh$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 tanh$3:
	; Call 32 sinh 0
	mov qword [rbp + 32], tanh$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sinh

 tanh$4:
	; PostCall 32

 tanh$5:
	; GetReturnValue £temporary727

 tanh$6:
	; PreCall 32
	fstp qword [rbp + 32]

 tanh$7:
	; PushFloat x
	fld qword [rbp + 24]

 tanh$8:
	; Parameter 56 double x
	fstp qword [rbp + 64]

 tanh$9:
	; Call 32 cosh 0
	mov qword [rbp + 40], tanh$10
	mov [rbp + 48], rbp
	add rbp, 40
	jmp cosh

 tanh$10:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 tanh$11:
	; GetReturnValue £temporary728

 tanh$12:
	; Divide £temporary729 £temporary727 £temporary728
	fdiv

 tanh$13:
	; Return £temporary729
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$14:
	; FunctionEnd tanh

section .text

 floor:
	; PushFloat x
	fld qword [rbp + 24]

 floor$1:
	; PushFloat floating8$0#
	fldz

 floor$2:
	; GreaterThanEqual 12 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe floor$12

 floor$3:
	; PreCall 32

 floor$4:
	; PushFloat x
	fld qword [rbp + 24]

 floor$5:
	; Minus £temporary733 x
	fchs

 floor$6:
	; Parameter 56 double £temporary733
	fstp qword [rbp + 56]

 floor$7:
	; Call 32 ceil 0
	mov qword [rbp + 32], floor$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp ceil

 floor$8:
	; PostCall 32

 floor$9:
	; GetReturnValue £temporary734

 floor$10:
	; Minus £temporary735 £temporary734
	fchs

 floor$11:
	; Return £temporary735
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$12:
	; PushFloat x
	fld qword [rbp + 24]

 floor$13:
	; FloatingToIntegral £temporary738 x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 floor$14:
	; IntegralToFloating £temporary739 £temporary738
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 floor$15:
	; Return £temporary739
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$16:
	; FunctionEnd floor

section .data

@1837floating8$0.999999999999#:
	; Initializer Double 0.999999999999
	dq 0.999999999999

section .text

 ceil:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$1:
	; PushFloat floating8$0#
	fldz

 ceil$2:
	; GreaterThanEqual 12 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe ceil$12

 ceil$3:
	; PreCall 32

 ceil$4:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$5:
	; Minus £temporary742 x
	fchs

 ceil$6:
	; Parameter 56 double £temporary742
	fstp qword [rbp + 56]

 ceil$7:
	; Call 32 floor 0
	mov qword [rbp + 32], ceil$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp floor

 ceil$8:
	; PostCall 32

 ceil$9:
	; GetReturnValue £temporary743

 ceil$10:
	; Minus £temporary744 £temporary743
	fchs

 ceil$11:
	; Return £temporary744
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$12:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$13:
	; PushFloat floating8$0.999999999999#
	fld qword [@1837floating8$0.999999999999#]

 ceil$14:
	; Add £temporary747 x floating8$0.999999999999#
	fadd

 ceil$15:
	; FloatingToIntegral £temporary748 £temporary747
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$16:
	; IntegralToFloating £temporary749 £temporary748
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 ceil$17:
	; Return £temporary749
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$18:
	; FunctionEnd ceil

section .data

@1841floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .data

@1842floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .text

 round:
	; PushFloat x
	fld qword [rbp + 24]

 round$1:
	; PushFloat floating8$0#
	fldz

 round$2:
	; GreaterThanEqual 8 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe round$8

 round$3:
	; PushFloat x
	fld qword [rbp + 24]

 round$4:
	; PushFloat floating8$0.5#
	fld qword [@1841floating8$0.5#]

 round$5:
	; Subtract £temporary752 x floating8$0.5#
	fsub

 round$6:
	; DecreaseStack

 round$7:
	; Jump 11
	jmp round$11

 round$8:
	; PushFloat x
	fld qword [rbp + 24]

 round$9:
	; PushFloat floating8$0.5#
	fld qword [@1842floating8$0.5#]

 round$10:
	; Add £temporary753 x floating8$0.5#
	fadd

 round$11:
	; FloatingToIntegral £temporary755 £temporary754
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; IntegralToFloating £temporary756 £temporary755
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 round$13:
	; Return £temporary756
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 round$14:
	; FunctionEnd round

section .text

 fabs:
	; PushFloat x
	fld qword [rbp + 24]

 fabs$1:
	; PushFloat floating8$0#
	fldz

 fabs$2:
	; GreaterThanEqual 7 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe fabs$7

 fabs$3:
	; PushFloat x
	fld qword [rbp + 24]

 fabs$4:
	; Minus £temporary758 x
	fchs

 fabs$5:
	; DecreaseStack

 fabs$6:
	; Jump 8
	jmp fabs$8

 fabs$7:
	; PushFloat x
	fld qword [rbp + 24]

 fabs$8:
	; Return £temporary759
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$9:
	; FunctionEnd fabs
