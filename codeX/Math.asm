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

@1690floating8$0.000000001#:
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
	; Divide £temporary401 power faculty
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
	; Add £temporary402 sum term
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
	; Multiply £temporary403 power x
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
	; Add £temporary405 index £temporary404
	fadd

 exp$24:
	; TopFloat index
	fst qword [rbp + 32]

 exp$25:
	; Multiply £temporary406 faculty index
	fmul

 exp$26:
	; PopFloat faculty
	fstp qword [rbp + 56]

 exp$27:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary407

 exp$33:
	; PushFloat floating8$0.000000001#
	fld qword [@1690floating8$0.000000001#]

 exp$34:
	; GreaterThanEqual 8 £temporary407 floating8$0.000000001#
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

@1701floating8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .data

@1703floating8$0.368#:
	; Initializer Double 0.368
	dq 0.368

section .data

@1704floating8$0.368#:
	; Initializer Double 0.368
	dq 0.368

section .data

@1705floating8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .data

@1721floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@1722floating8$0.000000001#:
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
	fld qword [@1701floating8$2.71#]

 log$12:
	; Divide £temporary413 x floating8$2.71#
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
	fld qword [@1703floating8$0.368#]

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
	fld qword [@1704floating8$0.368#]

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
	fld qword [@1705floating8$2.71#]

 log$24:
	; Multiply £temporary417 x floating8$2.71#
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
	; Subtract £temporary423 x floating8$1#
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
	; Multiply £temporary424 sign power
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
	; Add £temporary426 index £temporary425
	fadd

 log$46:
	; PopFloat index
	fstp qword [rbp + 36]

 log$47:
	; Divide £temporary427 £temporary424 index
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
	; Add £temporary428 sum term
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
	; Multiply £temporary429 power x_minus_1
	fmul

 log$56:
	; PopFloat power
	fstp qword [rbp + 76]

 log$57:
	; PushFloat sign
	fld qword [rbp + 60]

 log$58:
	; PushFloat floating8$minus1.0#
	fld qword [@1721floating8$minus1.0#]

 log$59:
	; Multiply £temporary430 sign floating8$minus1.0#
	fmul

 log$60:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$61:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary431

 log$67:
	; PushFloat floating8$0.000000001#
	fld qword [@1722floating8$0.000000001#]

 log$68:
	; GreaterThanEqual 39 £temporary431 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe log$39

 log$69:
	; PushFloat sum
	fld qword [rbp + 52]

 log$70:
	; IntegralToFloating £temporary434 n
	fild dword [rbp + 32]

 log$71:
	; Add £temporary433 sum £temporary434
	fadd

 log$72:
	; Return £temporary433
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

@1727floating8$2.30#:
	; Initializer Double 2.30
	dq 2.30

section .text

 log10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary438

 log10$6:
	; PushFloat floating8$2.30#
	fld qword [@1727floating8$2.30#]

 log10$7:
	; Divide £temporary439 £temporary438 floating8$2.30#
	fdiv

 log10$8:
	; Return £temporary439
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

@1748integral8$2#:
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$4:
	; PushFloat y
	fld qword [rbp + 32]

 pow$5:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
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
	; GetReturnValue £temporary442

 pow$11:
	; Multiply £temporary443 y £temporary442
	fmul

 pow$12:
	; Parameter 64 double £temporary443
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
	; GetReturnValue £temporary444

 pow$16:
	; Return £temporary444
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary452

 pow$42:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
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
	; GetReturnValue £temporary453

 pow$48:
	; NotEqual 85 £temporary452 £temporary453
	fcompp
	fstsw ax
	sahf
	jne pow$85

 pow$49:
	; PushFloat y
	fld qword [rbp + 32]

 pow$50:
	; FloatingToIntegral £temporary456 y
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 pow$51:
	; Assign long_y £temporary456
	mov [rbp + 40], rax

 pow$52:
	; Modulo £temporary457 long_y integral8$2#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@1748integral8$2#]

 pow$53:
	; NotEqual 69 £temporary457 integral8$0#
	cmp rdx, 0
	jne pow$69

 pow$54:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$55:
	; PushFloat y
	fld qword [rbp + 32]

 pow$56:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$57:
	; PushFloat x
	fld qword [rbp + 24]

 pow$58:
	; Minus £temporary459 x
	fchs

 pow$59:
	; Parameter 72 double £temporary459
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
	; GetReturnValue £temporary460

 pow$63:
	; Multiply £temporary461 y £temporary460
	fmul

 pow$64:
	; Parameter 72 double £temporary461
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
	; GetReturnValue £temporary462

 pow$68:
	; Return £temporary462
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$69:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$70:
	; PushFloat y
	fld qword [rbp + 32]

 pow$71:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$72:
	; PushFloat x
	fld qword [rbp + 24]

 pow$73:
	; Minus £temporary463 x
	fchs

 pow$74:
	; Parameter 72 double £temporary463
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
	; GetReturnValue £temporary464

 pow$78:
	; Multiply £temporary465 y £temporary464
	fmul

 pow$79:
	; Parameter 72 double £temporary465
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
	; GetReturnValue £temporary466

 pow$83:
	; Minus £temporary467 £temporary466
	fchs

 pow$84:
	; Return £temporary467
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

@1756floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 ldexp:
	; PushFloat x
	fld qword [rbp + 24]

 ldexp$1:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 36]

 ldexp$2:
	; PushFloat floating8$2#
	fld qword [@1756floating8$2#]

 ldexp$3:
	; Parameter 60 double floating8$2#
	fstp qword [rbp + 68]

 ldexp$4:
	; IntegralToFloating £temporary486 n
	fild dword [rbp + 32]

 ldexp$5:
	; Parameter 68 double £temporary486
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
	; GetReturnValue £temporary487

 ldexp$9:
	; Multiply £temporary488 x £temporary487
	fmul

 ldexp$10:
	; Return £temporary488
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldexp$11:
	; FunctionEnd ldexp

section .data

@1759floating8$0.693#:
	; Initializer Double 0.693
	dq 0.693

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 @1758$log2:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @1758$log2$1:
	; PushFloat x
	fld qword [rbp + 24]

 @1758$log2$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 @1758$log2$3:
	; Call 32 log 0
	mov qword [rbp + 32], @1758$log2$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 @1758$log2$4:
	; PostCall 32

 @1758$log2$5:
	; GetReturnValue £temporary491

 @1758$log2$6:
	; PushFloat floating8$0.693#
	fld qword [@1759floating8$0.693#]

 @1758$log2$7:
	; Divide £temporary492 £temporary491 floating8$0.693#
	fdiv

 @1758$log2$8:
	; FloatingToIntegral £temporary493 £temporary492
	fistp dword [container4bytes#]
	mov ebx, [container4bytes#]

 @1758$log2$9:
	; Return £temporary493
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @1758$log2$10:
	; FunctionEnd log2

section .data

@1766floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1771floating8$2#:
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$4:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary496

 frexp$10:
	; Parameter 64 double £temporary496
	fstp qword [rbp + 64]

 frexp$11:
	; Call 40 log2 0
	mov qword [rbp + 40], frexp$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp @1758$log2

 frexp$12:
	; PostCall 40

 frexp$13:
	; GetReturnValue £temporary497

 frexp$14:
	; IntegralToIntegral £temporary498 £temporary497

 frexp$15:
	; Assign exponent £temporary498
	mov [rbp + 40], ebx

 frexp$16:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$17:
	; PushFloat floating8$2#
	fld qword [@1766floating8$2#]

 frexp$18:
	; Parameter 68 double floating8$2#
	fstp qword [rbp + 68]

 frexp$19:
	; IntegralToFloating £temporary499 exponent
	fild dword [rbp + 40]

 frexp$20:
	; Parameter 76 double £temporary499
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
	; GetReturnValue £temporary500

 frexp$24:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$25:
	; GreaterThanEqual 27 £temporary500 x
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
	; Dereference £temporary506 p 0
	mov rsi, [rbp + 32]

 frexp$29:
	; Assign £temporary506 exponent
	mov eax, [rbp + 40]
	mov [rsi], eax

 frexp$30:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$31:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 44]

 frexp$32:
	; PushFloat floating8$2#
	fld qword [@1771floating8$2#]

 frexp$33:
	; Parameter 68 double floating8$2#
	fstp qword [rbp + 76]

 frexp$34:
	; IntegralToFloating £temporary509 exponent
	fild dword [rbp + 40]

 frexp$35:
	; Parameter 76 double £temporary509
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
	; GetReturnValue £temporary510

 frexp$39:
	; Divide £temporary511 x £temporary510
	fdiv

 frexp$40:
	; Return £temporary511
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$41:
	; Equal 44 p integral8$0#
	cmp qword [rbp + 32], 0
	je frexp$44

 frexp$42:
	; Dereference £temporary513 p 0
	mov rsi, [rbp + 32]

 frexp$43:
	; Assign £temporary513 integral4$0#
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

@1785floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1786floating8$0.000000001#:
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
	; Divide £temporary525 x root_i
	fdiv

 sqrt$10:
	; Add £temporary526 root_i £temporary525
	fadd

 sqrt$11:
	; PushFloat floating8$2#
	fld qword [@1785floating8$2#]

 sqrt$12:
	; Divide £temporary527 £temporary526 floating8$2#
	fdiv

 sqrt$13:
	; PopFloat root_i_plus_1
	fstp qword [rbp + 40]

 sqrt$14:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sqrt$15:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$16:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$17:
	; Subtract £temporary528 root_i_plus_1 root_i
	fsub

 sqrt$18:
	; Parameter 72 double £temporary528
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
	; GetReturnValue £temporary529

 sqrt$22:
	; PushFloat floating8$0.000000001#
	fld qword [@1786floating8$0.000000001#]

 sqrt$23:
	; GreaterThanEqual 5 £temporary529 floating8$0.000000001#
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary534

 modf$6:
	; TopFloat abs_x
	fst qword [rbp + 40]

 modf$7:
	; FloatingToIntegral £temporary535 abs_x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 modf$8:
	; IntegralToFloating £temporary536 £temporary535
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
	; Subtract £temporary537 abs_x integral
	fsub

 modf$13:
	; PopFloat fractional
	fstp qword [rbp + 56]

 modf$14:
	; Equal 25 p integral8$0#
	cmp qword [rbp + 32], 0
	je modf$25

 modf$15:
	; Dereference £temporary539 p 0
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
	; Minus £temporary541 integral
	fchs

 modf$24:
	; PopFloat £temporary539
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
	; Minus £temporary546 fractional
	fchs

 modf$33:
	; Return £temporary547
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; Divide £temporary550 x y
	fdiv

 fmod$9:
	; FloatingToIntegral £temporary551 £temporary550
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 fmod$10:
	; IntegralToFloating £temporary553 £temporary551
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 fmod$11:
	; Multiply £temporary552 y £temporary553
	fmul

 fmod$12:
	; Subtract £temporary554 x £temporary552
	fsub

 fmod$13:
	; Parameter 64 double £temporary554
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
	; GetReturnValue £temporary555

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
	; Minus £temporary557 remainder
	fchs

 fmod$26:
	; Return £temporary558
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

@1814floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1819floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1835floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@1836floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 sin:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary562

 sin$6:
	; PushFloat floating8$6.28#
	fld qword [@1814floating8$6.28#]

 sin$7:
	; LessThanEqual 17 £temporary562 floating8$6.28#
	fcompp
	fstsw ax
	sahf
	jae sin$17

 sin$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sin$9:
	; PushFloat x
	fld qword [rbp + 24]

 sin$10:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 sin$11:
	; PushFloat floating8$6.28#
	fld qword [@1819floating8$6.28#]

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
	; GetReturnValue £temporary564

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
	; Multiply £temporary567 sign power
	fmul

 sin$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$31:
	; Divide £temporary568 £temporary567 faculty
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
	; Add £temporary569 sum term
	fadd

 sin$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 sin$37:
	; PushFloat sign
	fld qword [rbp + 56]

 sin$38:
	; PushFloat floating8$minus1#
	fld qword [@1835floating8$minus1#]

 sin$39:
	; Multiply £temporary570 sign floating8$minus1#
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
	; Multiply £temporary571 x x
	fmul

 sin$45:
	; Multiply £temporary572 power £temporary571
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
	; Add £temporary574 index £temporary573
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
	; Add £temporary576 index £temporary575
	fadd

 sin$55:
	; TopFloat index
	fst qword [rbp + 32]

 sin$56:
	; Multiply £temporary577 index index
	fmul

 sin$57:
	; Multiply £temporary578 faculty £temporary577
	fmul

 sin$58:
	; PopFloat faculty
	fstp qword [rbp + 72]

 sin$59:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary579

 sin$65:
	; PushFloat floating8$0.000000001#
	fld qword [@1836floating8$0.000000001#]

 sin$66:
	; GreaterThanEqual 27 £temporary579 floating8$0.000000001#
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

@1844floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1849floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1867floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@1868floating8$0.000000001#:
	; Initializer Double 0.000000001
	dq 0.000000001

section .text

 cos:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary585

 cos$6:
	; PushFloat floating8$6.28#
	fld qword [@1844floating8$6.28#]

 cos$7:
	; LessThanEqual 17 £temporary585 floating8$6.28#
	fcompp
	fstsw ax
	sahf
	jae cos$17

 cos$8:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 cos$9:
	; PushFloat x
	fld qword [rbp + 24]

 cos$10:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 cos$11:
	; PushFloat floating8$6.28#
	fld qword [@1849floating8$6.28#]

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
	; GetReturnValue £temporary587

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
	; Multiply £temporary590 sign power
	fmul

 cos$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$31:
	; Divide £temporary591 £temporary590 faculty
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
	; Add £temporary592 sum term
	fadd

 cos$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 cos$37:
	; PushFloat sign
	fld qword [rbp + 56]

 cos$38:
	; PushFloat floating8$minus1#
	fld qword [@1867floating8$minus1#]

 cos$39:
	; Multiply £temporary593 sign floating8$minus1#
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
	; Multiply £temporary594 x x
	fmul

 cos$45:
	; Multiply £temporary595 power £temporary594
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
	; Add £temporary597 index £temporary596
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
	; Add £temporary599 index £temporary598
	fadd

 cos$55:
	; TopFloat index
	fst qword [rbp + 32]

 cos$56:
	; Multiply £temporary600 index index
	fmul

 cos$57:
	; Multiply £temporary601 faculty £temporary600
	fmul

 cos$58:
	; PopFloat faculty
	fstp qword [rbp + 72]

 cos$59:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary602

 cos$65:
	; PushFloat floating8$0.000000001#
	fld qword [@1868floating8$0.000000001#]

 cos$66:
	; GreaterThanEqual 27 £temporary602 floating8$0.000000001#
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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary608

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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary610

 tan$15:
	; PushFloat cos_of_x
	fld qword [rbp + 32]

 tan$16:
	; Divide £temporary611 £temporary610 cos_of_x
	fdiv

 tan$17:
	; Return £temporary611
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

@1884floating8$1.57#:
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
	fld qword [@1884floating8$1.57#]

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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$9:
	; PushFloat x
	fld qword [rbp + 24]

 asin$10:
	; Minus £temporary618 x
	fchs

 asin$11:
	; Parameter 56 double £temporary618
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
	; GetReturnValue £temporary619

 asin$15:
	; Minus £temporary620 £temporary619
	fchs

 asin$16:
	; Return £temporary620
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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$21:
	; PushFloat x
	fld qword [rbp + 24]

 asin$22:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
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
	; Multiply £temporary622 x x
	fmul

 asin$27:
	; Subtract £temporary623 floating8$1# £temporary622
	fsub

 asin$28:
	; Parameter 56 double £temporary623
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
	; GetReturnValue £temporary624

 asin$32:
	; Divide £temporary625 x £temporary624
	fdiv

 asin$33:
	; Parameter 56 double £temporary625
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
	; GetReturnValue £temporary626

 asin$37:
	; Return £temporary626
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

@1900floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1903floating8$3.14#:
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
	fld qword [@1900floating8$1.57#]

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
	fld qword [@1903floating8$3.14#]

 acos$9:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 acos$10:
	; PushFloat x
	fld qword [rbp + 24]

 acos$11:
	; Minus £temporary638 x
	fchs

 acos$12:
	; Parameter 56 double £temporary638
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
	; GetReturnValue £temporary639

 acos$16:
	; Subtract £temporary640 floating8$3.14# £temporary639
	fsub

 acos$17:
	; Return £temporary640
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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$22:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; Multiply £temporary642 x x
	fmul

 acos$27:
	; Subtract £temporary643 floating8$1# £temporary642
	fsub

 acos$28:
	; Parameter 56 double £temporary643
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
	; GetReturnValue £temporary644

 acos$32:
	; PushFloat x
	fld qword [rbp + 24]

 acos$33:
	; Divide £temporary645 £temporary644 x
	fdiv

 acos$34:
	; Parameter 56 double £temporary645
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
	; GetReturnValue £temporary646

 acos$38:
	; Return £temporary646
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

@1919floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1922floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .data

@1928floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1941floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1942floating8$0.000000001#:
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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan$5:
	; Minus £temporary657 x
	fchs

 atan$6:
	; Parameter 56 double £temporary657
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
	; GetReturnValue £temporary658

 atan$10:
	; Minus £temporary659 £temporary658
	fchs

 atan$11:
	; Return £temporary659
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
	fld qword [@1919floating8$1.57#]

 atan$16:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 atan$17:
	; PushFloat floating8$1#
	fld1

 atan$18:
	; PushFloat x
	fld qword [rbp + 24]

 atan$19:
	; Divide £temporary661 floating8$1# x
	fdiv

 atan$20:
	; Parameter 56 double £temporary661
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
	; GetReturnValue £temporary662

 atan$24:
	; Subtract £temporary663 floating8$1.57# £temporary662
	fsub

 atan$25:
	; Return £temporary663
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$26:
	; PushFloat x
	fld qword [rbp + 24]

 atan$27:
	; PushFloat floating8$0.5#
	fld qword [@1922floating8$0.5#]

 atan$28:
	; LessThanEqual 51 x floating8$0.5#
	fcompp
	fstsw ax
	sahf
	jae atan$51

 atan$29:
	; PushFloat floating8$2#
	fld qword [@1928floating8$2#]

 atan$30:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 atan$31:
	; PushFloat x
	fld qword [rbp + 24]

 atan$32:
	; PushFloat floating8$1#
	fld1

 atan$33:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 3
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
	; Multiply £temporary665 x x
	fmul

 atan$38:
	; Add £temporary666 floating8$1# £temporary665
	fadd

 atan$39:
	; Parameter 56 double £temporary666
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
	; GetReturnValue £temporary667

 atan$43:
	; Add £temporary668 floating8$1# £temporary667
	fadd

 atan$44:
	; Divide £temporary669 x £temporary668
	fdiv

 atan$45:
	; Parameter 56 double £temporary669
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
	; GetReturnValue £temporary670

 atan$49:
	; Multiply £temporary671 floating8$2# £temporary670
	fmul

 atan$50:
	; Return £temporary671
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
	; Multiply £temporary672 sign product
	fmul

 atan$62:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$63:
	; Divide £temporary673 £temporary672 denominator
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
	; Add £temporary674 sum term
	fadd

 atan$68:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$69:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$70:
	; Minus £temporary675 sign
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
	; Multiply £temporary676 x x
	fmul

 atan$76:
	; Multiply £temporary677 product £temporary676
	fmul

 atan$77:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$78:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$79:
	; PushFloat floating8$2#
	fld qword [@1941floating8$2#]

 atan$80:
	; Add £temporary678 denominator floating8$2#
	fadd

 atan$81:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$82:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary679

 atan$88:
	; PushFloat floating8$0.000000001#
	fld qword [@1942floating8$0.000000001#]

 atan$89:
	; GreaterThanEqual 59 £temporary679 floating8$0.000000001#
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

@1951floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@1957floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@1966floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1976floating8$minus1.57#:
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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$5:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$6:
	; Divide £temporary693 x y
	fdiv

 atan2$7:
	; Parameter 64 double £temporary693
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
	; GetReturnValue £temporary694

 atan2$11:
	; Return £temporary694
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
	fld qword [@1951floating8$3.14#]

 atan2$19:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2$20:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$21:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$22:
	; Divide £temporary698 x y
	fdiv

 atan2$23:
	; Parameter 64 double £temporary698
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
	; GetReturnValue £temporary699

 atan2$27:
	; Add £temporary700 floating8$3.14# £temporary699
	fadd

 atan2$28:
	; Return £temporary700
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
	fld qword [@1957floating8$minus3.14#]

 atan2$36:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2$37:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$38:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$39:
	; Divide £temporary704 x y
	fdiv

 atan2$40:
	; Parameter 64 double £temporary704
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
	; GetReturnValue £temporary705

 atan2$44:
	; Add £temporary706 floating8$minus3.14# £temporary705
	fadd

 atan2$45:
	; Return £temporary706
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
	fld qword [@1966floating8$1.57#]

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
	fld qword [@1976floating8$minus1.57#]

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

@1981floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 sinh:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary726

 sinh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 sinh$7:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$8:
	; Minus £temporary727 x
	fchs

 sinh$9:
	; Parameter 56 double £temporary727
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
	; GetReturnValue £temporary728

 sinh$13:
	; Subtract £temporary729 £temporary726 £temporary728
	fsub

 sinh$14:
	; PushFloat floating8$2#
	fld qword [@1981floating8$2#]

 sinh$15:
	; Divide £temporary730 £temporary729 floating8$2#
	fdiv

 sinh$16:
	; Return £temporary730
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sinh$17:
	; FunctionEnd sinh

section .data

@1984floating8$2#:
	; Initializer Double 2
	dq 2.0

section .text

 cosh:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary733

 cosh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 cosh$7:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$8:
	; Minus £temporary734 x
	fchs

 cosh$9:
	; Parameter 56 double £temporary734
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
	; GetReturnValue £temporary735

 cosh$13:
	; Add £temporary736 £temporary733 £temporary735
	fadd

 cosh$14:
	; PushFloat floating8$2#
	fld qword [@1984floating8$2#]

 cosh$15:
	; Divide £temporary737 £temporary736 floating8$2#
	fdiv

 cosh$16:
	; Return £temporary737
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cosh$17:
	; FunctionEnd cosh

section .text

 tanh:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

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
	; GetReturnValue £temporary740

 tanh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
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
	; GetReturnValue £temporary741

 tanh$12:
	; Divide £temporary742 £temporary740 £temporary741
	fdiv

 tanh$13:
	; Return £temporary742
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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 floor$4:
	; PushFloat x
	fld qword [rbp + 24]

 floor$5:
	; Minus £temporary746 x
	fchs

 floor$6:
	; Parameter 56 double £temporary746
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
	; GetReturnValue £temporary747

 floor$10:
	; Minus £temporary748 £temporary747
	fchs

 floor$11:
	; Return £temporary748
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$12:
	; PushFloat x
	fld qword [rbp + 24]

 floor$13:
	; FloatingToIntegral £temporary751 x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 floor$14:
	; IntegralToFloating £temporary752 £temporary751
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 floor$15:
	; Return £temporary752
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$16:
	; FunctionEnd floor

section .data

@1992floating8$0.999999999999#:
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
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ceil$4:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$5:
	; Minus £temporary755 x
	fchs

 ceil$6:
	; Parameter 56 double £temporary755
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
	; GetReturnValue £temporary756

 ceil$10:
	; Minus £temporary757 £temporary756
	fchs

 ceil$11:
	; Return £temporary757
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$12:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$13:
	; PushFloat floating8$0.999999999999#
	fld qword [@1992floating8$0.999999999999#]

 ceil$14:
	; Add £temporary760 x floating8$0.999999999999#
	fadd

 ceil$15:
	; FloatingToIntegral £temporary761 £temporary760
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$16:
	; IntegralToFloating £temporary762 £temporary761
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 ceil$17:
	; Return £temporary762
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$18:
	; FunctionEnd ceil

section .data

@1996floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .data

@1997floating8$0.5#:
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
	fld qword [@1996floating8$0.5#]

 round$5:
	; Subtract £temporary765 x floating8$0.5#
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
	fld qword [@1997floating8$0.5#]

 round$10:
	; Add £temporary766 x floating8$0.5#
	fadd

 round$11:
	; FloatingToIntegral £temporary768 £temporary767
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; IntegralToFloating £temporary769 £temporary768
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 round$13:
	; Return £temporary769
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
	; Minus £temporary771 x
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
	; Return £temporary772
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$9:
	; FunctionEnd fabs
