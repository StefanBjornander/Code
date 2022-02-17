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

@1683floating8$0.000000001#:
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
	; Divide £temporary322 power faculty
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
	; Add £temporary323 sum term
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
	; Multiply £temporary324 power x
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
	; Add £temporary326 index £temporary325
	fadd

 exp$24:
	; TopFloat index
	fst qword [rbp + 32]

 exp$25:
	; Multiply £temporary327 faculty index
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
	; GetReturnValue £temporary328

 exp$33:
	; PushFloat floating8$0.000000001#
	fld qword [@1683floating8$0.000000001#]

 exp$34:
	; GreaterThanEqual 8 £temporary328 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe exp$8

 exp$35:
	; PushFloat sum
	fld qword [rbp + 48]

 exp$36:
	; SetReturnValue

 exp$37:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 exp$38:
	; FunctionEnd exp

section .data

@1694floating8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .data

@1696floating8$0.368#:
	; Initializer Double 0.368
	dq 0.368

section .data

@1697floating8$0.368#:
	; Initializer Double 0.368
	dq 0.368

section .data

@1698floating8$2.71#:
	; Initializer Double 2.71
	dq 2.71

section .data

@1715floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@1716floating8$0.000000001#:
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
	; LessThanEqual 75 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae log$75

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
	fld qword [@1694floating8$2.71#]

 log$12:
	; Divide £temporary334 x floating8$2.71#
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
	fld qword [@1696floating8$0.368#]

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
	fld qword [@1697floating8$0.368#]

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
	fld qword [@1698floating8$2.71#]

 log$24:
	; Multiply £temporary338 x floating8$2.71#
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
	; Subtract £temporary344 x floating8$1#
	fsub

 log$37:
	; PopFloat x_minus_1
	fstp qword [rbp + 68]

 log$38:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$39:
	; PopFloat power
	fstp qword [rbp + 76]

 log$40:
	; PushFloat sign
	fld qword [rbp + 60]

 log$41:
	; PushFloat power
	fld qword [rbp + 76]

 log$42:
	; Multiply £temporary345 sign power
	fmul

 log$43:
	; PushFloat index
	fld qword [rbp + 36]

 log$44:
	; PushFloat index
	fld qword [rbp + 36]

 log$45:
	; PushOne
	fld1

 log$46:
	; Add index index floating8$1#
	fadd

 log$47:
	; PopFloat index
	fstp qword [rbp + 36]

 log$48:
	; Divide £temporary349 £temporary345 £temporary348
	fdiv

 log$49:
	; PopFloat term
	fstp qword [rbp + 44]

 log$50:
	; PushFloat sum
	fld qword [rbp + 52]

 log$51:
	; PushFloat term
	fld qword [rbp + 44]

 log$52:
	; Add £temporary350 sum term
	fadd

 log$53:
	; PopFloat sum
	fstp qword [rbp + 52]

 log$54:
	; PushFloat power
	fld qword [rbp + 76]

 log$55:
	; PushFloat x_minus_1
	fld qword [rbp + 68]

 log$56:
	; Multiply £temporary351 power x_minus_1
	fmul

 log$57:
	; PopFloat power
	fstp qword [rbp + 76]

 log$58:
	; PushFloat sign
	fld qword [rbp + 60]

 log$59:
	; PushFloat floating8$minus1.0#
	fld qword [@1715floating8$minus1.0#]

 log$60:
	; Multiply £temporary352 sign floating8$minus1.0#
	fmul

 log$61:
	; PopFloat sign
	fstp qword [rbp + 60]

 log$62:
	; PreCall 84 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 log$63:
	; PushFloat term
	fld qword [rbp + 44]

 log$64:
	; Parameter 108 double term
	fstp qword [rbp + 108]

 log$65:
	; Call 84 fabs 0
	mov qword [rbp + 84], log$66
	mov [rbp + 92], rbp
	add rbp, 84
	jmp fabs

 log$66:
	; PostCall 84

 log$67:
	; GetReturnValue £temporary353

 log$68:
	; PushFloat floating8$0.000000001#
	fld qword [@1716floating8$0.000000001#]

 log$69:
	; GreaterThanEqual 40 £temporary353 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe log$40

 log$70:
	; PushFloat sum
	fld qword [rbp + 52]

 log$71:
	; IntegralToFloating £temporary356 n
	fild dword [rbp + 32]

 log$72:
	; Add £temporary355 sum £temporary356
	fadd

 log$73:
	; SetReturnValue

 log$74:
	; Return £temporary355
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$75:
	; Assign errno EDOM
	mov dword [errno], 6

 log$76:
	; PushFloat floating8$0#
	fldz

 log$77:
	; SetReturnValue

 log$78:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log$79:
	; FunctionEnd log

section .data

@1721floating8$2.30#:
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
	; GetReturnValue £temporary360

 log10$6:
	; PushFloat floating8$2.30#
	fld qword [@1721floating8$2.30#]

 log10$7:
	; Divide £temporary361 £temporary360 floating8$2.30#
	fdiv

 log10$8:
	; SetReturnValue

 log10$9:
	; Return £temporary361
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 log10$10:
	; FunctionEnd log10

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@1742integral8$2#:
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
	; LessThanEqual 18 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae pow$18

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
	; GetReturnValue £temporary364

 pow$11:
	; Multiply £temporary365 y £temporary364
	fmul

 pow$12:
	; Parameter 64 double £temporary365
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
	; GetReturnValue £temporary366

 pow$16:
	; SetReturnValue

 pow$17:
	; Return £temporary366
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$18:
	; PushFloat x
	fld qword [rbp + 24]

 pow$19:
	; PushFloat floating8$0#
	fldz

 pow$20:
	; NotEqual 27 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jne pow$27

 pow$21:
	; PushFloat y
	fld qword [rbp + 32]

 pow$22:
	; PushFloat floating8$0#
	fldz

 pow$23:
	; NotEqual 27 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jne pow$27

 pow$24:
	; PushFloat floating8$1#
	fld1

 pow$25:
	; SetReturnValue

 pow$26:
	; Return floating8$1#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$27:
	; PushFloat x
	fld qword [rbp + 24]

 pow$28:
	; PushFloat floating8$0#
	fldz

 pow$29:
	; NotEqual 36 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jne pow$36

 pow$30:
	; PushFloat y
	fld qword [rbp + 32]

 pow$31:
	; PushFloat floating8$0#
	fldz

 pow$32:
	; LessThanEqual 36 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jae pow$36

 pow$33:
	; PushFloat floating8$0#
	fldz

 pow$34:
	; SetReturnValue

 pow$35:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$36:
	; PushFloat x
	fld qword [rbp + 24]

 pow$37:
	; PushFloat floating8$0#
	fldz

 pow$38:
	; GreaterThanEqual 90 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe pow$90

 pow$39:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$40:
	; PushFloat y
	fld qword [rbp + 32]

 pow$41:
	; Parameter 64 double y
	fstp qword [rbp + 64]

 pow$42:
	; Call 40 floor 0
	mov qword [rbp + 40], pow$43
	mov [rbp + 48], rbp
	add rbp, 40
	jmp floor

 pow$43:
	; PostCall 40

 pow$44:
	; GetReturnValue £temporary374

 pow$45:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 pow$46:
	; PushFloat y
	fld qword [rbp + 32]

 pow$47:
	; Parameter 64 double y
	fstp qword [rbp + 72]

 pow$48:
	; Call 40 ceil 0
	mov qword [rbp + 48], pow$49
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ceil

 pow$49:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 pow$50:
	; GetReturnValue £temporary375

 pow$51:
	; NotEqual 90 £temporary374 £temporary375
	fcompp
	fstsw ax
	sahf
	jne pow$90

 pow$52:
	; PushFloat y
	fld qword [rbp + 32]

 pow$53:
	; FloatingToIntegral £temporary378 y
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 pow$54:
	; Assign long_y £temporary378
	mov [rbp + 40], rax

 pow$55:
	; Modulo £temporary379 long_y integral8$2#
	mov rax, [rbp + 40]
	xor rdx, rdx
	idiv qword [@1742integral8$2#]

 pow$56:
	; NotEqual 73 £temporary379 integral8$0#
	cmp rdx, 0
	jne pow$73

 pow$57:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$58:
	; PushFloat y
	fld qword [rbp + 32]

 pow$59:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$60:
	; PushFloat x
	fld qword [rbp + 24]

 pow$61:
	; Minus £temporary381 x
	fchs

 pow$62:
	; Parameter 72 double £temporary381
	fstp qword [rbp + 80]

 pow$63:
	; Call 48 log 0
	mov qword [rbp + 56], pow$64
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$64:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$65:
	; GetReturnValue £temporary382

 pow$66:
	; Multiply £temporary383 y £temporary382
	fmul

 pow$67:
	; Parameter 72 double £temporary383
	fstp qword [rbp + 72]

 pow$68:
	; Call 48 exp 0
	mov qword [rbp + 48], pow$69
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$69:
	; PostCall 48

 pow$70:
	; GetReturnValue £temporary384

 pow$71:
	; SetReturnValue

 pow$72:
	; Return £temporary384
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$73:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 pow$74:
	; PushFloat y
	fld qword [rbp + 32]

 pow$75:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 48]

 pow$76:
	; PushFloat x
	fld qword [rbp + 24]

 pow$77:
	; Minus £temporary385 x
	fchs

 pow$78:
	; Parameter 72 double £temporary385
	fstp qword [rbp + 80]

 pow$79:
	; Call 48 log 0
	mov qword [rbp + 56], pow$80
	mov [rbp + 64], rbp
	add rbp, 56
	jmp log

 pow$80:
	; PostCall 48
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 56]

 pow$81:
	; GetReturnValue £temporary386

 pow$82:
	; Multiply £temporary387 y £temporary386
	fmul

 pow$83:
	; Parameter 72 double £temporary387
	fstp qword [rbp + 72]

 pow$84:
	; Call 48 exp 0
	mov qword [rbp + 48], pow$85
	mov [rbp + 56], rbp
	add rbp, 48
	jmp exp

 pow$85:
	; PostCall 48

 pow$86:
	; GetReturnValue £temporary388

 pow$87:
	; Minus £temporary389 £temporary388
	fchs

 pow$88:
	; SetReturnValue

 pow$89:
	; Return £temporary389
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$90:
	; Assign errno EDOM
	mov dword [errno], 6

 pow$91:
	; PushFloat floating8$0#
	fldz

 pow$92:
	; SetReturnValue

 pow$93:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 pow$94:
	; FunctionEnd pow

section .data

@1750floating8$2#:
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
	fld qword [@1750floating8$2#]

 ldexp$3:
	; Parameter 60 double floating8$2#
	fstp qword [rbp + 68]

 ldexp$4:
	; IntegralToFloating £temporary408 n
	fild dword [rbp + 32]

 ldexp$5:
	; Parameter 68 double £temporary408
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
	; GetReturnValue £temporary409

 ldexp$9:
	; Multiply £temporary410 x £temporary409
	fmul

 ldexp$10:
	; SetReturnValue

 ldexp$11:
	; Return £temporary410
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ldexp$12:
	; FunctionEnd ldexp

section .data

@1753floating8$0.693#:
	; Initializer Double 0.693
	dq 0.693

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 @1752$log2:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 @1752$log2$1:
	; PushFloat x
	fld qword [rbp + 24]

 @1752$log2$2:
	; Parameter 56 double x
	fstp qword [rbp + 56]

 @1752$log2$3:
	; Call 32 log 0
	mov qword [rbp + 32], @1752$log2$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp log

 @1752$log2$4:
	; PostCall 32

 @1752$log2$5:
	; GetReturnValue £temporary413

 @1752$log2$6:
	; PushFloat floating8$0.693#
	fld qword [@1753floating8$0.693#]

 @1752$log2$7:
	; Divide £temporary414 £temporary413 floating8$0.693#
	fdiv

 @1752$log2$8:
	; FloatingToIntegral £temporary415 £temporary414
	fistp dword [container4bytes#]
	mov ebx, [container4bytes#]

 @1752$log2$9:
	; SetReturnValue

 @1752$log2$10:
	; Return £temporary415
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @1752$log2$11:
	; FunctionEnd log2

section .data

@1760floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1765floating8$2#:
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
	; Equal 42 x floating8$0#
	fcompp
	fstsw ax
	sahf
	je frexp$42

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
	; GetReturnValue £temporary418

 frexp$10:
	; Parameter 64 double £temporary418
	fstp qword [rbp + 64]

 frexp$11:
	; Call 40 log2 0
	mov qword [rbp + 40], frexp$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp @1752$log2

 frexp$12:
	; PostCall 40

 frexp$13:
	; GetReturnValue £temporary419

 frexp$14:
	; IntegralToIntegral £temporary420 £temporary419

 frexp$15:
	; Assign exponent £temporary420
	mov [rbp + 40], ebx

 frexp$16:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 frexp$17:
	; PushFloat floating8$2#
	fld qword [@1760floating8$2#]

 frexp$18:
	; Parameter 68 double floating8$2#
	fstp qword [rbp + 68]

 frexp$19:
	; IntegralToFloating £temporary421 exponent
	fild dword [rbp + 40]

 frexp$20:
	; Parameter 76 double £temporary421
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
	; GetReturnValue £temporary422

 frexp$24:
	; PushFloat x
	fld qword [rbp + 24]

 frexp$25:
	; GreaterThanEqual 27 £temporary422 x
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
	; Dereference £temporary428 p 0
	mov rsi, [rbp + 32]

 frexp$29:
	; Assign £temporary428 exponent
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
	fld qword [@1765floating8$2#]

 frexp$33:
	; Parameter 68 double floating8$2#
	fstp qword [rbp + 76]

 frexp$34:
	; IntegralToFloating £temporary431 exponent
	fild dword [rbp + 40]

 frexp$35:
	; Parameter 76 double £temporary431
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
	; GetReturnValue £temporary432

 frexp$39:
	; Divide £temporary433 x £temporary432
	fdiv

 frexp$40:
	; SetReturnValue

 frexp$41:
	; Return £temporary433
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$42:
	; Equal 45 p integral8$0#
	cmp qword [rbp + 32], 0
	je frexp$45

 frexp$43:
	; Dereference £temporary435 p 0
	mov rsi, [rbp + 32]

 frexp$44:
	; Assign £temporary435 integral4$0#
	mov dword [rsi], 0

 frexp$45:
	; PushFloat floating8$0#
	fldz

 frexp$46:
	; SetReturnValue

 frexp$47:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 frexp$48:
	; FunctionEnd frexp

section .data

@1779floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1780floating8$0.000000001#:
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
	; LessThan 28 x floating8$0#
	fcompp
	fstsw ax
	sahf
	ja sqrt$28

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
	; PopFloat root_i
	fstp qword [rbp + 32]

 sqrt$7:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$8:
	; PushFloat x
	fld qword [rbp + 24]

 sqrt$9:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$10:
	; Divide £temporary447 x root_i
	fdiv

 sqrt$11:
	; Add £temporary448 root_i £temporary447
	fadd

 sqrt$12:
	; PushFloat floating8$2#
	fld qword [@1779floating8$2#]

 sqrt$13:
	; Divide £temporary449 £temporary448 floating8$2#
	fdiv

 sqrt$14:
	; PopFloat root_i_plus_1
	fstp qword [rbp + 40]

 sqrt$15:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sqrt$16:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$17:
	; PushFloat root_i
	fld qword [rbp + 32]

 sqrt$18:
	; Subtract £temporary450 root_i_plus_1 root_i
	fsub

 sqrt$19:
	; Parameter 72 double £temporary450
	fstp qword [rbp + 72]

 sqrt$20:
	; Call 48 fabs 0
	mov qword [rbp + 48], sqrt$21
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fabs

 sqrt$21:
	; PostCall 48

 sqrt$22:
	; GetReturnValue £temporary451

 sqrt$23:
	; PushFloat floating8$0.000000001#
	fld qword [@1780floating8$0.000000001#]

 sqrt$24:
	; GreaterThanEqual 5 £temporary451 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe sqrt$5

 sqrt$25:
	; PushFloat root_i_plus_1
	fld qword [rbp + 40]

 sqrt$26:
	; SetReturnValue

 sqrt$27:
	; Return root_i_plus_1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$28:
	; Assign errno EDOM
	mov dword [errno], 6

 sqrt$29:
	; PushFloat floating8$0#
	fldz

 sqrt$30:
	; SetReturnValue

 sqrt$31:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sqrt$32:
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
	; GetReturnValue £temporary456

 modf$6:
	; PopFloat abs_x
	fstp qword [rbp + 40]

 modf$7:
	; PushFloat abs_x
	fld qword [rbp + 40]

 modf$8:
	; FloatingToIntegral £temporary457 abs_x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 modf$9:
	; IntegralToFloating £temporary458 £temporary457
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 modf$10:
	; PopFloat integral
	fstp qword [rbp + 48]

 modf$11:
	; PushFloat abs_x
	fld qword [rbp + 40]

 modf$12:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$13:
	; Subtract £temporary459 abs_x integral
	fsub

 modf$14:
	; PopFloat fractional
	fstp qword [rbp + 56]

 modf$15:
	; Equal 26 p integral8$0#
	cmp qword [rbp + 32], 0
	je modf$26

 modf$16:
	; Dereference £temporary461 p 0
	mov rsi, [rbp + 32]

 modf$17:
	; PushFloat x
	fld qword [rbp + 24]

 modf$18:
	; PushFloat floating8$0#
	fldz

 modf$19:
	; LessThanEqual 23 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae modf$23

 modf$20:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$21:
	; DecreaseStack

 modf$22:
	; Jump 25
	jmp modf$25

 modf$23:
	; PushFloat integral
	fld qword [rbp + 48]

 modf$24:
	; Minus £temporary463 integral
	fchs

 modf$25:
	; PopFloat £temporary461
	fstp qword [rsi]

 modf$26:
	; PushFloat x
	fld qword [rbp + 24]

 modf$27:
	; PushFloat floating8$0#
	fldz

 modf$28:
	; LessThanEqual 32 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae modf$32

 modf$29:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$30:
	; DecreaseStack

 modf$31:
	; Jump 34
	jmp modf$34

 modf$32:
	; PushFloat fractional
	fld qword [rbp + 56]

 modf$33:
	; Minus £temporary468 fractional
	fchs

 modf$34:
	; SetReturnValue

 modf$35:
	; Return £temporary469
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 modf$36:
	; FunctionEnd modf

section .text

 fmod:
	; PushFloat y
	fld qword [rbp + 32]

 fmod$1:
	; PushFloat floating8$0#
	fldz

 fmod$2:
	; Equal 28 y floating8$0#
	fcompp
	fstsw ax
	sahf
	je fmod$28

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
	; Divide £temporary472 x y
	fdiv

 fmod$9:
	; FloatingToIntegral £temporary473 £temporary472
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 fmod$10:
	; IntegralToFloating £temporary475 £temporary473
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 fmod$11:
	; Multiply £temporary474 y £temporary475
	fmul

 fmod$12:
	; Subtract £temporary476 x £temporary474
	fsub

 fmod$13:
	; Parameter 64 double £temporary476
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
	; GetReturnValue £temporary477

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
	; Minus £temporary479 remainder
	fchs

 fmod$26:
	; SetReturnValue

 fmod$27:
	; Return £temporary480
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$28:
	; Assign errno EDOM
	mov dword [errno], 6

 fmod$29:
	; PushFloat floating8$0#
	fldz

 fmod$30:
	; SetReturnValue

 fmod$31:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fmod$32:
	; FunctionEnd fmod

section .data

@1808floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1813floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1829floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@1830floating8$0.000000001#:
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
	; GetReturnValue £temporary484

 sin$6:
	; PushFloat floating8$6.28#
	fld qword [@1808floating8$6.28#]

 sin$7:
	; LessThanEqual 17 £temporary484 floating8$6.28#
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
	fld qword [@1813floating8$6.28#]

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
	; GetReturnValue £temporary486

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
	; Multiply £temporary489 sign power
	fmul

 sin$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 sin$31:
	; Divide £temporary490 £temporary489 faculty
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
	; Add £temporary491 sum term
	fadd

 sin$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 sin$37:
	; PushFloat sign
	fld qword [rbp + 56]

 sin$38:
	; PushFloat floating8$minus1#
	fld qword [@1829floating8$minus1#]

 sin$39:
	; Multiply £temporary492 sign floating8$minus1#
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
	; Multiply £temporary493 x x
	fmul

 sin$45:
	; Multiply £temporary494 power £temporary493
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
	; Add £temporary496 index £temporary495
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
	; Add £temporary498 index £temporary497
	fadd

 sin$55:
	; TopFloat index
	fst qword [rbp + 32]

 sin$56:
	; Multiply £temporary499 index index
	fmul

 sin$57:
	; Multiply £temporary500 faculty £temporary499
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
	; GetReturnValue £temporary501

 sin$65:
	; PushFloat floating8$0.000000001#
	fld qword [@1830floating8$0.000000001#]

 sin$66:
	; GreaterThanEqual 27 £temporary501 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe sin$27

 sin$67:
	; PushFloat sum
	fld qword [rbp + 48]

 sin$68:
	; SetReturnValue

 sin$69:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sin$70:
	; FunctionEnd sin

section .data

@1838floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1843floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@1861floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@1862floating8$0.000000001#:
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
	; GetReturnValue £temporary507

 cos$6:
	; PushFloat floating8$6.28#
	fld qword [@1838floating8$6.28#]

 cos$7:
	; LessThanEqual 17 £temporary507 floating8$6.28#
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
	fld qword [@1843floating8$6.28#]

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
	; GetReturnValue £temporary509

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
	; Multiply £temporary512 sign power
	fmul

 cos$30:
	; PushFloat faculty
	fld qword [rbp + 72]

 cos$31:
	; Divide £temporary513 £temporary512 faculty
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
	; Add £temporary514 sum term
	fadd

 cos$36:
	; PopFloat sum
	fstp qword [rbp + 48]

 cos$37:
	; PushFloat sign
	fld qword [rbp + 56]

 cos$38:
	; PushFloat floating8$minus1#
	fld qword [@1861floating8$minus1#]

 cos$39:
	; Multiply £temporary515 sign floating8$minus1#
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
	; Multiply £temporary516 x x
	fmul

 cos$45:
	; Multiply £temporary517 power £temporary516
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
	; Add £temporary519 index £temporary518
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
	; Add £temporary521 index £temporary520
	fadd

 cos$55:
	; TopFloat index
	fst qword [rbp + 32]

 cos$56:
	; Multiply £temporary522 index index
	fmul

 cos$57:
	; Multiply £temporary523 faculty £temporary522
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
	; GetReturnValue £temporary524

 cos$65:
	; PushFloat floating8$0.000000001#
	fld qword [@1862floating8$0.000000001#]

 cos$66:
	; GreaterThanEqual 27 £temporary524 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe cos$27

 cos$67:
	; PushFloat sum
	fld qword [rbp + 48]

 cos$68:
	; SetReturnValue

 cos$69:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cos$70:
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
	; GetReturnValue £temporary530

 tan$6:
	; PopFloat cos_of_x
	fstp qword [rbp + 32]

 tan$7:
	; PushFloat cos_of_x
	fld qword [rbp + 32]

 tan$8:
	; PushFloat floating8$0#
	fldz

 tan$9:
	; Equal 20 cos_of_x floating8$0#
	fcompp
	fstsw ax
	sahf
	je tan$20

 tan$10:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tan$11:
	; PushFloat x
	fld qword [rbp + 24]

 tan$12:
	; Parameter 64 double x
	fstp qword [rbp + 64]

 tan$13:
	; Call 40 sin 0
	mov qword [rbp + 40], tan$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sin

 tan$14:
	; PostCall 40

 tan$15:
	; GetReturnValue £temporary532

 tan$16:
	; PushFloat cos_of_x
	fld qword [rbp + 32]

 tan$17:
	; Divide £temporary533 £temporary532 cos_of_x
	fdiv

 tan$18:
	; SetReturnValue

 tan$19:
	; Return £temporary533
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$20:
	; Assign errno EDOM
	mov dword [errno], 6

 tan$21:
	; PushFloat floating8$0#
	fldz

 tan$22:
	; SetReturnValue

 tan$23:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tan$24:
	; FunctionEnd tan

section .data

@1878floating8$1.57#:
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
	; NotEqual 6 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jne asin$6

 asin$3:
	; PushFloat floating8$1.57#
	fld qword [@1878floating8$1.57#]

 asin$4:
	; SetReturnValue

 asin$5:
	; Return floating8$1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$6:
	; PushFloat x
	fld qword [rbp + 24]

 asin$7:
	; PushFloat floating8$0#
	fldz

 asin$8:
	; GreaterThanEqual 19 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe asin$19

 asin$9:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$10:
	; PushFloat x
	fld qword [rbp + 24]

 asin$11:
	; Minus £temporary540 x
	fchs

 asin$12:
	; Parameter 56 double £temporary540
	fstp qword [rbp + 56]

 asin$13:
	; Call 32 asin 0
	mov qword [rbp + 32], asin$14
	mov [rbp + 40], rbp
	add rbp, 32
	jmp asin

 asin$14:
	; PostCall 32

 asin$15:
	; GetReturnValue £temporary541

 asin$16:
	; Minus £temporary542 £temporary541
	fchs

 asin$17:
	; SetReturnValue

 asin$18:
	; Return £temporary542
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$19:
	; PushFloat x
	fld qword [rbp + 24]

 asin$20:
	; PushFloat floating8$1#
	fld1

 asin$21:
	; GreaterThanEqual 41 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jbe asin$41

 asin$22:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 asin$23:
	; PushFloat x
	fld qword [rbp + 24]

 asin$24:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 asin$25:
	; PushFloat floating8$1#
	fld1

 asin$26:
	; PushFloat x
	fld qword [rbp + 24]

 asin$27:
	; PushFloat x
	fld qword [rbp + 24]

 asin$28:
	; Multiply £temporary544 x x
	fmul

 asin$29:
	; Subtract £temporary545 floating8$1# £temporary544
	fsub

 asin$30:
	; Parameter 56 double £temporary545
	fstp qword [rbp + 64]

 asin$31:
	; Call 32 sqrt 0
	mov qword [rbp + 40], asin$32
	mov [rbp + 48], rbp
	add rbp, 40
	jmp sqrt

 asin$32:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 asin$33:
	; GetReturnValue £temporary546

 asin$34:
	; Divide £temporary547 x £temporary546
	fdiv

 asin$35:
	; Parameter 56 double £temporary547
	fstp qword [rbp + 56]

 asin$36:
	; Call 32 atan 0
	mov qword [rbp + 32], asin$37
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 asin$37:
	; PostCall 32

 asin$38:
	; GetReturnValue £temporary548

 asin$39:
	; SetReturnValue

 asin$40:
	; Return £temporary548
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$41:
	; Assign errno EDOM
	mov dword [errno], 6

 asin$42:
	; PushFloat floating8$0#
	fldz

 asin$43:
	; SetReturnValue

 asin$44:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 asin$45:
	; FunctionEnd asin

section .data

@1894floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1897floating8$3.14#:
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
	; NotEqual 6 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jne acos$6

 acos$3:
	; PushFloat floating8$1.57#
	fld qword [@1894floating8$1.57#]

 acos$4:
	; SetReturnValue

 acos$5:
	; Return floating8$1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$6:
	; PushFloat x
	fld qword [rbp + 24]

 acos$7:
	; PushFloat floating8$0#
	fldz

 acos$8:
	; GreaterThanEqual 20 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe acos$20

 acos$9:
	; PushFloat floating8$3.14#
	fld qword [@1897floating8$3.14#]

 acos$10:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 acos$11:
	; PushFloat x
	fld qword [rbp + 24]

 acos$12:
	; Minus £temporary560 x
	fchs

 acos$13:
	; Parameter 56 double £temporary560
	fstp qword [rbp + 64]

 acos$14:
	; Call 32 acos 0
	mov qword [rbp + 40], acos$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp acos

 acos$15:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 acos$16:
	; GetReturnValue £temporary561

 acos$17:
	; Subtract £temporary562 floating8$3.14# £temporary561
	fsub

 acos$18:
	; SetReturnValue

 acos$19:
	; Return £temporary562
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$20:
	; PushFloat x
	fld qword [rbp + 24]

 acos$21:
	; PushFloat floating8$1#
	fld1

 acos$22:
	; GreaterThan 42 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jb acos$42

 acos$23:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$24:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos$25:
	; PushFloat floating8$1#
	fld1

 acos$26:
	; PushFloat x
	fld qword [rbp + 24]

 acos$27:
	; PushFloat x
	fld qword [rbp + 24]

 acos$28:
	; Multiply £temporary564 x x
	fmul

 acos$29:
	; Subtract £temporary565 floating8$1# £temporary564
	fsub

 acos$30:
	; Parameter 56 double £temporary565
	fstp qword [rbp + 56]

 acos$31:
	; Call 32 sqrt 0
	mov qword [rbp + 32], acos$32
	mov [rbp + 40], rbp
	add rbp, 32
	jmp sqrt

 acos$32:
	; PostCall 32

 acos$33:
	; GetReturnValue £temporary566

 acos$34:
	; PushFloat x
	fld qword [rbp + 24]

 acos$35:
	; Divide £temporary567 £temporary566 x
	fdiv

 acos$36:
	; Parameter 56 double £temporary567
	fstp qword [rbp + 56]

 acos$37:
	; Call 32 atan 0
	mov qword [rbp + 32], acos$38
	mov [rbp + 40], rbp
	add rbp, 32
	jmp atan

 acos$38:
	; PostCall 32

 acos$39:
	; GetReturnValue £temporary568

 acos$40:
	; SetReturnValue

 acos$41:
	; Return £temporary568
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$42:
	; Assign errno EDOM
	mov dword [errno], 6

 acos$43:
	; PushFloat floating8$0#
	fldz

 acos$44:
	; SetReturnValue

 acos$45:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos$46:
	; FunctionEnd acos

section .data

@1913floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1916floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .data

@1922floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1935floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@1936floating8$0.000000001#:
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
	; GreaterThanEqual 13 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan$13

 atan$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan$5:
	; Minus £temporary579 x
	fchs

 atan$6:
	; Parameter 56 double £temporary579
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
	; GetReturnValue £temporary580

 atan$10:
	; Minus £temporary581 £temporary580
	fchs

 atan$11:
	; SetReturnValue

 atan$12:
	; Return £temporary581
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$13:
	; PushFloat x
	fld qword [rbp + 24]

 atan$14:
	; PushFloat floating8$1#
	fld1

 atan$15:
	; LessThanEqual 28 x floating8$1#
	fcompp
	fstsw ax
	sahf
	jae atan$28

 atan$16:
	; PushFloat floating8$1.57#
	fld qword [@1913floating8$1.57#]

 atan$17:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 atan$18:
	; PushFloat floating8$1#
	fld1

 atan$19:
	; PushFloat x
	fld qword [rbp + 24]

 atan$20:
	; Divide £temporary583 floating8$1# x
	fdiv

 atan$21:
	; Parameter 56 double £temporary583
	fstp qword [rbp + 64]

 atan$22:
	; Call 32 atan 0
	mov qword [rbp + 40], atan$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan$23:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 atan$24:
	; GetReturnValue £temporary584

 atan$25:
	; Subtract £temporary585 floating8$1.57# £temporary584
	fsub

 atan$26:
	; SetReturnValue

 atan$27:
	; Return £temporary585
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$28:
	; PushFloat x
	fld qword [rbp + 24]

 atan$29:
	; PushFloat floating8$0.5#
	fld qword [@1916floating8$0.5#]

 atan$30:
	; LessThanEqual 54 x floating8$0.5#
	fcompp
	fstsw ax
	sahf
	jae atan$54

 atan$31:
	; PushFloat floating8$2#
	fld qword [@1922floating8$2#]

 atan$32:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 atan$33:
	; PushFloat x
	fld qword [rbp + 24]

 atan$34:
	; PushFloat floating8$1#
	fld1

 atan$35:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 3
	fstp qword [rbp + 40]
	fstp qword [rbp + 48]

 atan$36:
	; PushFloat floating8$1#
	fld1

 atan$37:
	; PushFloat x
	fld qword [rbp + 24]

 atan$38:
	; PushFloat x
	fld qword [rbp + 24]

 atan$39:
	; Multiply £temporary587 x x
	fmul

 atan$40:
	; Add £temporary588 floating8$1# £temporary587
	fadd

 atan$41:
	; Parameter 56 double £temporary588
	fstp qword [rbp + 88]

 atan$42:
	; Call 32 sqrt 0
	mov qword [rbp + 64], atan$43
	mov [rbp + 72], rbp
	add rbp, 64
	jmp sqrt

 atan$43:
	; PostCall 32
	fstp qword [rbp + 56]
	fld qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 56]

 atan$44:
	; GetReturnValue £temporary589

 atan$45:
	; Add £temporary590 floating8$1# £temporary589
	fadd

 atan$46:
	; Divide £temporary591 x £temporary590
	fdiv

 atan$47:
	; Parameter 56 double £temporary591
	fstp qword [rbp + 64]

 atan$48:
	; Call 32 atan 0
	mov qword [rbp + 40], atan$49
	mov [rbp + 48], rbp
	add rbp, 40
	jmp atan

 atan$49:
	; PostCall 32
	fstp qword [rbp + 40]
	fld qword [rbp + 32]
	fld qword [rbp + 40]

 atan$50:
	; GetReturnValue £temporary592

 atan$51:
	; Multiply £temporary593 floating8$2# £temporary592
	fmul

 atan$52:
	; SetReturnValue

 atan$53:
	; Return £temporary593
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$54:
	; PushFloat floating8$0#
	fldz

 atan$55:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$56:
	; PushFloat floating8$1#
	fld1

 atan$57:
	; PopFloat sign
	fstp qword [rbp + 48]

 atan$58:
	; PushFloat floating8$1#
	fld1

 atan$59:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$60:
	; PushFloat x
	fld qword [rbp + 24]

 atan$61:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$62:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$63:
	; PushFloat product
	fld qword [rbp + 64]

 atan$64:
	; Multiply £temporary594 sign product
	fmul

 atan$65:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$66:
	; Divide £temporary595 £temporary594 denominator
	fdiv

 atan$67:
	; PopFloat term
	fstp qword [rbp + 32]

 atan$68:
	; PushFloat sum
	fld qword [rbp + 40]

 atan$69:
	; PushFloat term
	fld qword [rbp + 32]

 atan$70:
	; Add £temporary596 sum term
	fadd

 atan$71:
	; PopFloat sum
	fstp qword [rbp + 40]

 atan$72:
	; PushFloat sign
	fld qword [rbp + 48]

 atan$73:
	; Minus £temporary597 sign
	fchs

 atan$74:
	; PopFloat sign
	fstp qword [rbp + 48]

 atan$75:
	; PushFloat product
	fld qword [rbp + 64]

 atan$76:
	; PushFloat x
	fld qword [rbp + 24]

 atan$77:
	; PushFloat x
	fld qword [rbp + 24]

 atan$78:
	; Multiply £temporary598 x x
	fmul

 atan$79:
	; Multiply £temporary599 product £temporary598
	fmul

 atan$80:
	; PopFloat product
	fstp qword [rbp + 64]

 atan$81:
	; PushFloat denominator
	fld qword [rbp + 56]

 atan$82:
	; PushFloat floating8$2#
	fld qword [@1935floating8$2#]

 atan$83:
	; Add £temporary600 denominator floating8$2#
	fadd

 atan$84:
	; PopFloat denominator
	fstp qword [rbp + 56]

 atan$85:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan$86:
	; PushFloat term
	fld qword [rbp + 32]

 atan$87:
	; Parameter 96 double term
	fstp qword [rbp + 96]

 atan$88:
	; Call 72 fabs 0
	mov qword [rbp + 72], atan$89
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 atan$89:
	; PostCall 72

 atan$90:
	; GetReturnValue £temporary601

 atan$91:
	; PushFloat floating8$0.000000001#
	fld qword [@1936floating8$0.000000001#]

 atan$92:
	; GreaterThanEqual 62 £temporary601 floating8$0.000000001#
	fcompp
	fstsw ax
	sahf
	jbe atan$62

 atan$93:
	; PushFloat sum
	fld qword [rbp + 40]

 atan$94:
	; SetReturnValue

 atan$95:
	; Return sum
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan$96:
	; FunctionEnd atan

section .data

@1945floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@1951floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@1960floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@1970floating8$minus1.57#:
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
	; LessThanEqual 13 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jae atan2$13

 atan2$3:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan2$4:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$5:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$6:
	; Divide £temporary615 x y
	fdiv

 atan2$7:
	; Parameter 64 double £temporary615
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
	; GetReturnValue £temporary616

 atan2$11:
	; SetReturnValue

 atan2$12:
	; Return £temporary616
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$13:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$14:
	; PushFloat floating8$0#
	fldz

 atan2$15:
	; LessThan 31 x floating8$0#
	fcompp
	fstsw ax
	sahf
	ja atan2$31

 atan2$16:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$17:
	; PushFloat floating8$0#
	fldz

 atan2$18:
	; GreaterThanEqual 31 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$31

 atan2$19:
	; PushFloat floating8$3.14#
	fld qword [@1945floating8$3.14#]

 atan2$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2$21:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$22:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$23:
	; Divide £temporary620 x y
	fdiv

 atan2$24:
	; Parameter 64 double £temporary620
	fstp qword [rbp + 72]

 atan2$25:
	; Call 40 atan 0
	mov qword [rbp + 48], atan2$26
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2$26:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2$27:
	; GetReturnValue £temporary621

 atan2$28:
	; Add £temporary622 floating8$3.14# £temporary621
	fadd

 atan2$29:
	; SetReturnValue

 atan2$30:
	; Return £temporary622
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$31:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$32:
	; PushFloat floating8$0#
	fldz

 atan2$33:
	; GreaterThanEqual 49 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$49

 atan2$34:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$35:
	; PushFloat floating8$0#
	fldz

 atan2$36:
	; GreaterThanEqual 49 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$49

 atan2$37:
	; PushFloat floating8$minus3.14#
	fld qword [@1951floating8$minus3.14#]

 atan2$38:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 40]

 atan2$39:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$40:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$41:
	; Divide £temporary626 x y
	fdiv

 atan2$42:
	; Parameter 64 double £temporary626
	fstp qword [rbp + 72]

 atan2$43:
	; Call 40 atan 0
	mov qword [rbp + 48], atan2$44
	mov [rbp + 56], rbp
	add rbp, 48
	jmp atan

 atan2$44:
	; PostCall 40
	fstp qword [rbp + 48]
	fld qword [rbp + 40]
	fld qword [rbp + 48]

 atan2$45:
	; GetReturnValue £temporary627

 atan2$46:
	; Add £temporary628 floating8$minus3.14# £temporary627
	fadd

 atan2$47:
	; SetReturnValue

 atan2$48:
	; Return £temporary628
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$49:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$50:
	; PushFloat floating8$0#
	fldz

 atan2$51:
	; LessThanEqual 58 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jae atan2$58

 atan2$52:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$53:
	; PushFloat floating8$0#
	fldz

 atan2$54:
	; NotEqual 58 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jne atan2$58

 atan2$55:
	; PushFloat floating8$1.57#
	fld qword [@1960floating8$1.57#]

 atan2$56:
	; SetReturnValue

 atan2$57:
	; Return floating8$1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$58:
	; PushFloat x
	fld qword [rbp + 24]

 atan2$59:
	; PushFloat floating8$0#
	fldz

 atan2$60:
	; GreaterThanEqual 67 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe atan2$67

 atan2$61:
	; PushFloat y
	fld qword [rbp + 32]

 atan2$62:
	; PushFloat floating8$0#
	fldz

 atan2$63:
	; NotEqual 67 y floating8$0#
	fcompp
	fstsw ax
	sahf
	jne atan2$67

 atan2$64:
	; PushFloat floating8$minus1.57#
	fld qword [@1970floating8$minus1.57#]

 atan2$65:
	; SetReturnValue

 atan2$66:
	; Return floating8$minus1.57#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$67:
	; Assign errno EDOM
	mov dword [errno], 6

 atan2$68:
	; PushFloat floating8$0#
	fldz

 atan2$69:
	; SetReturnValue

 atan2$70:
	; Return floating8$0#
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan2$71:
	; FunctionEnd atan2

section .data

@1975floating8$2#:
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
	; GetReturnValue £temporary648

 sinh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 sinh$7:
	; PushFloat x
	fld qword [rbp + 24]

 sinh$8:
	; Minus £temporary649 x
	fchs

 sinh$9:
	; Parameter 56 double £temporary649
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
	; GetReturnValue £temporary650

 sinh$13:
	; Subtract £temporary651 £temporary648 £temporary650
	fsub

 sinh$14:
	; PushFloat floating8$2#
	fld qword [@1975floating8$2#]

 sinh$15:
	; Divide £temporary652 £temporary651 floating8$2#
	fdiv

 sinh$16:
	; SetReturnValue

 sinh$17:
	; Return £temporary652
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sinh$18:
	; FunctionEnd sinh

section .data

@1978floating8$2#:
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
	; GetReturnValue £temporary655

 cosh$6:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 32]

 cosh$7:
	; PushFloat x
	fld qword [rbp + 24]

 cosh$8:
	; Minus £temporary656 x
	fchs

 cosh$9:
	; Parameter 56 double £temporary656
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
	; GetReturnValue £temporary657

 cosh$13:
	; Add £temporary658 £temporary655 £temporary657
	fadd

 cosh$14:
	; PushFloat floating8$2#
	fld qword [@1978floating8$2#]

 cosh$15:
	; Divide £temporary659 £temporary658 floating8$2#
	fdiv

 cosh$16:
	; SetReturnValue

 cosh$17:
	; Return £temporary659
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 cosh$18:
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
	; GetReturnValue £temporary662

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
	; GetReturnValue £temporary663

 tanh$12:
	; Divide £temporary664 £temporary662 £temporary663
	fdiv

 tanh$13:
	; SetReturnValue

 tanh$14:
	; Return £temporary664
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tanh$15:
	; FunctionEnd tanh

section .text

 floor:
	; PushFloat x
	fld qword [rbp + 24]

 floor$1:
	; PushFloat floating8$0#
	fldz

 floor$2:
	; GreaterThanEqual 13 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe floor$13

 floor$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 floor$4:
	; PushFloat x
	fld qword [rbp + 24]

 floor$5:
	; Minus £temporary668 x
	fchs

 floor$6:
	; Parameter 56 double £temporary668
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
	; GetReturnValue £temporary669

 floor$10:
	; Minus £temporary670 £temporary669
	fchs

 floor$11:
	; SetReturnValue

 floor$12:
	; Return £temporary670
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$13:
	; PushFloat x
	fld qword [rbp + 24]

 floor$14:
	; FloatingToIntegral £temporary673 x
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 floor$15:
	; IntegralToFloating £temporary674 £temporary673
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 floor$16:
	; SetReturnValue

 floor$17:
	; Return £temporary674
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 floor$18:
	; FunctionEnd floor

section .data

@1986floating8$0.999999999999#:
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
	; GreaterThanEqual 13 x floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe ceil$13

 ceil$3:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ceil$4:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$5:
	; Minus £temporary677 x
	fchs

 ceil$6:
	; Parameter 56 double £temporary677
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
	; GetReturnValue £temporary678

 ceil$10:
	; Minus £temporary679 £temporary678
	fchs

 ceil$11:
	; SetReturnValue

 ceil$12:
	; Return £temporary679
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$13:
	; PushFloat x
	fld qword [rbp + 24]

 ceil$14:
	; PushFloat floating8$0.999999999999#
	fld qword [@1986floating8$0.999999999999#]

 ceil$15:
	; Add £temporary682 x floating8$0.999999999999#
	fadd

 ceil$16:
	; FloatingToIntegral £temporary683 £temporary682
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 ceil$17:
	; IntegralToFloating £temporary684 £temporary683
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 ceil$18:
	; SetReturnValue

 ceil$19:
	; Return £temporary684
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ceil$20:
	; FunctionEnd ceil

section .data

@1990floating8$0.5#:
	; Initializer Double 0.5
	dq 0.5

section .data

@1991floating8$0.5#:
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
	fld qword [@1990floating8$0.5#]

 round$5:
	; Subtract £temporary687 x floating8$0.5#
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
	fld qword [@1991floating8$0.5#]

 round$10:
	; Add £temporary688 x floating8$0.5#
	fadd

 round$11:
	; FloatingToIntegral £temporary690 £temporary689
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 round$12:
	; IntegralToFloating £temporary691 £temporary690
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 round$13:
	; SetReturnValue

 round$14:
	; Return £temporary691
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 round$15:
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
	; Minus £temporary693 x
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
	; SetReturnValue

 fabs$9:
	; Return £temporary694
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fabs$10:
	; FunctionEnd fabs
