	global math_test_1x
	global acos_test
	global atan_test
	global math_test
	global math_test_1
	global math_test_2

	extern acos
	extern errno
	extern printf
	extern atan
	extern sin
	extern cos
	extern tan
	extern asin
	extern exp
	extern log
	extern log10
	extern sinh
	extern cosh
	extern tanh
	extern sqrt
	extern floor
	extern ceil
	extern fabs
	extern frexp
	extern perror
	extern modf
	extern fmod
	extern atan2
	extern pow
	extern ldexp
	extern $StackTop


section .data

@9482floating8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

@9484floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@9490floating8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

@9492floating8$minus1#:
	; Initializer Double -1
	dq -1.0

section .data

@9501floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@9502floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@9507floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .text

 math_test_1x:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$1:
	; 1 PushFloat floating8$minus6.28#
	fld qword [@9482floating8$minus6.28#]

 math_test_1x$2:
	; 2 Parameter 48 double floating8$minus6.28#
	fstp qword [rbp + 48]

 math_test_1x$3:
	; 3 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$4:
	; 4 PostCall 24

 math_test_1x$5:
	; 5 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$6:
	; 6 PushFloat floating8$minus3.14#
	fld qword [@9484floating8$minus3.14#]

 math_test_1x$7:
	; 7 Parameter 48 double floating8$minus3.14#
	fstp qword [rbp + 48]

 math_test_1x$8:
	; 8 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$9:
	; 9 PostCall 24

 math_test_1x$10:
	; 10 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$11:
	; 11 PushFloat floating8$minus1.57#
	fld qword [@9490floating8$minus1.57#]

 math_test_1x$12:
	; 12 Parameter 48 double floating8$minus1.57#
	fstp qword [rbp + 48]

 math_test_1x$13:
	; 13 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$14:
	; 14 PostCall 24

 math_test_1x$15:
	; 15 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$16:
	; 16 PushFloat floating8$minus1#
	fld qword [@9492floating8$minus1#]

 math_test_1x$17:
	; 17 Parameter 48 double floating8$minus1#
	fstp qword [rbp + 48]

 math_test_1x$18:
	; 18 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$19:
	; 19 PostCall 24

 math_test_1x$20:
	; 20 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$21:
	; 21 PushFloat floating8$0#
	fldz

 math_test_1x$22:
	; 22 Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test_1x$23:
	; 23 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$24:
	; 24 PostCall 24

 math_test_1x$25:
	; 25 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$26:
	; 26 PushFloat floating8$1#
	fld1

 math_test_1x$27:
	; 27 Parameter 48 double floating8$1#
	fstp qword [rbp + 48]

 math_test_1x$28:
	; 28 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$29:
	; 29 PostCall 24

 math_test_1x$30:
	; 30 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$31:
	; 31 PushFloat floating8$1.57#
	fld qword [@9501floating8$1.57#]

 math_test_1x$32:
	; 32 Parameter 48 double floating8$1.57#
	fstp qword [rbp + 48]

 math_test_1x$33:
	; 33 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$34:
	; 34 PostCall 24

 math_test_1x$35:
	; 35 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$36:
	; 36 PushFloat floating8$3.14#
	fld qword [@9502floating8$3.14#]

 math_test_1x$37:
	; 37 Parameter 48 double floating8$3.14#
	fstp qword [rbp + 48]

 math_test_1x$38:
	; 38 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$39:
	; 39 PostCall 24

 math_test_1x$40:
	; 40 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1x$41:
	; 41 PushFloat floating8$6.28#
	fld qword [@9507floating8$6.28#]

 math_test_1x$42:
	; 42 Parameter 48 double floating8$6.28#
	fstp qword [rbp + 48]

 math_test_1x$43:
	; 43 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test_1x$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test_1x$44:
	; 44 PostCall 24

 math_test_1x$45:
	; 46 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_1x$46:
	; 47 FunctionEnd math_test_1x

section .data

@9509string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .text

 acos_test:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$1:
	; 1 Parameter 56 pointer string_2020acos2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9509string_2020acos2825f29203D2025f2C20errno203D2025i0A#

 acos_test$2:
	; 2 PushFloat x
	fld qword [rbp + 24]

 acos_test$3:
	; 3 Parameter 64 double x
	fstp qword [rbp + 64]

 acos_test$4:
	; 4 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 acos_test$5:
	; 5 PushFloat x
	fld qword [rbp + 24]

 acos_test$6:
	; 6 Parameter 96 double x
	fstp qword [rbp + 96]

 acos_test$7:
	; 7 Call 72 acos 0
	mov qword [rbp + 72], acos_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 acos_test$8:
	; 8 PostCall 72

 acos_test$9:
	; 9 GetReturnValue £temporary3943

 acos_test$10:
	; 10 Parameter 72 double £temporary3943
	fstp qword [rbp + 72]

 acos_test$11:
	; 11 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 acos_test$12:
	; 12 Call 32 printf 20
	mov qword [rbp + 32], acos_test$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 acos_test$13:
	; 13 PostCall 32

 acos_test$14:
	; 14 Assign errno integral4$0#
	mov dword [errno], 0

 acos_test$15:
	; 17 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 acos_test$16:
	; 18 FunctionEnd acos_test

section .data

@9514string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .text

 atan_test:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$1:
	; 1 Parameter 56 pointer string_2020atan2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9514string_2020atan2825f29203D2025f2C20errno203D2025i0A#

 atan_test$2:
	; 2 PushFloat x
	fld qword [rbp + 24]

 atan_test$3:
	; 3 Parameter 64 double x
	fstp qword [rbp + 64]

 atan_test$4:
	; 4 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 atan_test$5:
	; 5 PushFloat x
	fld qword [rbp + 24]

 atan_test$6:
	; 6 Parameter 96 double x
	fstp qword [rbp + 96]

 atan_test$7:
	; 7 Call 72 atan 0
	mov qword [rbp + 72], atan_test$8
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 atan_test$8:
	; 8 PostCall 72

 atan_test$9:
	; 9 GetReturnValue £temporary3948

 atan_test$10:
	; 10 Parameter 72 double £temporary3948
	fstp qword [rbp + 72]

 atan_test$11:
	; 11 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 atan_test$12:
	; 12 Call 32 printf 20
	mov qword [rbp + 32], atan_test$13
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 atan_test$13:
	; 13 PostCall 32

 atan_test$14:
	; 14 Assign errno integral4$0#
	mov dword [errno], 0

 atan_test$15:
	; 17 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 atan_test$16:
	; 18 FunctionEnd atan_test

section .data

@9519floating8$0.333333333#:
	; Initializer Double 0.333333333
	dq 0.333333333

section .data

@9520floating8$0.75#:
	; Initializer Double 0.75
	dq 0.75

section .data

@9521floating8$1.000010#:
	; Initializer Double 1.000010
	dq 1.000010

section .data

@9523floating8$0.999999#:
	; Initializer Double 0.999999
	dq 0.999999

section .data

@9524floating8$0.000010#:
	; Initializer Double 0.000010
	dq 0.000010

section .data

@9527floating8$minus0.000010#:
	; Initializer Double -0.000010
	dq -0.000010

section .data

@9528floating8$minus0.999999#:
	; Initializer Double -0.999999
	dq -0.999999

section .data

@9529floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@9530floating8$minus1.000010#:
	; Initializer Double -1.000010
	dq -1.000010

section .data

@9535floating8$6.28#:
	; Initializer Double 6.28
	dq 6.28

section .data

@9536floating8$3.14#:
	; Initializer Double 3.14
	dq 3.14

section .data

@9541floating8$1.57#:
	; Initializer Double 1.57
	dq 1.57

section .data

@9547floating8$minus1.57#:
	; Initializer Double -1.57
	dq -1.57

section .data

@9549floating8$minus3.14#:
	; Initializer Double -3.14
	dq -3.14

section .data

@9554floating8$minus6.28#:
	; Initializer Double -6.28
	dq -6.28

section .data

@9556floating8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@9557floating8$3.0#:
	; Initializer Double 3.0
	dq 3.0

section .data

@9558floating8$4.0#:
	; Initializer Double 4.0
	dq 4.0

section .data

@9561floating8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@9564floating8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@9567floating8$2.0#:
	; Initializer Double 2.0
	dq 2.0

section .data

@9570floating8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@9576floating8$2#:
	; Initializer Double 2
	dq 2.0

section .data

@9580floating8$minus2#:
	; Initializer Double -2
	dq -2.0

section .data

@9583floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@9584floating8$minus1.0#:
	; Initializer Double -1.0
	dq -1.0

section .data

@9585floating8$minus2.0#:
	; Initializer Double -2.0
	dq -2.0

section .data

@9586floating8$minus4.0#:
	; Initializer Double -4.0
	dq -4.0

section .text

 math_test:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$1:
	; 1 PushFloat floating8$0.333333333#
	fld qword [@9519floating8$0.333333333#]

 math_test$2:
	; 2 Parameter 48 double floating8$0.333333333#
	fstp qword [rbp + 48]

 math_test$3:
	; 3 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$4:
	; 4 PostCall 24

 math_test$5:
	; 5 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$6:
	; 6 PushFloat floating8$0.75#
	fld qword [@9520floating8$0.75#]

 math_test$7:
	; 7 Parameter 48 double floating8$0.75#
	fstp qword [rbp + 48]

 math_test$8:
	; 8 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$9
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$9:
	; 9 PostCall 24

 math_test$10:
	; 10 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$11:
	; 11 PushFloat floating8$1.000010#
	fld qword [@9521floating8$1.000010#]

 math_test$12:
	; 12 Parameter 48 double floating8$1.000010#
	fstp qword [rbp + 48]

 math_test$13:
	; 13 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$14
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$14:
	; 14 PostCall 24

 math_test$15:
	; 15 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$16:
	; 16 PushFloat floating8$1.0#
	fld1

 math_test$17:
	; 17 Parameter 48 double floating8$1.0#
	fstp qword [rbp + 48]

 math_test$18:
	; 18 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$19:
	; 19 PostCall 24

 math_test$20:
	; 20 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$21:
	; 21 PushFloat floating8$0.999999#
	fld qword [@9523floating8$0.999999#]

 math_test$22:
	; 22 Parameter 48 double floating8$0.999999#
	fstp qword [rbp + 48]

 math_test$23:
	; 23 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$24
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$24:
	; 24 PostCall 24

 math_test$25:
	; 25 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$26:
	; 26 PushFloat floating8$0.000010#
	fld qword [@9524floating8$0.000010#]

 math_test$27:
	; 27 Parameter 48 double floating8$0.000010#
	fstp qword [rbp + 48]

 math_test$28:
	; 28 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$29
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$29:
	; 29 PostCall 24

 math_test$30:
	; 30 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$31:
	; 31 PushFloat floating8$0#
	fldz

 math_test$32:
	; 32 Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$33:
	; 33 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$34
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$34:
	; 34 PostCall 24

 math_test$35:
	; 35 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$36:
	; 36 PushFloat floating8$minus0.000010#
	fld qword [@9527floating8$minus0.000010#]

 math_test$37:
	; 37 Parameter 48 double floating8$minus0.000010#
	fstp qword [rbp + 48]

 math_test$38:
	; 38 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$39
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$39:
	; 39 PostCall 24

 math_test$40:
	; 40 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$41:
	; 41 PushFloat floating8$minus0.999999#
	fld qword [@9528floating8$minus0.999999#]

 math_test$42:
	; 42 Parameter 48 double floating8$minus0.999999#
	fstp qword [rbp + 48]

 math_test$43:
	; 43 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$44
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$44:
	; 44 PostCall 24

 math_test$45:
	; 45 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$46:
	; 46 PushFloat floating8$minus1.0#
	fld qword [@9529floating8$minus1.0#]

 math_test$47:
	; 47 Parameter 48 double floating8$minus1.0#
	fstp qword [rbp + 48]

 math_test$48:
	; 48 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$49
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$49:
	; 49 PostCall 24

 math_test$50:
	; 50 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$51:
	; 51 PushFloat floating8$minus1.000010#
	fld qword [@9530floating8$minus1.000010#]

 math_test$52:
	; 52 Parameter 48 double floating8$minus1.000010#
	fstp qword [rbp + 48]

 math_test$53:
	; 53 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$54
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$54:
	; 54 PostCall 24

 math_test$55:
	; 55 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$56:
	; 56 PushFloat floating8$6.28#
	fld qword [@9535floating8$6.28#]

 math_test$57:
	; 57 Parameter 48 double floating8$6.28#
	fstp qword [rbp + 48]

 math_test$58:
	; 58 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$59
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$59:
	; 59 PostCall 24

 math_test$60:
	; 60 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$61:
	; 61 PushFloat floating8$3.14#
	fld qword [@9536floating8$3.14#]

 math_test$62:
	; 62 Parameter 48 double floating8$3.14#
	fstp qword [rbp + 48]

 math_test$63:
	; 63 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$64
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$64:
	; 64 PostCall 24

 math_test$65:
	; 65 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$66:
	; 66 PushFloat floating8$1.57#
	fld qword [@9541floating8$1.57#]

 math_test$67:
	; 67 Parameter 48 double floating8$1.57#
	fstp qword [rbp + 48]

 math_test$68:
	; 68 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$69
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$69:
	; 69 PostCall 24

 math_test$70:
	; 70 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$71:
	; 71 PushFloat floating8$minus1.57#
	fld qword [@9547floating8$minus1.57#]

 math_test$72:
	; 72 Parameter 48 double floating8$minus1.57#
	fstp qword [rbp + 48]

 math_test$73:
	; 73 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$74
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$74:
	; 74 PostCall 24

 math_test$75:
	; 75 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$76:
	; 76 PushFloat floating8$minus3.14#
	fld qword [@9549floating8$minus3.14#]

 math_test$77:
	; 77 Parameter 48 double floating8$minus3.14#
	fstp qword [rbp + 48]

 math_test$78:
	; 78 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$79
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$79:
	; 79 PostCall 24

 math_test$80:
	; 80 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$81:
	; 81 PushFloat floating8$minus6.28#
	fld qword [@9554floating8$minus6.28#]

 math_test$82:
	; 82 Parameter 48 double floating8$minus6.28#
	fstp qword [rbp + 48]

 math_test$83:
	; 83 Call 24 math_test_1 0
	mov qword [rbp + 24], math_test$84
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_1

 math_test$84:
	; 84 PostCall 24

 math_test$85:
	; 85 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$86:
	; 86 PushFloat floating8$1.0#
	fld1

 math_test$87:
	; 87 Parameter 48 double floating8$1.0#
	fstp qword [rbp + 48]

 math_test$88:
	; 88 PushFloat floating8$2.0#
	fld qword [@9556floating8$2.0#]

 math_test$89:
	; 89 Parameter 56 double floating8$2.0#
	fstp qword [rbp + 56]

 math_test$90:
	; 90 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$91:
	; 91 PostCall 24

 math_test$92:
	; 92 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$93:
	; 93 PushFloat floating8$3.0#
	fld qword [@9557floating8$3.0#]

 math_test$94:
	; 94 Parameter 48 double floating8$3.0#
	fstp qword [rbp + 48]

 math_test$95:
	; 95 PushFloat floating8$4.0#
	fld qword [@9558floating8$4.0#]

 math_test$96:
	; 96 Parameter 56 double floating8$4.0#
	fstp qword [rbp + 56]

 math_test$97:
	; 97 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$98
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$98:
	; 98 PostCall 24

 math_test$99:
	; 99 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$100:
	; 100 PushFloat floating8$0#
	fldz

 math_test$101:
	; 101 Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$102:
	; 102 PushFloat floating8$2.0#
	fld qword [@9561floating8$2.0#]

 math_test$103:
	; 103 Parameter 56 double floating8$2.0#
	fstp qword [rbp + 56]

 math_test$104:
	; 104 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$105
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$105:
	; 105 PostCall 24

 math_test$106:
	; 106 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$107:
	; 107 PushFloat floating8$0#
	fldz

 math_test$108:
	; 108 Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$109:
	; 109 PushFloat floating8$minus2.0#
	fld qword [@9564floating8$minus2.0#]

 math_test$110:
	; 110 Parameter 56 double floating8$minus2.0#
	fstp qword [rbp + 56]

 math_test$111:
	; 111 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$112
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$112:
	; 112 PostCall 24

 math_test$113:
	; 113 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$114:
	; 114 PushFloat floating8$1#
	fld1

 math_test$115:
	; 115 Parameter 48 double floating8$1#
	fstp qword [rbp + 48]

 math_test$116:
	; 116 PushFloat floating8$2.0#
	fld qword [@9567floating8$2.0#]

 math_test$117:
	; 117 Parameter 56 double floating8$2.0#
	fstp qword [rbp + 56]

 math_test$118:
	; 118 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$119
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$119:
	; 119 PostCall 24

 math_test$120:
	; 120 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$121:
	; 121 PushFloat floating8$1#
	fld1

 math_test$122:
	; 122 Parameter 48 double floating8$1#
	fstp qword [rbp + 48]

 math_test$123:
	; 123 PushFloat floating8$minus2.0#
	fld qword [@9570floating8$minus2.0#]

 math_test$124:
	; 124 Parameter 56 double floating8$minus2.0#
	fstp qword [rbp + 56]

 math_test$125:
	; 125 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$126
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$126:
	; 126 PostCall 24

 math_test$127:
	; 127 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$128:
	; 128 PushFloat floating8$0#
	fldz

 math_test$129:
	; 129 Parameter 48 double floating8$0#
	fstp qword [rbp + 48]

 math_test$130:
	; 130 PushFloat floating8$0#
	fldz

 math_test$131:
	; 131 Parameter 56 double floating8$0#
	fstp qword [rbp + 56]

 math_test$132:
	; 132 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$133
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$133:
	; 133 PostCall 24

 math_test$134:
	; 134 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$135:
	; 135 PushFloat floating8$2#
	fld qword [@9576floating8$2#]

 math_test$136:
	; 136 Parameter 48 double floating8$2#
	fstp qword [rbp + 48]

 math_test$137:
	; 137 PushFloat floating8$0#
	fldz

 math_test$138:
	; 138 Parameter 56 double floating8$0#
	fstp qword [rbp + 56]

 math_test$139:
	; 139 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$140
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$140:
	; 140 PostCall 24

 math_test$141:
	; 141 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$142:
	; 142 PushFloat floating8$minus2#
	fld qword [@9580floating8$minus2#]

 math_test$143:
	; 143 Parameter 48 double floating8$minus2#
	fstp qword [rbp + 48]

 math_test$144:
	; 144 PushFloat floating8$0#
	fldz

 math_test$145:
	; 145 Parameter 56 double floating8$0#
	fstp qword [rbp + 56]

 math_test$146:
	; 146 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$147
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$147:
	; 147 PostCall 24

 math_test$148:
	; 148 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$149:
	; 149 PushFloat floating8$minus1.0#
	fld qword [@9583floating8$minus1.0#]

 math_test$150:
	; 150 Parameter 48 double floating8$minus1.0#
	fstp qword [rbp + 48]

 math_test$151:
	; 151 PushFloat floating8$minus1.0#
	fld qword [@9584floating8$minus1.0#]

 math_test$152:
	; 152 Parameter 56 double floating8$minus1.0#
	fstp qword [rbp + 56]

 math_test$153:
	; 153 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$154
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$154:
	; 154 PostCall 24

 math_test$155:
	; 155 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test$156:
	; 156 PushFloat floating8$minus2.0#
	fld qword [@9585floating8$minus2.0#]

 math_test$157:
	; 157 Parameter 48 double floating8$minus2.0#
	fstp qword [rbp + 48]

 math_test$158:
	; 158 PushFloat floating8$minus4.0#
	fld qword [@9586floating8$minus4.0#]

 math_test$159:
	; 159 Parameter 56 double floating8$minus4.0#
	fstp qword [rbp + 56]

 math_test$160:
	; 160 Call 24 math_test_2 0
	mov qword [rbp + 24], math_test$161
	mov [rbp + 32], rbp
	add rbp, 24
	jmp math_test_2

 math_test$161:
	; 161 PostCall 24

 math_test$162:
	; 163 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test$163:
	; 164 FunctionEnd math_test

section .data

@9588string_3C25f3E0A#:
	; Initializer String <%f>\n
	db "<%f>", 10, 0

section .data

@9589string_2020sin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sin(%f) = %f, errno = %i\n
	db "  sin(%f) = %f, errno = %i", 10, 0

section .data

@9591string_2020cos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cos(%f) = %f, errno = %i\n
	db "  cos(%f) = %f, errno = %i", 10, 0

section .data

@9593string_2020tan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tan(%f) = %f, errno = %i\n
	db "  tan(%f) = %f, errno = %i", 10, 0

section .data

@9595string_2020asin2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   asin(%f) = %f, errno = %i\n
	db "  asin(%f) = %f, errno = %i", 10, 0

section .data

@9597string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   acos(%f) = %f, errno = %i\n
	db "  acos(%f) = %f, errno = %i", 10, 0

section .data

@9599string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   atan(%f) = %f, errno = %i\n
	db "  atan(%f) = %f, errno = %i", 10, 0

section .data

@9601string_2020exp2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   exp(%f) = %f, errno = %i\n
	db "  exp(%f) = %f, errno = %i", 10, 0

section .data

@9603string_2020log2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log(%f) = %f, errno = %i\n
	db "  log(%f) = %f, errno = %i", 10, 0

section .data

@9605string_2020log102825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   log10(%f) = %f, errno = %i\n
	db "  log10(%f) = %f, errno = %i", 10, 0

section .data

@9607string_2020sinh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sinh(%f) = %f, errno = %i\n
	db "  sinh(%f) = %f, errno = %i", 10, 0

section .data

@9609string_2020cosh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   cosh(%f) = %f, errno = %i\n
	db "  cosh(%f) = %f, errno = %i", 10, 0

section .data

@9611string_2020tanh2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   tanh(%f) = %f, errno = %i\n
	db "  tanh(%f) = %f, errno = %i", 10, 0

section .data

@9613string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   sqrt(%f) = %f, errno = %i\n
	db "  sqrt(%f) = %f, errno = %i", 10, 0

section .data

@9615string_2020floor2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   floor(%f) = %f, errno = %i\n
	db "  floor(%f) = %f, errno = %i", 10, 0

section .data

@9617string_2020ceil2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   ceil(%f) = %f, errno = %i\n
	db "  ceil(%f) = %f, errno = %i", 10, 0

section .data

@9619string_2020fabs2825f29203D2025f2C20errno203D2025i0A#:
	; Initializer String   fabs(%f) = %f, errno = %i\n
	db "  fabs(%f) = %f, errno = %i", 10, 0

section .data

@9624string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#:
	; Initializer String frexp (%f, p) = (%f, %i), errno = %i\n
	db "frexp (%f, p) = (%f, %i), errno = %i", 10, 0

section .data

@9626string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

@9632string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#:
	; Initializer String modf (%f, p) = (%f, %f), errno = %i\n
	db "modf (%f, p) = (%f, %f), errno = %i", 10, 0

section .data

@9634string_Error20message3A#:
	; Initializer String Error message:
	db "Error message:", 0

section .data

@9636string_0A#:
	; Initializer String \n
	db 10, 0

section .text

 math_test_1:
	; 0 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$1:
	; 1 Parameter 56 pointer string_3C25f3E0A#
	mov qword [rbp + 56], @9588string_3C25f3E0A#

 math_test_1$2:
	; 2 PushFloat x
	fld qword [rbp + 24]

 math_test_1$3:
	; 3 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$4:
	; 4 Call 32 printf 8
	mov qword [rbp + 32], math_test_1$5
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 math_test_1$5:
	; 5 PostCall 32

 math_test_1$6:
	; 6 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$7:
	; 7 Parameter 56 pointer string_2020sin2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9589string_2020sin2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$8:
	; 8 PushFloat x
	fld qword [rbp + 24]

 math_test_1$9:
	; 9 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$10:
	; 10 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$11:
	; 11 PushFloat x
	fld qword [rbp + 24]

 math_test_1$12:
	; 12 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$13:
	; 13 Call 72 sin 0
	mov qword [rbp + 72], math_test_1$14
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sin

 math_test_1$14:
	; 14 PostCall 72

 math_test_1$15:
	; 15 GetReturnValue £temporary4021

 math_test_1$16:
	; 16 Parameter 72 double £temporary4021
	fstp qword [rbp + 72]

 math_test_1$17:
	; 17 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$18:
	; 18 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$19
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$19:
	; 19 PostCall 32

 math_test_1$20:
	; 20 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$21:
	; 22 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$22:
	; 23 Parameter 56 pointer string_2020cos2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9591string_2020cos2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$23:
	; 24 PushFloat x
	fld qword [rbp + 24]

 math_test_1$24:
	; 25 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$25:
	; 26 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$26:
	; 27 PushFloat x
	fld qword [rbp + 24]

 math_test_1$27:
	; 28 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$28:
	; 29 Call 72 cos 0
	mov qword [rbp + 72], math_test_1$29
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cos

 math_test_1$29:
	; 30 PostCall 72

 math_test_1$30:
	; 31 GetReturnValue £temporary4023

 math_test_1$31:
	; 32 Parameter 72 double £temporary4023
	fstp qword [rbp + 72]

 math_test_1$32:
	; 33 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$33:
	; 34 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$34
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$34:
	; 35 PostCall 32

 math_test_1$35:
	; 36 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$36:
	; 38 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$37:
	; 39 Parameter 56 pointer string_2020tan2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9593string_2020tan2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$38:
	; 40 PushFloat x
	fld qword [rbp + 24]

 math_test_1$39:
	; 41 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$40:
	; 42 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$41:
	; 43 PushFloat x
	fld qword [rbp + 24]

 math_test_1$42:
	; 44 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$43:
	; 45 Call 72 tan 0
	mov qword [rbp + 72], math_test_1$44
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tan

 math_test_1$44:
	; 46 PostCall 72

 math_test_1$45:
	; 47 GetReturnValue £temporary4025

 math_test_1$46:
	; 48 Parameter 72 double £temporary4025
	fstp qword [rbp + 72]

 math_test_1$47:
	; 49 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$48:
	; 50 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$49
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$49:
	; 51 PostCall 32

 math_test_1$50:
	; 52 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$51:
	; 54 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$52:
	; 55 Parameter 56 pointer string_2020asin2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9595string_2020asin2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$53:
	; 56 PushFloat x
	fld qword [rbp + 24]

 math_test_1$54:
	; 57 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$55:
	; 58 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$56:
	; 59 PushFloat x
	fld qword [rbp + 24]

 math_test_1$57:
	; 60 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$58:
	; 61 Call 72 asin 0
	mov qword [rbp + 72], math_test_1$59
	mov [rbp + 80], rbp
	add rbp, 72
	jmp asin

 math_test_1$59:
	; 62 PostCall 72

 math_test_1$60:
	; 63 GetReturnValue £temporary4027

 math_test_1$61:
	; 64 Parameter 72 double £temporary4027
	fstp qword [rbp + 72]

 math_test_1$62:
	; 65 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$63:
	; 66 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$64
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$64:
	; 67 PostCall 32

 math_test_1$65:
	; 68 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$66:
	; 70 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$67:
	; 71 Parameter 56 pointer string_2020acos2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9597string_2020acos2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$68:
	; 72 PushFloat x
	fld qword [rbp + 24]

 math_test_1$69:
	; 73 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$70:
	; 74 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$71:
	; 75 PushFloat x
	fld qword [rbp + 24]

 math_test_1$72:
	; 76 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$73:
	; 77 Call 72 acos 0
	mov qword [rbp + 72], math_test_1$74
	mov [rbp + 80], rbp
	add rbp, 72
	jmp acos

 math_test_1$74:
	; 78 PostCall 72

 math_test_1$75:
	; 79 GetReturnValue £temporary4029

 math_test_1$76:
	; 80 Parameter 72 double £temporary4029
	fstp qword [rbp + 72]

 math_test_1$77:
	; 81 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$78:
	; 82 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$79
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$79:
	; 83 PostCall 32

 math_test_1$80:
	; 84 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$81:
	; 86 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$82:
	; 87 Parameter 56 pointer string_2020atan2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9599string_2020atan2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$83:
	; 88 PushFloat x
	fld qword [rbp + 24]

 math_test_1$84:
	; 89 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$85:
	; 90 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$86:
	; 91 PushFloat x
	fld qword [rbp + 24]

 math_test_1$87:
	; 92 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$88:
	; 93 Call 72 atan 0
	mov qword [rbp + 72], math_test_1$89
	mov [rbp + 80], rbp
	add rbp, 72
	jmp atan

 math_test_1$89:
	; 94 PostCall 72

 math_test_1$90:
	; 95 GetReturnValue £temporary4031

 math_test_1$91:
	; 96 Parameter 72 double £temporary4031
	fstp qword [rbp + 72]

 math_test_1$92:
	; 97 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$93:
	; 98 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$94
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$94:
	; 99 PostCall 32

 math_test_1$95:
	; 100 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$96:
	; 102 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$97:
	; 103 Parameter 56 pointer string_2020exp2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9601string_2020exp2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$98:
	; 104 PushFloat x
	fld qword [rbp + 24]

 math_test_1$99:
	; 105 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$100:
	; 106 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$101:
	; 107 PushFloat x
	fld qword [rbp + 24]

 math_test_1$102:
	; 108 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$103:
	; 109 Call 72 exp 0
	mov qword [rbp + 72], math_test_1$104
	mov [rbp + 80], rbp
	add rbp, 72
	jmp exp

 math_test_1$104:
	; 110 PostCall 72

 math_test_1$105:
	; 111 GetReturnValue £temporary4033

 math_test_1$106:
	; 112 Parameter 72 double £temporary4033
	fstp qword [rbp + 72]

 math_test_1$107:
	; 113 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$108:
	; 114 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$109
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$109:
	; 115 PostCall 32

 math_test_1$110:
	; 116 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$111:
	; 118 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$112:
	; 119 Parameter 56 pointer string_2020log2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9603string_2020log2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$113:
	; 120 PushFloat x
	fld qword [rbp + 24]

 math_test_1$114:
	; 121 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$115:
	; 122 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$116:
	; 123 PushFloat x
	fld qword [rbp + 24]

 math_test_1$117:
	; 124 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$118:
	; 125 Call 72 log 0
	mov qword [rbp + 72], math_test_1$119
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log

 math_test_1$119:
	; 126 PostCall 72

 math_test_1$120:
	; 127 GetReturnValue £temporary4035

 math_test_1$121:
	; 128 Parameter 72 double £temporary4035
	fstp qword [rbp + 72]

 math_test_1$122:
	; 129 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$123:
	; 130 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$124
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$124:
	; 131 PostCall 32

 math_test_1$125:
	; 132 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$126:
	; 134 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$127:
	; 135 Parameter 56 pointer string_2020log102825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9605string_2020log102825f29203D2025f2C20errno203D2025i0A#

 math_test_1$128:
	; 136 PushFloat x
	fld qword [rbp + 24]

 math_test_1$129:
	; 137 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$130:
	; 138 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$131:
	; 139 PushFloat x
	fld qword [rbp + 24]

 math_test_1$132:
	; 140 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$133:
	; 141 Call 72 log10 0
	mov qword [rbp + 72], math_test_1$134
	mov [rbp + 80], rbp
	add rbp, 72
	jmp log10

 math_test_1$134:
	; 142 PostCall 72

 math_test_1$135:
	; 143 GetReturnValue £temporary4037

 math_test_1$136:
	; 144 Parameter 72 double £temporary4037
	fstp qword [rbp + 72]

 math_test_1$137:
	; 145 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$138:
	; 146 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$139
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$139:
	; 147 PostCall 32

 math_test_1$140:
	; 148 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$141:
	; 150 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$142:
	; 151 Parameter 56 pointer string_2020sinh2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9607string_2020sinh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$143:
	; 152 PushFloat x
	fld qword [rbp + 24]

 math_test_1$144:
	; 153 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$145:
	; 154 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$146:
	; 155 PushFloat x
	fld qword [rbp + 24]

 math_test_1$147:
	; 156 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$148:
	; 157 Call 72 sinh 0
	mov qword [rbp + 72], math_test_1$149
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sinh

 math_test_1$149:
	; 158 PostCall 72

 math_test_1$150:
	; 159 GetReturnValue £temporary4039

 math_test_1$151:
	; 160 Parameter 72 double £temporary4039
	fstp qword [rbp + 72]

 math_test_1$152:
	; 161 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$153:
	; 162 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$154
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$154:
	; 163 PostCall 32

 math_test_1$155:
	; 164 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$156:
	; 166 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$157:
	; 167 Parameter 56 pointer string_2020cosh2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9609string_2020cosh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$158:
	; 168 PushFloat x
	fld qword [rbp + 24]

 math_test_1$159:
	; 169 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$160:
	; 170 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$161:
	; 171 PushFloat x
	fld qword [rbp + 24]

 math_test_1$162:
	; 172 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$163:
	; 173 Call 72 cosh 0
	mov qword [rbp + 72], math_test_1$164
	mov [rbp + 80], rbp
	add rbp, 72
	jmp cosh

 math_test_1$164:
	; 174 PostCall 72

 math_test_1$165:
	; 175 GetReturnValue £temporary4041

 math_test_1$166:
	; 176 Parameter 72 double £temporary4041
	fstp qword [rbp + 72]

 math_test_1$167:
	; 177 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$168:
	; 178 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$169
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$169:
	; 179 PostCall 32

 math_test_1$170:
	; 180 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$171:
	; 182 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$172:
	; 183 Parameter 56 pointer string_2020tanh2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9611string_2020tanh2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$173:
	; 184 PushFloat x
	fld qword [rbp + 24]

 math_test_1$174:
	; 185 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$175:
	; 186 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$176:
	; 187 PushFloat x
	fld qword [rbp + 24]

 math_test_1$177:
	; 188 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$178:
	; 189 Call 72 tanh 0
	mov qword [rbp + 72], math_test_1$179
	mov [rbp + 80], rbp
	add rbp, 72
	jmp tanh

 math_test_1$179:
	; 190 PostCall 72

 math_test_1$180:
	; 191 GetReturnValue £temporary4043

 math_test_1$181:
	; 192 Parameter 72 double £temporary4043
	fstp qword [rbp + 72]

 math_test_1$182:
	; 193 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$183:
	; 194 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$184
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$184:
	; 195 PostCall 32

 math_test_1$185:
	; 196 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$186:
	; 198 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$187:
	; 199 Parameter 56 pointer string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9613string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$188:
	; 200 PushFloat x
	fld qword [rbp + 24]

 math_test_1$189:
	; 201 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$190:
	; 202 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$191:
	; 203 PushFloat x
	fld qword [rbp + 24]

 math_test_1$192:
	; 204 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$193:
	; 205 Call 72 sqrt 0
	mov qword [rbp + 72], math_test_1$194
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

 math_test_1$194:
	; 206 PostCall 72

 math_test_1$195:
	; 207 GetReturnValue £temporary4045

 math_test_1$196:
	; 208 Parameter 72 double £temporary4045
	fstp qword [rbp + 72]

 math_test_1$197:
	; 209 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$198:
	; 210 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$199
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$199:
	; 211 PostCall 32

 math_test_1$200:
	; 212 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$201:
	; 214 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$202:
	; 215 Parameter 56 pointer string_2020floor2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9615string_2020floor2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$203:
	; 216 PushFloat x
	fld qword [rbp + 24]

 math_test_1$204:
	; 217 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$205:
	; 218 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$206:
	; 219 PushFloat x
	fld qword [rbp + 24]

 math_test_1$207:
	; 220 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$208:
	; 221 Call 72 floor 0
	mov qword [rbp + 72], math_test_1$209
	mov [rbp + 80], rbp
	add rbp, 72
	jmp floor

 math_test_1$209:
	; 222 PostCall 72

 math_test_1$210:
	; 223 GetReturnValue £temporary4047

 math_test_1$211:
	; 224 Parameter 72 double £temporary4047
	fstp qword [rbp + 72]

 math_test_1$212:
	; 225 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$213:
	; 226 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$214
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$214:
	; 227 PostCall 32

 math_test_1$215:
	; 228 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$216:
	; 230 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$217:
	; 231 Parameter 56 pointer string_2020ceil2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9617string_2020ceil2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$218:
	; 232 PushFloat x
	fld qword [rbp + 24]

 math_test_1$219:
	; 233 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$220:
	; 234 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$221:
	; 235 PushFloat x
	fld qword [rbp + 24]

 math_test_1$222:
	; 236 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$223:
	; 237 Call 72 ceil 0
	mov qword [rbp + 72], math_test_1$224
	mov [rbp + 80], rbp
	add rbp, 72
	jmp ceil

 math_test_1$224:
	; 238 PostCall 72

 math_test_1$225:
	; 239 GetReturnValue £temporary4049

 math_test_1$226:
	; 240 Parameter 72 double £temporary4049
	fstp qword [rbp + 72]

 math_test_1$227:
	; 241 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$228:
	; 242 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$229
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$229:
	; 243 PostCall 32

 math_test_1$230:
	; 244 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$231:
	; 246 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$232:
	; 247 Parameter 56 pointer string_2020fabs2825f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 56], @9619string_2020fabs2825f29203D2025f2C20errno203D2025i0A#

 math_test_1$233:
	; 248 PushFloat x
	fld qword [rbp + 24]

 math_test_1$234:
	; 249 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$235:
	; 250 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$236:
	; 251 PushFloat x
	fld qword [rbp + 24]

 math_test_1$237:
	; 252 Parameter 96 double x
	fstp qword [rbp + 96]

 math_test_1$238:
	; 253 Call 72 fabs 0
	mov qword [rbp + 72], math_test_1$239
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fabs

 math_test_1$239:
	; 254 PostCall 72

 math_test_1$240:
	; 255 GetReturnValue £temporary4051

 math_test_1$241:
	; 256 Parameter 72 double £temporary4051
	fstp qword [rbp + 72]

 math_test_1$242:
	; 257 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 math_test_1$243:
	; 258 Call 32 printf 20
	mov qword [rbp + 32], math_test_1$244
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_1$244:
	; 259 PostCall 32

 math_test_1$245:
	; 260 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$246:
	; 262 Assign j integral4$0#
	mov dword [rbp + 32], 0

 math_test_1$247:
	; 263 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$248:
	; 264 PushFloat x
	fld qword [rbp + 24]

 math_test_1$249:
	; 265 Parameter 60 double x
	fstp qword [rbp + 60]

 math_test_1$250:
	; 266 Address £temporary4053 j
	mov rsi, rbp
	add rsi, 32

 math_test_1$251:
	; 267 Parameter 68 pointer £temporary4053
	mov [rbp + 68], rsi

 math_test_1$252:
	; 268 Call 36 frexp 0
	mov qword [rbp + 36], math_test_1$253
	mov [rbp + 44], rbp
	add rbp, 36
	jmp frexp

 math_test_1$253:
	; 269 PostCall 36

 math_test_1$254:
	; 270 GetReturnValue £temporary4054

 math_test_1$255:
	; 271 PopFloat z
	fstp qword [rbp + 36]

 math_test_1$256:
	; 272 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$257:
	; 273 Parameter 68 pointer string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#
	mov qword [rbp + 68], @9624string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#

 math_test_1$258:
	; 274 PushFloat x
	fld qword [rbp + 24]

 math_test_1$259:
	; 275 Parameter 76 double x
	fstp qword [rbp + 76]

 math_test_1$260:
	; 276 PushFloat z
	fld qword [rbp + 36]

 math_test_1$261:
	; 277 Parameter 84 double z
	fstp qword [rbp + 84]

 math_test_1$262:
	; 278 Parameter 92 signed int j
	mov eax, [rbp + 32]
	mov [rbp + 92], eax

 math_test_1$263:
	; 279 Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_1$264:
	; 280 Call 44 printf 24
	mov qword [rbp + 44], math_test_1$265
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 24
	jmp printf

 math_test_1$265:
	; 281 PostCall 44

 math_test_1$266:
	; 282 Equal 272 errno integral4$0#
	cmp dword [errno], 0
	je math_test_1$272

 math_test_1$267:
	; 285 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$268:
	; 286 Parameter 68 pointer string_Error20message3A#
	mov qword [rbp + 68], @9626string_Error20message3A#

 math_test_1$269:
	; 287 Call 44 perror 0
	mov qword [rbp + 44], math_test_1$270
	mov [rbp + 52], rbp
	add rbp, 44
	jmp perror

 math_test_1$270:
	; 288 PostCall 44

 math_test_1$271:
	; 289 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$272:
	; 293 PushFloat floating8$0#
	fldz

 math_test_1$273:
	; 294 PopFloat w
	fstp qword [rbp + 32]

 math_test_1$274:
	; 295 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$275:
	; 296 PushFloat x
	fld qword [rbp + 24]

 math_test_1$276:
	; 297 Parameter 64 double x
	fstp qword [rbp + 64]

 math_test_1$277:
	; 300 Address £temporary4060 w
	mov rsi, rbp
	add rsi, 32

 math_test_1$278:
	; 301 Parameter 72 pointer £temporary4060
	mov [rbp + 72], rsi

 math_test_1$279:
	; 302 Call 40 modf 0
	mov qword [rbp + 40], math_test_1$280
	mov [rbp + 48], rbp
	add rbp, 40
	jmp modf

 math_test_1$280:
	; 303 PostCall 40

 math_test_1$281:
	; 304 GetReturnValue £temporary4061

 math_test_1$282:
	; 305 PopFloat z
	fstp qword [rbp + 40]

 math_test_1$283:
	; 306 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$284:
	; 307 Parameter 72 pointer string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#
	mov qword [rbp + 72], @9632string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#

 math_test_1$285:
	; 308 PushFloat x
	fld qword [rbp + 24]

 math_test_1$286:
	; 309 Parameter 80 double x
	fstp qword [rbp + 80]

 math_test_1$287:
	; 310 PushFloat z
	fld qword [rbp + 40]

 math_test_1$288:
	; 311 Parameter 88 double z
	fstp qword [rbp + 88]

 math_test_1$289:
	; 312 PushFloat w
	fld qword [rbp + 32]

 math_test_1$290:
	; 313 Parameter 96 double w
	fstp qword [rbp + 96]

 math_test_1$291:
	; 314 Parameter 104 signed int errno
	mov eax, [errno]
	mov [rbp + 104], eax

 math_test_1$292:
	; 315 Call 48 printf 28
	mov qword [rbp + 48], math_test_1$293
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_1$293:
	; 316 PostCall 48

 math_test_1$294:
	; 317 Equal 300 errno integral4$0#
	cmp dword [errno], 0
	je math_test_1$300

 math_test_1$295:
	; 320 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$296:
	; 321 Parameter 72 pointer string_Error20message3A#
	mov qword [rbp + 72], @9634string_Error20message3A#

 math_test_1$297:
	; 322 Call 48 perror 0
	mov qword [rbp + 48], math_test_1$298
	mov [rbp + 56], rbp
	add rbp, 48
	jmp perror

 math_test_1$298:
	; 323 PostCall 48

 math_test_1$299:
	; 324 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_1$300:
	; 328 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_1$301:
	; 329 Parameter 56 pointer string_0A#
	mov qword [rbp + 56], @9636string_0A#

 math_test_1$302:
	; 330 Call 32 printf 0
	mov qword [rbp + 32], math_test_1$303
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 math_test_1$303:
	; 331 PostCall 32

 math_test_1$304:
	; 333 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_1$305:
	; 334 FunctionEnd math_test_1

section .data

@9682string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String fmod(%f, %f) = %f, errno = %i\n
	db "fmod(%f, %f) = %f, errno = %i", 10, 0

section .data

@9684string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String atan2(%f, %f) = %f, errno = %i\n
	db "atan2(%f, %f) = %f, errno = %i", 10, 0

section .data

@9686string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#:
	; Initializer String pow(%f, %f) = %f, errno = %i\n
	db "pow(%f, %f) = %f, errno = %i", 10, 0

section .data

@9688string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@9689string_ldexp2825f2C2025i29203D2025f0A0A#:
	; Initializer String ldexp(%f, %i) = %f\n\n
	db "ldexp(%f, %i) = %f", 10, 10, 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 math_test_2:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$1:
	; 1 Parameter 64 pointer string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 64], @9682string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$2:
	; 2 PushFloat x
	fld qword [rbp + 24]

 math_test_2$3:
	; 3 Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$4:
	; 4 PushFloat y
	fld qword [rbp + 32]

 math_test_2$5:
	; 5 Parameter 80 double y
	fstp qword [rbp + 80]

 math_test_2$6:
	; 6 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$7:
	; 7 PushFloat x
	fld qword [rbp + 24]

 math_test_2$8:
	; 8 Parameter 112 double x
	fstp qword [rbp + 112]

 math_test_2$9:
	; 9 PushFloat y
	fld qword [rbp + 32]

 math_test_2$10:
	; 10 Parameter 120 double y
	fstp qword [rbp + 120]

 math_test_2$11:
	; 11 Call 88 fmod 0
	mov qword [rbp + 88], math_test_2$12
	mov [rbp + 96], rbp
	add rbp, 88
	jmp fmod

 math_test_2$12:
	; 12 PostCall 88

 math_test_2$13:
	; 13 GetReturnValue £temporary4126

 math_test_2$14:
	; 14 Parameter 88 double £temporary4126
	fstp qword [rbp + 88]

 math_test_2$15:
	; 15 Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$16:
	; 16 Call 40 printf 28
	mov qword [rbp + 40], math_test_2$17
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_2$17:
	; 17 PostCall 40

 math_test_2$18:
	; 18 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_2$19:
	; 20 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$20:
	; 21 Parameter 64 pointer string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 64], @9684string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$21:
	; 22 PushFloat x
	fld qword [rbp + 24]

 math_test_2$22:
	; 23 Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$23:
	; 24 PushFloat y
	fld qword [rbp + 32]

 math_test_2$24:
	; 25 Parameter 80 double y
	fstp qword [rbp + 80]

 math_test_2$25:
	; 26 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$26:
	; 27 PushFloat x
	fld qword [rbp + 24]

 math_test_2$27:
	; 28 Parameter 112 double x
	fstp qword [rbp + 112]

 math_test_2$28:
	; 29 PushFloat y
	fld qword [rbp + 32]

 math_test_2$29:
	; 30 Parameter 120 double y
	fstp qword [rbp + 120]

 math_test_2$30:
	; 31 Call 88 atan2 0
	mov qword [rbp + 88], math_test_2$31
	mov [rbp + 96], rbp
	add rbp, 88
	jmp atan2

 math_test_2$31:
	; 32 PostCall 88

 math_test_2$32:
	; 33 GetReturnValue £temporary4128

 math_test_2$33:
	; 34 Parameter 88 double £temporary4128
	fstp qword [rbp + 88]

 math_test_2$34:
	; 35 Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$35:
	; 36 Call 40 printf 28
	mov qword [rbp + 40], math_test_2$36
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_2$36:
	; 37 PostCall 40

 math_test_2$37:
	; 38 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_2$38:
	; 40 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$39:
	; 41 Parameter 64 pointer string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#
	mov qword [rbp + 64], @9686string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#

 math_test_2$40:
	; 42 PushFloat x
	fld qword [rbp + 24]

 math_test_2$41:
	; 43 Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$42:
	; 44 PushFloat y
	fld qword [rbp + 32]

 math_test_2$43:
	; 45 Parameter 80 double y
	fstp qword [rbp + 80]

 math_test_2$44:
	; 46 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$45:
	; 47 PushFloat x
	fld qword [rbp + 24]

 math_test_2$46:
	; 48 Parameter 112 double x
	fstp qword [rbp + 112]

 math_test_2$47:
	; 49 PushFloat y
	fld qword [rbp + 32]

 math_test_2$48:
	; 50 Parameter 120 double y
	fstp qword [rbp + 120]

 math_test_2$49:
	; 51 Call 88 pow 0
	mov qword [rbp + 88], math_test_2$50
	mov [rbp + 96], rbp
	add rbp, 88
	jmp pow

 math_test_2$50:
	; 52 PostCall 88

 math_test_2$51:
	; 53 GetReturnValue £temporary4130

 math_test_2$52:
	; 54 Parameter 88 double £temporary4130
	fstp qword [rbp + 88]

 math_test_2$53:
	; 55 Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 math_test_2$54:
	; 56 Call 40 printf 28
	mov qword [rbp + 40], math_test_2$55
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 math_test_2$55:
	; 57 PostCall 40

 math_test_2$56:
	; 58 Assign errno integral4$0#
	mov dword [errno], 0

 math_test_2$57:
	; 60 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$58:
	; 61 Parameter 64 pointer string_0A#
	mov qword [rbp + 64], @9688string_0A#

 math_test_2$59:
	; 62 Call 40 printf 0
	mov qword [rbp + 40], math_test_2$60
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 math_test_2$60:
	; 63 PostCall 40

 math_test_2$61:
	; 64 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$62:
	; 65 Parameter 64 pointer string_ldexp2825f2C2025i29203D2025f0A0A#
	mov qword [rbp + 64], @9689string_ldexp2825f2C2025i29203D2025f0A0A#

 math_test_2$63:
	; 66 PushFloat x
	fld qword [rbp + 24]

 math_test_2$64:
	; 67 Parameter 72 double x
	fstp qword [rbp + 72]

 math_test_2$65:
	; 68 PushFloat y
	fld qword [rbp + 32]

 math_test_2$66:
	; 69 FloatingToIntegral £temporary4133 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$67:
	; 70 Parameter 80 signed int £temporary4133
	mov [rbp + 80], eax

 math_test_2$68:
	; 71 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 math_test_2$69:
	; 72 PushFloat x
	fld qword [rbp + 24]

 math_test_2$70:
	; 73 Parameter 108 double x
	fstp qword [rbp + 108]

 math_test_2$71:
	; 74 PushFloat y
	fld qword [rbp + 32]

 math_test_2$72:
	; 75 FloatingToIntegral £temporary4134 y
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 math_test_2$73:
	; 76 Parameter 116 signed int £temporary4134
	mov [rbp + 116], eax

 math_test_2$74:
	; 77 Call 84 ldexp 0
	mov qword [rbp + 84], math_test_2$75
	mov [rbp + 92], rbp
	add rbp, 84
	jmp ldexp

 math_test_2$75:
	; 78 PostCall 84

 math_test_2$76:
	; 79 GetReturnValue £temporary4135

 math_test_2$77:
	; 80 Parameter 84 double £temporary4135
	fstp qword [rbp + 84]

 math_test_2$78:
	; 81 Call 40 printf 20
	mov qword [rbp + 40], math_test_2$79
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

 math_test_2$79:
	; 82 PostCall 40

 math_test_2$80:
	; 84 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 math_test_2$81:
	; 85 FunctionEnd math_test_2
