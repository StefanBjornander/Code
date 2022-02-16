	global g_outStatus
	global g_outChars
	global g_outDevice
	global putc
	global fputc
	global putchar
	global printChar
	global printString
	global printLongIntRec
	global printLongInt
	global digitToChar
	global printUnsignedLongRec
	global printUnsignedLong
	global printLongDoubleFraction
	global printLongDoublePlain
	global printLongDoubleExpo
	global checkWidthAndPrecision
	global printArgument
	global printFormat
	global printf
	global vprintf
	global fprintf
	global vfprintf
	global sprintf
	global vsprintf

	extern stdout
	extern log10
	extern pow
	extern labs
	extern isupper
	extern fabs
	extern tolower
	extern isdigit
	extern $StackTop


section .data

g_outStatus:
	; InitializerZero 4
	times 4 db 0

section .data

g_outChars:
	; InitializerZero 4
	times 4 db 0

section .data

g_outDevice:
	; InitializerZero 8
	times 8 db 0

section .text

 putc:
	; 0 Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 putc$1:
	; 1 IntegralToIntegral £temporary1669 stream
	mov rax, [rbp + 28]

 putc$2:
	; 2 Assign g_outDevice £temporary1669
	mov [g_outDevice], rax

 putc$3:
	; 3 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putc$4:
	; 4 IntegralToIntegral £temporary1670 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

 putc$5:
	; 5 Parameter 60 signed char £temporary1670
	mov [rbp + 60], al

 putc$6:
	; 6 Call 36 printChar 0
	mov qword [rbp + 36], putc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 putc$7:
	; 7 PostCall 36

 putc$8:
	; 8 SetReturnValue

 putc$9:
	; 9 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putc$10:
	; 11 FunctionEnd putc

section .text

 fputc:
	; 0 Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 fputc$1:
	; 1 IntegralToIntegral £temporary1672 stream
	mov rax, [rbp + 28]

 fputc$2:
	; 2 Assign g_outDevice £temporary1672
	mov [g_outDevice], rax

 fputc$3:
	; 3 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fputc$4:
	; 4 IntegralToIntegral £temporary1673 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

 fputc$5:
	; 5 Parameter 60 signed char £temporary1673
	mov [rbp + 60], al

 fputc$6:
	; 6 Call 36 printChar 0
	mov qword [rbp + 36], fputc$7
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 fputc$7:
	; 7 PostCall 36

 fputc$8:
	; 8 SetReturnValue

 fputc$9:
	; 9 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputc$10:
	; 11 FunctionEnd fputc

section .text

 putchar:
	; 0 Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 putchar$1:
	; 1 IntegralToIntegral £temporary1675 stdout
	mov rax, [stdout]

 putchar$2:
	; 2 Assign g_outDevice £temporary1675
	mov [g_outDevice], rax

 putchar$3:
	; 3 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 putchar$4:
	; 4 IntegralToIntegral £temporary1676 i
	mov eax, [rbp + 24]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

 putchar$5:
	; 5 Parameter 52 signed char £temporary1676
	mov [rbp + 52], al

 putchar$6:
	; 6 Call 28 printChar 0
	mov qword [rbp + 28], putchar$7
	mov [rbp + 36], rbp
	add rbp, 28
	jmp printChar

 putchar$7:
	; 7 PostCall 28

 putchar$8:
	; 8 SetReturnValue

 putchar$9:
	; 9 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 putchar$10:
	; 11 FunctionEnd putchar

section .text

 printChar:
	; 0 Case 5 g_outStatus integral4$0#
	mov eax, [g_outStatus]
	cmp eax, 0
	je printChar$5

 printChar$1:
	; 1 Case 18 g_outStatus integral4$1#
	cmp eax, 1
	je printChar$18

 printChar$2:
	; 2 Case 27 g_outStatus integral4$2#
	cmp eax, 2
	je printChar$27

 printChar$3:
	; 3 CaseEnd g_outStatus

 printChar$4:
	; 4 Jump 29
	jmp printChar$29

 printChar$5:
	; 5 IntegralToIntegral £temporary1678 g_outDevice
	mov rax, [g_outDevice]

 printChar$6:
	; 6 Assign stream £temporary1678
	mov [rbp + 37], rax

 printChar$7:
	; 7 AssignRegister rax integral8$1#
	mov rax, 1

 printChar$8:
	; 8 Dereference £temporary1681 stream 0
	mov rsi, [rbp + 37]

 printChar$9:
	; 9 IntegralToIntegral £temporary1682 £temporary1681.handle
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 printChar$10:
	; 10 AssignRegister rdi £temporary1682

 printChar$11:
	; 11 Address £temporary1684 c
	mov rsi, rbp
	add rsi, 24

 printChar$12:
	; 12 IntegralToIntegral £temporary1685 £temporary1684

 printChar$13:
	; 13 AssignRegister rsi £temporary1685

 printChar$14:
	; 14 AssignRegister rdx integral8$1#
	mov rdx, 1

 printChar$15:
	; 15 SysCall
	syscall

 printChar$16:
	; 16 Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$17:
	; 18 Jump 29
	jmp printChar$29

 printChar$18:
	; 19 IntegralToIntegral £temporary1688 g_outDevice
	mov rax, [g_outDevice]

 printChar$19:
	; 20 Assign outString £temporary1688
	mov [rbp + 29], rax

 printChar$20:
	; 21 Assign £temporary1690 g_outChars
	mov eax, [g_outChars]

 printChar$21:
	; 22 Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$22:
	; 24 IntegralToIntegral £temporary1692 £temporary1690
	mov rbx, 4294967295
	and rax, rbx

 printChar$23:
	; 25 Add £temporary1693 outString £temporary1692
	mov rsi, [rbp + 29]
	add rsi, rax

 printChar$24:
	; 26 Dereference £temporary1694 £temporary1693 0

 printChar$25:
	; 27 Assign £temporary1694 c
	mov al, [rbp + 24]
	mov [rsi], al

 printChar$26:
	; 28 Jump 29
	jmp printChar$29

 printChar$27:
	; 29 Assign £temporary1696 g_outChars
	mov eax, [g_outChars]

 printChar$28:
	; 30 Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$29:
	; 34 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printChar$30:
	; 35 FunctionEnd printChar

section .text

 printString:
	; 0 Equal 33 s integral8$0#
	cmp qword [rbp + 24], 0
	je printString$33

 printString$1:
	; 3 NotEqual 16 precision integral4$0#
	cmp dword [rbp + 32], 0
	jne printString$16

 printString$2:
	; 6 Assign index integral4$0#
	mov dword [rbp + 36], 0

 printString$3:
	; 8 IntegralToIntegral £temporary1701 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$4:
	; 9 Add £temporary1702 s £temporary1701
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$5:
	; 10 Dereference £temporary1703 £temporary1702 0

 printString$6:
	; 11 Equal 57 £temporary1703 integral1$0#
	cmp byte [rsi], 0
	je printString$57

 printString$7:
	; 13 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$8:
	; 14 IntegralToIntegral £temporary1706 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$9:
	; 15 Add £temporary1707 s £temporary1706
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$10:
	; 16 Dereference £temporary1708 £temporary1707 0

 printString$11:
	; 17 Parameter 64 signed char £temporary1708
	mov al, [rsi]
	mov [rbp + 64], al

 printString$12:
	; 18 Call 40 printChar 0
	mov qword [rbp + 40], printString$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printString$13:
	; 19 PostCall 40

 printString$14:
	; 21 Add index index integral4$1#
	inc dword [rbp + 36]

 printString$15:
	; 23 Jump 3
	jmp printString$3

 printString$16:
	; 26 Assign index integral4$0#
	mov dword [rbp + 36], 0

 printString$17:
	; 28 Assign £temporary1711 precision
	mov eax, [rbp + 32]

 printString$18:
	; 29 Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 printString$19:
	; 31 LessThanEqual 57 £temporary1711 integral4$0#
	cmp eax, 0
	jle printString$57

 printString$20:
	; 33 IntegralToIntegral £temporary1714 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$21:
	; 34 Add £temporary1715 s £temporary1714
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$22:
	; 35 Dereference £temporary1716 £temporary1715 0

 printString$23:
	; 36 Equal 57 £temporary1716 integral1$0#
	cmp byte [rsi], 0
	je printString$57

 printString$24:
	; 38 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$25:
	; 39 IntegralToIntegral £temporary1720 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 printString$26:
	; 40 Add £temporary1721 s £temporary1720
	mov rsi, [rbp + 24]
	add rsi, rax

 printString$27:
	; 41 Dereference £temporary1722 £temporary1721 0

 printString$28:
	; 42 Parameter 64 signed char £temporary1722
	mov al, [rsi]
	mov [rbp + 64], al

 printString$29:
	; 43 Call 40 printChar 0
	mov qword [rbp + 40], printString$30
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printString$30:
	; 44 PostCall 40

 printString$31:
	; 46 Add index index integral4$1#
	inc dword [rbp + 36]

 printString$32:
	; 48 Jump 17
	jmp printString$17

 printString$33:
	; 52 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$34:
	; 53 Parameter 60 signed char integral1$60#
	mov byte [rbp + 60], 60

 printString$35:
	; 54 Call 36 printChar 0
	mov qword [rbp + 36], printString$36
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$36:
	; 55 PostCall 36

 printString$37:
	; 56 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$38:
	; 57 Parameter 60 signed char integral1$78#
	mov byte [rbp + 60], 78

 printString$39:
	; 58 Call 36 printChar 0
	mov qword [rbp + 36], printString$40
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$40:
	; 59 PostCall 36

 printString$41:
	; 60 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$42:
	; 61 Parameter 60 signed char integral1$85#
	mov byte [rbp + 60], 85

 printString$43:
	; 62 Call 36 printChar 0
	mov qword [rbp + 36], printString$44
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$44:
	; 63 PostCall 36

 printString$45:
	; 64 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$46:
	; 65 Parameter 60 signed char integral1$76#
	mov byte [rbp + 60], 76

 printString$47:
	; 66 Call 36 printChar 0
	mov qword [rbp + 36], printString$48
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$48:
	; 67 PostCall 36

 printString$49:
	; 68 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$50:
	; 69 Parameter 60 signed char integral1$76#
	mov byte [rbp + 60], 76

 printString$51:
	; 70 Call 36 printChar 0
	mov qword [rbp + 36], printString$52
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$52:
	; 71 PostCall 36

 printString$53:
	; 72 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printString$54:
	; 73 Parameter 60 signed char integral1$62#
	mov byte [rbp + 60], 62

 printString$55:
	; 74 Call 36 printChar 0
	mov qword [rbp + 36], printString$56
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printString$56:
	; 75 PostCall 36

 printString$57:
	; 78 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printString$58:
	; 79 FunctionEnd printString

section .data

@4121integral8$10#:
	; Initializer SignedLongInt 10
	dq 10

section .data

@4123integral8$10#:
	; Initializer SignedLongInt 10
	dq 10

section .text

 printLongIntRec:
	; 0 Equal 15 longValue integral8$0#
	cmp qword [rbp + 24], 0
	je printLongIntRec$15

 printLongIntRec$1:
	; 3 Modulo £temporary1735 longValue integral8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [@4121integral8$10#]

 printLongIntRec$2:
	; 4 IntegralToIntegral £temporary1736 £temporary1735
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

 printLongIntRec$3:
	; 5 Assign digit £temporary1736
	mov [rbp + 32], edx

 printLongIntRec$4:
	; 6 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$5:
	; 7 Divide £temporary1737 longValue integral8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	idiv qword [@4123integral8$10#]

 printLongIntRec$6:
	; 8 Parameter 60 signed long int £temporary1737
	mov [rbp + 60], rax

 printLongIntRec$7:
	; 9 Call 36 printLongIntRec 0
	mov qword [rbp + 36], printLongIntRec$8
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printLongIntRec

 printLongIntRec$8:
	; 10 PostCall 36

 printLongIntRec$9:
	; 11 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongIntRec$10:
	; 12 Add £temporary1739 digit integral4$48#
	mov eax, [rbp + 32]
	add eax, 48

 printLongIntRec$11:
	; 13 IntegralToIntegral £temporary1740 £temporary1739
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

 printLongIntRec$12:
	; 14 Parameter 60 signed char £temporary1740
	mov [rbp + 60], al

 printLongIntRec$13:
	; 15 Call 36 printChar 0
	mov qword [rbp + 36], printLongIntRec$14
	mov [rbp + 44], rbp
	add rbp, 36
	jmp printChar

 printLongIntRec$14:
	; 16 PostCall 36

 printLongIntRec$15:
	; 21 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongIntRec$16:
	; 22 FunctionEnd printLongIntRec

section .text

 printLongInt:
	; 0 GreaterThanEqual 8 longValue integral8$0#
	cmp qword [rbp + 24], 0
	jge printLongInt$8

 printLongInt$1:
	; 3 Minus £temporary1745 longValue
	mov rax, [rbp + 24]
	neg rax

 printLongInt$2:
	; 4 Assign longValue £temporary1745
	mov [rbp + 24], rax

 printLongInt$3:
	; 5 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$4:
	; 6 Parameter 64 signed char integral1$45#
	mov byte [rbp + 64], 45

 printLongInt$5:
	; 7 Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$6:
	; 8 PostCall 40

 printLongInt$7:
	; 9 Jump 19
	jmp printLongInt$19

 printLongInt$8:
	; 11 Equal 14 space integral4$0#
	cmp dword [rbp + 36], 0
	je printLongInt$14

 printLongInt$9:
	; 14 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$10:
	; 15 Parameter 64 signed char integral1$32#
	mov byte [rbp + 64], 32

 printLongInt$11:
	; 16 Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$12
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$12:
	; 17 PostCall 40

 printLongInt$13:
	; 18 Jump 19
	jmp printLongInt$19

 printLongInt$14:
	; 20 Equal 19 plus integral4$0#
	cmp dword [rbp + 32], 0
	je printLongInt$19

 printLongInt$15:
	; 23 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$16:
	; 24 Parameter 64 signed char integral1$43#
	mov byte [rbp + 64], 43

 printLongInt$17:
	; 25 Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$18:
	; 26 PostCall 40

 printLongInt$19:
	; 32 NotEqual 25 longValue integral8$0#
	cmp qword [rbp + 24], 0
	jne printLongInt$25

 printLongInt$20:
	; 35 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$21:
	; 36 Parameter 64 signed char integral1$48#
	mov byte [rbp + 64], 48

 printLongInt$22:
	; 37 Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$23
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongInt$23:
	; 38 PostCall 40

 printLongInt$24:
	; 39 Jump 29
	jmp printLongInt$29

 printLongInt$25:
	; 41 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongInt$26:
	; 42 Parameter 64 signed long int longValue
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 printLongInt$27:
	; 43 Call 40 printLongIntRec 0
	mov qword [rbp + 40], printLongInt$28
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printLongIntRec

 printLongInt$28:
	; 44 PostCall 40

 printLongInt$29:
	; 47 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongInt$30:
	; 48 FunctionEnd printLongInt

section .text

 digitToChar:
	; 0 GreaterThanEqual 5 digit integral4$10#
	cmp dword [rbp + 24], 10
	jge digitToChar$5

 digitToChar$1:
	; 3 Add £temporary1763 digit integral4$48#
	mov ebx, [rbp + 24]
	add ebx, 48

 digitToChar$2:
	; 4 IntegralToIntegral £temporary1764 £temporary1763
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

 digitToChar$3:
	; 5 SetReturnValue

 digitToChar$4:
	; 6 Return £temporary1764
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$5:
	; 9 Equal 11 capital integral4$0#
	cmp dword [rbp + 28], 0
	je digitToChar$11

 digitToChar$6:
	; 12 Subtract £temporary1765 digit integral4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$7:
	; 13 Add £temporary1766 £temporary1765 integral4$65#
	add ebx, 65

 digitToChar$8:
	; 14 IntegralToIntegral £temporary1767 £temporary1766
	cmp ebx, 0
	jge digitToChar$9
	neg ebx
	neg bl

 digitToChar$9:
	; 15 SetReturnValue

 digitToChar$10:
	; 16 Return £temporary1767
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$11:
	; 19 Subtract £temporary1768 digit integral4$10#
	mov ebx, [rbp + 24]
	sub ebx, 10

 digitToChar$12:
	; 20 Add £temporary1769 £temporary1768 integral4$97#
	add ebx, 97

 digitToChar$13:
	; 21 IntegralToIntegral £temporary1770 £temporary1769
	cmp ebx, 0
	jge digitToChar$14
	neg ebx
	neg bl

 digitToChar$14:
	; 22 SetReturnValue

 digitToChar$15:
	; 23 Return £temporary1770
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 digitToChar$16:
	; 27 FunctionEnd digitToChar

section .text

 printUnsignedLongRec:
	; 0 LessThanEqual 22 unsignedValue integral8$0#
	cmp qword [rbp + 24], 0
	jbe printUnsignedLongRec$22

 printUnsignedLongRec$1:
	; 3 Modulo £temporary1777 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$2:
	; 4 IntegralToIntegral £temporary1778 £temporary1777

 printUnsignedLongRec$3:
	; 5 Assign digit £temporary1778
	mov [rbp + 44], edx

 printUnsignedLongRec$4:
	; 6 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$5:
	; 7 Divide £temporary1779 unsignedValue base
	mov rax, [rbp + 24]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$6:
	; 8 Parameter 72 unsigned long int £temporary1779
	mov [rbp + 72], rax

 printUnsignedLongRec$7:
	; 9 Parameter 80 unsigned long int base
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 printUnsignedLongRec$8:
	; 10 Parameter 88 signed int capital
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printUnsignedLongRec$9:
	; 11 Call 48 printUnsignedLongRec 0
	mov qword [rbp + 48], printUnsignedLongRec$10
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printUnsignedLongRec

 printUnsignedLongRec$10:
	; 12 PostCall 48

 printUnsignedLongRec$11:
	; 13 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$12:
	; 14 Parameter 72 signed int digit
	mov eax, [rbp + 44]
	mov [rbp + 72], eax

 printUnsignedLongRec$13:
	; 15 Parameter 76 signed int capital
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 printUnsignedLongRec$14:
	; 16 Call 48 digitToChar 0
	mov qword [rbp + 48], printUnsignedLongRec$15
	mov [rbp + 56], rbp
	add rbp, 48
	jmp digitToChar

 printUnsignedLongRec$15:
	; 17 PostCall 48

 printUnsignedLongRec$16:
	; 18 GetReturnValue £temporary1781

 printUnsignedLongRec$17:
	; 19 Assign c £temporary1781
	mov [rbp + 48], bl

 printUnsignedLongRec$18:
	; 20 PreCall 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLongRec$19:
	; 21 Parameter 73 signed char c
	mov al, [rbp + 48]
	mov [rbp + 73], al

 printUnsignedLongRec$20:
	; 22 Call 49 printChar 0
	mov qword [rbp + 49], printUnsignedLongRec$21
	mov [rbp + 57], rbp
	add rbp, 49
	jmp printChar

 printUnsignedLongRec$21:
	; 23 PostCall 49

 printUnsignedLongRec$22:
	; 28 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printUnsignedLongRec$23:
	; 29 FunctionEnd printUnsignedLongRec

section .text

 printUnsignedLong:
	; 0 Equal 5 plus integral4$0#
	cmp dword [rbp + 32], 0
	je printUnsignedLong$5

 printUnsignedLong$1:
	; 3 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$2:
	; 4 Parameter 80 signed char integral1$43#
	mov byte [rbp + 80], 43

 printUnsignedLong$3:
	; 5 Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$4
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$4:
	; 6 PostCall 56

 printUnsignedLong$5:
	; 10 Equal 10 space integral4$0#
	cmp dword [rbp + 36], 0
	je printUnsignedLong$10

 printUnsignedLong$6:
	; 13 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$7:
	; 14 Parameter 80 signed char integral1$32#
	mov byte [rbp + 80], 32

 printUnsignedLong$8:
	; 15 Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$9
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$9:
	; 16 PostCall 56

 printUnsignedLong$10:
	; 20 Equal 29 grid integral4$0#
	cmp dword [rbp + 40], 0
	je printUnsignedLong$29

 printUnsignedLong$11:
	; 23 NotEqual 16 base integral8$8#
	cmp qword [rbp + 44], 8
	jne printUnsignedLong$16

 printUnsignedLong$12:
	; 26 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$13:
	; 27 Parameter 80 signed char integral1$48#
	mov byte [rbp + 80], 48

 printUnsignedLong$14:
	; 28 Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$15
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$15:
	; 29 PostCall 56

 printUnsignedLong$16:
	; 33 NotEqual 29 base integral8$16#
	cmp qword [rbp + 44], 16
	jne printUnsignedLong$29

 printUnsignedLong$17:
	; 36 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$18:
	; 37 Parameter 80 signed char integral1$48#
	mov byte [rbp + 80], 48

 printUnsignedLong$19:
	; 38 Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$20:
	; 39 PostCall 56

 printUnsignedLong$21:
	; 40 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$22:
	; 41 Equal 25 capital integral4$0#
	cmp dword [rbp + 52], 0
	je printUnsignedLong$25

 printUnsignedLong$23:
	; 44 Assign £temporary1800 integral1$88#
	mov al, 88

 printUnsignedLong$24:
	; 45 Jump 26
	jmp printUnsignedLong$26

 printUnsignedLong$25:
	; 47 Assign £temporary1800 integral1$120#
	mov al, 120

 printUnsignedLong$26:
	; 49 Parameter 80 signed char £temporary1800
	mov [rbp + 80], al

 printUnsignedLong$27:
	; 50 Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$28
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$28:
	; 51 PostCall 56

 printUnsignedLong$29:
	; 58 NotEqual 35 unsignedValue integral8$0#
	cmp qword [rbp + 24], 0
	jne printUnsignedLong$35

 printUnsignedLong$30:
	; 61 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$31:
	; 62 Parameter 80 signed char integral1$48#
	mov byte [rbp + 80], 48

 printUnsignedLong$32:
	; 63 Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$33
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printUnsignedLong$33:
	; 64 PostCall 56

 printUnsignedLong$34:
	; 65 Jump 41
	jmp printUnsignedLong$41

 printUnsignedLong$35:
	; 67 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printUnsignedLong$36:
	; 68 Parameter 80 unsigned long int unsignedValue
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 printUnsignedLong$37:
	; 69 Parameter 88 unsigned long int base
	mov rax, [rbp + 44]
	mov [rbp + 88], rax

 printUnsignedLong$38:
	; 70 Parameter 96 signed int capital
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

 printUnsignedLong$39:
	; 71 Call 56 printUnsignedLongRec 0
	mov qword [rbp + 56], printUnsignedLong$40
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printUnsignedLongRec

 printUnsignedLong$40:
	; 72 PostCall 56

 printUnsignedLong$41:
	; 75 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printUnsignedLong$42:
	; 76 FunctionEnd printUnsignedLong

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@4208floating8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 printLongDoubleFraction:
	; 0 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$1:
	; 1 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$2:
	; 2 FloatingToIntegral £temporary1812 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoubleFraction$3:
	; 3 IntegralToFloating £temporary1814 £temporary1812
	mov [container8bytes#], rax
	fild qword [container8bytes#]

 printLongDoubleFraction$4:
	; 4 Subtract £temporary1813 longDoubleValue £temporary1814
	fsub

 printLongDoubleFraction$5:
	; 5 PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$6:
	; 6 NotEqual 8 precision integral4$0#
	cmp dword [rbp + 36], 0
	jne printLongDoubleFraction$8

 printLongDoubleFraction$7:
	; 9 Assign precision integral4$6#
	mov dword [rbp + 36], 6

 printLongDoubleFraction$8:
	; 13 NotEqual 10 grid integral4$0#
	cmp dword [rbp + 32], 0
	jne printLongDoubleFraction$10

 printLongDoubleFraction$9:
	; 15 LessThanEqual 14 precision integral4$0#
	cmp dword [rbp + 36], 0
	jle printLongDoubleFraction$14

 printLongDoubleFraction$10:
	; 18 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$11:
	; 19 Parameter 64 signed char integral1$46#
	mov byte [rbp + 64], 46

 printLongDoubleFraction$12:
	; 20 Call 40 printChar 0
	mov qword [rbp + 40], printLongDoubleFraction$13
	mov [rbp + 48], rbp
	add rbp, 40
	jmp printChar

 printLongDoubleFraction$13:
	; 21 PostCall 40

 printLongDoubleFraction$14:
	; 26 Assign £temporary1825 precision
	mov eax, [rbp + 36]

 printLongDoubleFraction$15:
	; 27 Subtract precision precision integral4$1#
	dec dword [rbp + 36]

 printLongDoubleFraction$16:
	; 29 LessThanEqual 35 £temporary1825 integral4$0#
	cmp eax, 0
	jle printLongDoubleFraction$35

 printLongDoubleFraction$17:
	; 31 PushFloat floating8$10.0#
	fld qword [@4208floating8$10.0#]

 printLongDoubleFraction$18:
	; 32 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$19:
	; 33 Multiply £temporary1828 floating8$10.0# longDoubleValue
	fmul

 printLongDoubleFraction$20:
	; 34 PopFloat longDoubleValue10
	fstp qword [rbp + 40]

 printLongDoubleFraction$21:
	; 35 PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$22:
	; 36 FloatingToIntegral £temporary1829 longDoubleValue10
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleFraction$23:
	; 37 Assign digitValue £temporary1829
	mov [rbp + 48], eax

 printLongDoubleFraction$24:
	; 38 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleFraction$25:
	; 39 Add £temporary1830 digitValue integral4$48#
	mov eax, [rbp + 48]
	add eax, 48

 printLongDoubleFraction$26:
	; 40 IntegralToIntegral £temporary1831 £temporary1830
	cmp eax, 0
	jge printLongDoubleFraction$27
	neg eax
	neg al

 printLongDoubleFraction$27:
	; 41 Parameter 76 signed char £temporary1831
	mov [rbp + 76], al

 printLongDoubleFraction$28:
	; 42 Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleFraction$29
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleFraction$29:
	; 43 PostCall 52

 printLongDoubleFraction$30:
	; 46 PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$31:
	; 47 IntegralToFloating £temporary1833 digitValue
	fild dword [rbp + 48]

 printLongDoubleFraction$32:
	; 48 Subtract £temporary1834 longDoubleValue10 £temporary1833
	fsub

 printLongDoubleFraction$33:
	; 49 PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$34:
	; 51 Jump 14
	jmp printLongDoubleFraction$14

 printLongDoubleFraction$35:
	; 53 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoubleFraction$36:
	; 54 FunctionEnd printLongDoubleFraction

section .text

 printLongDoublePlain:
	; 0 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$1:
	; 1 PushFloat floating8$0.0#
	fldz

 printLongDoublePlain$2:
	; 2 GreaterThanEqual 12 longDoubleValue floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jbe printLongDoublePlain$12

 printLongDoublePlain$3:
	; 5 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$4:
	; 6 Parameter 72 signed char integral1$45#
	mov byte [rbp + 72], 45

 printLongDoublePlain$5:
	; 7 Call 48 printChar 0
	mov qword [rbp + 48], printLongDoublePlain$6
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printChar

 printLongDoublePlain$6:
	; 8 PostCall 48

 printLongDoublePlain$7:
	; 11 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$8:
	; 12 Minus £temporary1837 longDoubleValue
	fchs

 printLongDoublePlain$9:
	; 13 PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$10:
	; 14 Assign plus integral4$0#
	mov dword [rbp + 32], 0

 printLongDoublePlain$11:
	; 15 Assign space integral4$0#
	mov dword [rbp + 36], 0

 printLongDoublePlain$12:
	; 19 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$13:
	; 20 FloatingToIntegral £temporary1840 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [container8bytes#]

 printLongDoublePlain$14:
	; 21 Assign longValue £temporary1840
	mov [rbp + 48], rax

 printLongDoublePlain$15:
	; 22 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$16:
	; 23 Parameter 80 signed long int longValue
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 printLongDoublePlain$17:
	; 24 Parameter 88 signed int plus
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoublePlain$18:
	; 25 Parameter 92 signed int space
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoublePlain$19:
	; 26 Call 56 printLongInt 0
	mov qword [rbp + 56], printLongDoublePlain$20
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

 printLongDoublePlain$20:
	; 27 PostCall 56

 printLongDoublePlain$21:
	; 28 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$22:
	; 29 IntegralToFloating £temporary1842 longValue
	fild qword [rbp + 48]

 printLongDoublePlain$23:
	; 30 Subtract £temporary1843 longDoubleValue £temporary1842
	fsub

 printLongDoublePlain$24:
	; 31 PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$25:
	; 32 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoublePlain$26:
	; 33 PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$27:
	; 34 Parameter 80 long double longDoubleValue
	fstp qword [rbp + 80]

 printLongDoublePlain$28:
	; 35 Parameter 88 signed int grid
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoublePlain$29:
	; 36 Parameter 92 signed int precision
	mov eax, [rbp + 44]
	mov [rbp + 92], eax

 printLongDoublePlain$30:
	; 37 Call 56 printLongDoubleFraction 0
	mov qword [rbp + 56], printLongDoublePlain$31
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoubleFraction

 printLongDoublePlain$31:
	; 38 PostCall 56

 printLongDoublePlain$32:
	; 40 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoublePlain$33:
	; 41 FunctionEnd printLongDoublePlain

section .data

@4247floating8$10.0#:
	; Initializer Double 10.0
	dq 10.0

section .text

 printLongDoubleExpo:
	; 0 PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$1:
	; 1 PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$2:
	; 2 NotEqual 27 value floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jne printLongDoubleExpo$27

 printLongDoubleExpo$3:
	; 5 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$4:
	; 6 Parameter 76 signed char integral1$48#
	mov byte [rbp + 76], 48

 printLongDoubleExpo$5:
	; 7 Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$6
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$6:
	; 8 PostCall 52

 printLongDoubleExpo$7:
	; 9 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$8:
	; 10 PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$9:
	; 11 Parameter 76 long double floating8$0.0#
	fstp qword [rbp + 76]

 printLongDoubleExpo$10:
	; 12 Parameter 84 signed int precision
	mov eax, [rbp + 44]
	mov [rbp + 84], eax

 printLongDoubleExpo$11:
	; 13 Parameter 88 signed int grid
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 printLongDoubleExpo$12:
	; 14 Call 52 printLongDoubleFraction 0
	mov qword [rbp + 52], printLongDoubleExpo$13
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printLongDoubleFraction

 printLongDoubleExpo$13:
	; 15 PostCall 52

 printLongDoubleExpo$14:
	; 16 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$15:
	; 17 Equal 18 capital integral4$0#
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$18

 printLongDoubleExpo$16:
	; 20 Assign £temporary1850 integral1$69#
	mov al, 69

 printLongDoubleExpo$17:
	; 21 Jump 19
	jmp printLongDoubleExpo$19

 printLongDoubleExpo$18:
	; 23 Assign £temporary1850 integral1$101#
	mov al, 101

 printLongDoubleExpo$19:
	; 25 Parameter 76 signed char £temporary1850
	mov [rbp + 76], al

 printLongDoubleExpo$20:
	; 26 Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$21
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$21:
	; 27 PostCall 52

 printLongDoubleExpo$22:
	; 28 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$23:
	; 29 Parameter 76 signed char integral1$48#
	mov byte [rbp + 76], 48

 printLongDoubleExpo$24:
	; 30 Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$25
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$25:
	; 31 PostCall 52

 printLongDoubleExpo$26:
	; 32 Jump 80
	jmp printLongDoubleExpo$80

 printLongDoubleExpo$27:
	; 34 PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$28:
	; 35 PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$29:
	; 36 GreaterThanEqual 37 value floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jbe printLongDoubleExpo$37

 printLongDoubleExpo$30:
	; 39 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$31:
	; 40 Parameter 76 signed char integral1$45#
	mov byte [rbp + 76], 45

 printLongDoubleExpo$32:
	; 41 Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$33
	mov [rbp + 60], rbp
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$33:
	; 42 PostCall 52

 printLongDoubleExpo$34:
	; 45 PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$35:
	; 46 Minus £temporary1855 value
	fchs

 printLongDoubleExpo$36:
	; 47 PopFloat value
	fstp qword [rbp + 24]

 printLongDoubleExpo$37:
	; 51 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$38:
	; 52 PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$39:
	; 53 Parameter 76 long double value
	fstp qword [rbp + 76]

 printLongDoubleExpo$40:
	; 54 Call 52 log10 0
	mov qword [rbp + 52], printLongDoubleExpo$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp log10

 printLongDoubleExpo$41:
	; 55 PostCall 52

 printLongDoubleExpo$42:
	; 56 GetReturnValue £temporary1858

 printLongDoubleExpo$43:
	; 57 FloatingToIntegral £temporary1859 £temporary1858
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printLongDoubleExpo$44:
	; 58 Assign expo £temporary1859
	mov [rbp + 52], eax

 printLongDoubleExpo$45:
	; 59 PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$46:
	; 60 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
	fstp qword [rbp + 56]

 printLongDoubleExpo$47:
	; 61 PushFloat floating8$10.0#
	fld qword [@4247floating8$10.0#]

 printLongDoubleExpo$48:
	; 62 Parameter 80 double floating8$10.0#
	fstp qword [rbp + 88]

 printLongDoubleExpo$49:
	; 63 IntegralToFloating £temporary1860 expo
	fild dword [rbp + 52]

 printLongDoubleExpo$50:
	; 64 Parameter 88 double £temporary1860
	fstp qword [rbp + 96]

 printLongDoubleExpo$51:
	; 65 Call 56 pow 0
	mov qword [rbp + 64], printLongDoubleExpo$52
	mov [rbp + 72], rbp
	add rbp, 64
	jmp pow

 printLongDoubleExpo$52:
	; 66 PostCall 56
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 64]

 printLongDoubleExpo$53:
	; 67 GetReturnValue £temporary1861

 printLongDoubleExpo$54:
	; 68 Divide £temporary1862 value £temporary1861
	fdiv

 printLongDoubleExpo$55:
	; 69 PopFloat value
	fstp qword [rbp + 24]

 printLongDoubleExpo$56:
	; 70 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$57:
	; 71 PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$58:
	; 72 Parameter 80 long double value
	fstp qword [rbp + 80]

 printLongDoubleExpo$59:
	; 73 Parameter 88 signed int plus
	mov eax, [rbp + 32]
	mov [rbp + 88], eax

 printLongDoubleExpo$60:
	; 74 Parameter 92 signed int space
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 printLongDoubleExpo$61:
	; 75 Parameter 96 signed int grid
	mov eax, [rbp + 40]
	mov [rbp + 96], eax

 printLongDoubleExpo$62:
	; 76 Parameter 100 signed int precision
	mov eax, [rbp + 44]
	mov [rbp + 100], eax

 printLongDoubleExpo$63:
	; 77 Call 56 printLongDoublePlain 0
	mov qword [rbp + 56], printLongDoubleExpo$64
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongDoublePlain

 printLongDoubleExpo$64:
	; 78 PostCall 56

 printLongDoubleExpo$65:
	; 79 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$66:
	; 80 Equal 69 capital integral4$0#
	cmp dword [rbp + 48], 0
	je printLongDoubleExpo$69

 printLongDoubleExpo$67:
	; 83 Assign £temporary1865 integral1$69#
	mov al, 69

 printLongDoubleExpo$68:
	; 84 Jump 70
	jmp printLongDoubleExpo$70

 printLongDoubleExpo$69:
	; 86 Assign £temporary1865 integral1$101#
	mov al, 101

 printLongDoubleExpo$70:
	; 88 Parameter 80 signed char £temporary1865
	mov [rbp + 80], al

 printLongDoubleExpo$71:
	; 89 Call 56 printChar 0
	mov qword [rbp + 56], printLongDoubleExpo$72
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printChar

 printLongDoubleExpo$72:
	; 90 PostCall 56

 printLongDoubleExpo$73:
	; 91 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printLongDoubleExpo$74:
	; 92 IntegralToIntegral £temporary1867 expo
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

 printLongDoubleExpo$75:
	; 93 Parameter 80 signed long int £temporary1867
	mov [rbp + 80], rax

 printLongDoubleExpo$76:
	; 94 Parameter 88 signed int integral4$1#
	mov dword [rbp + 88], 1

 printLongDoubleExpo$77:
	; 95 Parameter 92 signed int integral4$0#
	mov dword [rbp + 92], 0

 printLongDoubleExpo$78:
	; 96 Call 56 printLongInt 0
	mov qword [rbp + 56], printLongDoubleExpo$79
	mov [rbp + 64], rbp
	add rbp, 56
	jmp printLongInt

 printLongDoubleExpo$79:
	; 97 PostCall 56

 printLongDoubleExpo$80:
	; 100 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printLongDoubleExpo$81:
	; 101 FunctionEnd printLongDoubleExpo

section .text

 checkWidthAndPrecision:
	; 0 Equal 9 widthPtr integral8$0#
	cmp qword [rbp + 32], 0
	je checkWidthAndPrecision$9

 checkWidthAndPrecision$1:
	; 2 Dereference £temporary1877 widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$2:
	; 3 NotEqual 9 £temporary1877 integral4$minus1#
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$9

 checkWidthAndPrecision$3:
	; 6 Dereference £temporary1880 widthPtr 0
	mov rsi, [rbp + 32]

 checkWidthAndPrecision$4:
	; 7 Add arg_list arg_list integral8$4#
	add qword [rbp + 24], 4

 checkWidthAndPrecision$5:
	; 9 Subtract £temporary1882 arg_list integral8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$6:
	; 10 IntegralToIntegral £temporary1883 £temporary1882

 checkWidthAndPrecision$7:
	; 11 Dereference £temporary1884 £temporary1883 0

 checkWidthAndPrecision$8:
	; 12 Assign £temporary1880 £temporary1884
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$9:
	; 16 Equal 18 precisionPtr integral8$0#
	cmp qword [rbp + 40], 0
	je checkWidthAndPrecision$18

 checkWidthAndPrecision$10:
	; 18 Dereference £temporary1888 precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$11:
	; 19 NotEqual 18 £temporary1888 integral4$minus1#
	cmp dword [rsi], -1
	jne checkWidthAndPrecision$18

 checkWidthAndPrecision$12:
	; 22 Dereference £temporary1891 precisionPtr 0
	mov rsi, [rbp + 40]

 checkWidthAndPrecision$13:
	; 23 Add arg_list arg_list integral8$4#
	add qword [rbp + 24], 4

 checkWidthAndPrecision$14:
	; 25 Subtract £temporary1893 arg_list integral8$4#
	mov rdi, [rbp + 24]
	sub rdi, 4

 checkWidthAndPrecision$15:
	; 26 IntegralToIntegral £temporary1894 £temporary1893

 checkWidthAndPrecision$16:
	; 27 Dereference £temporary1895 £temporary1894 0

 checkWidthAndPrecision$17:
	; 28 Assign £temporary1891 £temporary1895
	mov eax, [rdi]
	mov [rsi], eax

 checkWidthAndPrecision$18:
	; 32 SetReturnValue

 checkWidthAndPrecision$19:
	; 33 Return arg_list
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 checkWidthAndPrecision$20:
	; 35 FunctionEnd checkWidthAndPrecision

section .text

 printArgument:
	; 1 Dereference £temporary1899 £temporary1898 0
	mov rsi, [rbp + 24]

 printArgument$1:
	; 2 Assign c £temporary1899
	mov al, [rsi]
	mov [rbp + 88], al

 printArgument$2:
	; 3 Case 21 c integral1$100#
	mov al, [rbp + 88]
	cmp al, 100
	je printArgument$21

 printArgument$3:
	; 4 Case 21 c integral1$105#
	cmp al, 105
	je printArgument$21

 printArgument$4:
	; 5 Case 73 c integral1$99#
	cmp al, 99
	je printArgument$73

 printArgument$5:
	; 6 Case 93 c integral1$115#
	cmp al, 115
	je printArgument$93

 printArgument$6:
	; 7 Case 113 c integral1$88#
	cmp al, 88
	je printArgument$113

 printArgument$7:
	; 8 Case 113 c integral1$120#
	cmp al, 120
	je printArgument$113

 printArgument$8:
	; 9 Case 113 c integral1$98#
	cmp al, 98
	je printArgument$113

 printArgument$9:
	; 10 Case 113 c integral1$111#
	cmp al, 111
	je printArgument$113

 printArgument$10:
	; 11 Case 113 c integral1$117#
	cmp al, 117
	je printArgument$113

 printArgument$11:
	; 12 Case 171 c integral1$71#
	cmp al, 71
	je printArgument$171

 printArgument$12:
	; 13 Case 171 c integral1$103#
	cmp al, 103
	je printArgument$171

 printArgument$13:
	; 14 Case 171 c integral1$69#
	cmp al, 69
	je printArgument$171

 printArgument$14:
	; 15 Case 171 c integral1$101#
	cmp al, 101
	je printArgument$171

 printArgument$15:
	; 16 Case 171 c integral1$102#
	cmp al, 102
	je printArgument$171

 printArgument$16:
	; 17 Case 297 c integral1$112#
	cmp al, 112
	je printArgument$297

 printArgument$17:
	; 18 Case 322 c integral1$110#
	cmp al, 110
	je printArgument$322

 printArgument$18:
	; 19 Case 344 c integral1$37#
	cmp al, 37
	je printArgument$344

 printArgument$19:
	; 20 CaseEnd c

 printArgument$20:
	; 21 Jump 357
	jmp printArgument$357

 printArgument$21:
	; 22 Equal 30 shortInt integral4$0#
	cmp dword [rbp + 64], 0
	je printArgument$30

 printArgument$22:
	; 25 Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$23:
	; 27 Subtract £temporary1901 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$24:
	; 28 IntegralToIntegral £temporary1902 £temporary1901

 printArgument$25:
	; 29 Dereference £temporary1903 £temporary1902 0

 printArgument$26:
	; 30 IntegralToIntegral £temporary1904 £temporary1903
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$27
	neg eax
	neg ax

 printArgument$27:
	; 31 IntegralToIntegral £temporary1905 £temporary1904
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$28
	neg ax
	neg rax

 printArgument$28:
	; 32 Assign longValue £temporary1905
	mov [rbp + 114], rax

 printArgument$29:
	; 33 Jump 43
	jmp printArgument$43

 printArgument$30:
	; 35 Equal 37 longInt integral4$0#
	cmp dword [rbp + 68], 0
	je printArgument$37

 printArgument$31:
	; 38 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$32:
	; 40 Subtract £temporary1907 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$33:
	; 41 IntegralToIntegral £temporary1908 £temporary1907

 printArgument$34:
	; 42 Dereference £temporary1909 £temporary1908 0

 printArgument$35:
	; 43 Assign longValue £temporary1909
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$36:
	; 44 Jump 43
	jmp printArgument$43

 printArgument$37:
	; 46 Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$38:
	; 48 Subtract £temporary1911 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$39:
	; 49 IntegralToIntegral £temporary1912 £temporary1911

 printArgument$40:
	; 50 Dereference £temporary1913 £temporary1912 0

 printArgument$41:
	; 51 IntegralToIntegral £temporary1914 £temporary1913
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$42
	neg eax
	neg rax

 printArgument$42:
	; 52 Assign longValue £temporary1914
	mov [rbp + 114], rax

 printArgument$43:
	; 55 Equal 50 negativePtr integral8$0#
	cmp qword [rbp + 80], 0
	je printArgument$50

 printArgument$44:
	; 58 Dereference £temporary1922 negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$45:
	; 59 GreaterThanEqual 48 longValue integral8$0#
	cmp qword [rbp + 114], 0
	jge printArgument$48

 printArgument$46:
	; 61 Assign £temporary1924 integral4$1#
	mov eax, 1

 printArgument$47:
	; 62 Jump 49
	jmp printArgument$49

 printArgument$48:
	; 63 Assign £temporary1924 integral4$0#
	mov eax, 0

 printArgument$49:
	; 65 Assign £temporary1922 £temporary1924
	mov [rsi], eax

 printArgument$50:
	; 69 NotEqual 57 sign integral4$0#
	cmp dword [rbp + 76], 0
	jne printArgument$57

 printArgument$51:
	; 72 PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$52:
	; 73 Parameter 146 signed long int longValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$53:
	; 74 Call 122 labs 0
	mov qword [rbp + 122], printArgument$54
	mov [rbp + 130], rbp
	add rbp, 122
	jmp labs

 printArgument$54:
	; 75 PostCall 122

 printArgument$55:
	; 76 GetReturnValue £temporary1929

 printArgument$56:
	; 77 Assign longValue £temporary1929
	mov [rbp + 114], rbx

 printArgument$57:
	; 81 PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$58:
	; 82 Parameter 146 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$59:
	; 83 Parameter 154 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$60:
	; 84 Address £temporary1932 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$61:
	; 85 Parameter 162 pointer £temporary1932
	mov [rbp + 162], rsi

 printArgument$62:
	; 86 Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$63
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$63:
	; 87 PostCall 122

 printArgument$64:
	; 88 GetReturnValue £temporary1933

 printArgument$65:
	; 89 Assign arg_list £temporary1933
	mov [rbp + 32], rbx

 printArgument$66:
	; 90 PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$67:
	; 91 Parameter 146 signed long int longValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$68:
	; 92 Parameter 154 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 154], eax

 printArgument$69:
	; 93 Parameter 158 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 158], eax

 printArgument$70:
	; 94 Call 122 printLongInt 0
	mov qword [rbp + 122], printArgument$71
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printLongInt

 printArgument$71:
	; 95 PostCall 122

 printArgument$72:
	; 96 Jump 357
	jmp printArgument$357

 printArgument$73:
	; 97 Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$74:
	; 99 Subtract £temporary1936 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$75:
	; 100 IntegralToIntegral £temporary1937 £temporary1936

 printArgument$76:
	; 101 Dereference £temporary1938 £temporary1937 0

 printArgument$77:
	; 102 IntegralToIntegral £temporary1939 £temporary1938
	mov eax, [rsi]
	cmp eax, 0
	jge printArgument$78
	neg eax
	neg al

 printArgument$78:
	; 103 Assign charValue £temporary1939
	mov [rbp + 89], al

 printArgument$79:
	; 104 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$80:
	; 105 Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$81:
	; 106 Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$82:
	; 107 Address £temporary1940 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$83:
	; 108 Parameter 154 pointer £temporary1940
	mov [rbp + 154], rsi

 printArgument$84:
	; 109 Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$85
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$85:
	; 110 PostCall 114

 printArgument$86:
	; 111 GetReturnValue £temporary1941

 printArgument$87:
	; 112 Assign arg_list £temporary1941
	mov [rbp + 32], rbx

 printArgument$88:
	; 113 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$89:
	; 114 Parameter 138 signed char charValue
	mov al, [rbp + 89]
	mov [rbp + 138], al

 printArgument$90:
	; 115 Call 114 printChar 0
	mov qword [rbp + 114], printArgument$91
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$91:
	; 116 PostCall 114

 printArgument$92:
	; 117 Jump 357
	jmp printArgument$357

 printArgument$93:
	; 118 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$94:
	; 120 Subtract £temporary1944 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$95:
	; 121 IntegralToIntegral £temporary1945 £temporary1944

 printArgument$96:
	; 122 Dereference £temporary1946 £temporary1945 0

 printArgument$97:
	; 123 Assign stringValue £temporary1946
	mov rax, [rsi]
	mov [rbp + 114], rax

 printArgument$98:
	; 124 PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$99:
	; 125 Parameter 146 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 146], rax

 printArgument$100:
	; 126 Parameter 154 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 154], rax

 printArgument$101:
	; 127 Address £temporary1947 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$102:
	; 128 Parameter 162 pointer £temporary1947
	mov [rbp + 162], rsi

 printArgument$103:
	; 129 Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$104
	mov [rbp + 130], rbp
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$104:
	; 130 PostCall 122

 printArgument$105:
	; 131 GetReturnValue £temporary1948

 printArgument$106:
	; 132 Assign arg_list £temporary1948
	mov [rbp + 32], rbx

 printArgument$107:
	; 133 PreCall 122 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$108:
	; 134 Parameter 146 pointer stringValue
	mov rax, [rbp + 114]
	mov [rbp + 146], rax

 printArgument$109:
	; 135 Parameter 154 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 154], eax

 printArgument$110:
	; 136 Call 122 printString 0
	mov qword [rbp + 122], printArgument$111
	mov [rbp + 130], rbp
	add rbp, 122
	jmp printString

 printArgument$111:
	; 137 PostCall 122

 printArgument$112:
	; 138 Jump 357
	jmp printArgument$357

 printArgument$113:
	; 139 NotEqual 116 c integral1$117#
	cmp byte [rbp + 88], 117
	jne printArgument$116

 printArgument$114:
	; 142 Assign £temporary1955 integral8$10#
	mov rax, 10

 printArgument$115:
	; 143 Jump 123
	jmp printArgument$123

 printArgument$116:
	; 145 NotEqual 119 c integral1$111#
	cmp byte [rbp + 88], 111
	jne printArgument$119

 printArgument$117:
	; 148 Assign £temporary1955 integral8$8#
	mov rax, 8

 printArgument$118:
	; 149 Jump 123
	jmp printArgument$123

 printArgument$119:
	; 151 NotEqual 122 c integral1$98#
	cmp byte [rbp + 88], 98
	jne printArgument$122

 printArgument$120:
	; 154 Assign £temporary1955 integral8$2#
	mov rax, 2

 printArgument$121:
	; 155 Jump 123
	jmp printArgument$123

 printArgument$122:
	; 157 Assign £temporary1955 integral8$16#
	mov rax, 16

 printArgument$123:
	; 163 Assign base £temporary1955
	mov [rbp + 114], rax

 printArgument$124:
	; 164 Equal 133 shortInt integral4$0#
	cmp dword [rbp + 64], 0
	je printArgument$133

 printArgument$125:
	; 167 Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$126:
	; 169 Subtract £temporary1957 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$127:
	; 170 IntegralToIntegral £temporary1958 £temporary1957

 printArgument$128:
	; 171 Dereference £temporary1959 £temporary1958 0

 printArgument$129:
	; 172 IntegralToIntegral £temporary1960 £temporary1959
	mov eax, [rsi]

 printArgument$130:
	; 173 IntegralToIntegral £temporary1961 £temporary1960
	mov rbx, 65535
	and rax, rbx

 printArgument$131:
	; 174 Assign value £temporary1961
	mov [rbp + 122], rax

 printArgument$132:
	; 175 Jump 146
	jmp printArgument$146

 printArgument$133:
	; 177 Equal 140 longInt integral4$0#
	cmp dword [rbp + 68], 0
	je printArgument$140

 printArgument$134:
	; 180 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$135:
	; 182 Subtract £temporary1963 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$136:
	; 183 IntegralToIntegral £temporary1964 £temporary1963

 printArgument$137:
	; 184 Dereference £temporary1965 £temporary1964 0

 printArgument$138:
	; 185 Assign value £temporary1965
	mov rax, [rsi]
	mov [rbp + 122], rax

 printArgument$139:
	; 186 Jump 146
	jmp printArgument$146

 printArgument$140:
	; 188 Add arg_list arg_list integral8$4#
	add qword [rbp + 32], 4

 printArgument$141:
	; 190 Subtract £temporary1967 arg_list integral8$4#
	mov rsi, [rbp + 32]
	sub rsi, 4

 printArgument$142:
	; 191 IntegralToIntegral £temporary1968 £temporary1967

 printArgument$143:
	; 192 Dereference £temporary1969 £temporary1968 0

 printArgument$144:
	; 193 IntegralToIntegral £temporary1970 £temporary1969
	mov eax, [rsi]
	mov rbx, 4294967295
	and rax, rbx

 printArgument$145:
	; 194 Assign value £temporary1970
	mov [rbp + 122], rax

 printArgument$146:
	; 197 PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$147:
	; 198 Parameter 154 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 154], rax

 printArgument$148:
	; 199 Parameter 162 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 162], rax

 printArgument$149:
	; 200 Address £temporary1977 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$150:
	; 201 Parameter 170 pointer £temporary1977
	mov [rbp + 170], rsi

 printArgument$151:
	; 202 Call 130 checkWidthAndPrecision 0
	mov qword [rbp + 130], printArgument$152
	mov [rbp + 138], rbp
	add rbp, 130
	jmp checkWidthAndPrecision

 printArgument$152:
	; 203 PostCall 130

 printArgument$153:
	; 204 GetReturnValue £temporary1978

 printArgument$154:
	; 205 Assign arg_list £temporary1978
	mov [rbp + 32], rbx

 printArgument$155:
	; 206 PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$156:
	; 207 Parameter 154 unsigned long int value
	mov rax, [rbp + 122]
	mov [rbp + 154], rax

 printArgument$157:
	; 208 Parameter 162 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 162], eax

 printArgument$158:
	; 209 Parameter 166 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 166], eax

 printArgument$159:
	; 210 Parameter 170 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 170], eax

 printArgument$160:
	; 211 Parameter 174 unsigned long int base
	mov rax, [rbp + 114]
	mov [rbp + 174], rax

 printArgument$161:
	; 212 PreCall 130 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$162:
	; 213 IntegralToIntegral £temporary1979 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$163
	neg al
	neg eax

 printArgument$163:
	; 214 Parameter 206 signed int £temporary1979
	mov [rbp + 206], eax

 printArgument$164:
	; 215 Call 182 isupper 0
	mov qword [rbp + 182], printArgument$165
	mov [rbp + 190], rbp
	add rbp, 182
	jmp isupper

 printArgument$165:
	; 216 PostCall 182

 printArgument$166:
	; 217 GetReturnValue £temporary1980

 printArgument$167:
	; 218 Parameter 182 signed int £temporary1980
	mov [rbp + 182], ebx

 printArgument$168:
	; 219 Call 130 printUnsignedLong 0
	mov qword [rbp + 130], printArgument$169
	mov [rbp + 138], rbp
	add rbp, 130
	jmp printUnsignedLong

 printArgument$169:
	; 220 PostCall 130

 printArgument$170:
	; 221 Jump 357
	jmp printArgument$357

 printArgument$171:
	; 222 Equal 188 longDouble integral4$0#
	cmp dword [rbp + 72], 0
	je printArgument$188

 printArgument$172:
	; 227 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$173:
	; 229 Subtract £temporary1983 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$174:
	; 230 IntegralToIntegral £temporary1984 £temporary1983

 printArgument$175:
	; 231 Dereference £temporary1985 £temporary1984 0

 printArgument$176:
	; 232 PushFloat £temporary1985
	fld qword [rsi]

 printArgument$177:
	; 233 PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$178:
	; 234 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$179:
	; 235 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$180:
	; 236 Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$181:
	; 237 Parameter 146 signed int integral4$0#
	mov dword [rbp + 146], 0

 printArgument$182:
	; 238 Parameter 150 signed int integral4$0#
	mov dword [rbp + 150], 0

 printArgument$183:
	; 239 Parameter 154 signed int integral4$0#
	mov dword [rbp + 154], 0

 printArgument$184:
	; 240 Parameter 158 signed int integral4$3#
	mov dword [rbp + 158], 3

 printArgument$185:
	; 241 Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$186
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$186:
	; 242 PostCall 114

 printArgument$187:
	; 243 Jump 194
	jmp printArgument$194

 printArgument$188:
	; 247 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$189:
	; 249 Subtract £temporary1988 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$190:
	; 250 IntegralToIntegral £temporary1989 £temporary1988

 printArgument$191:
	; 251 Dereference £temporary1990 £temporary1989 0

 printArgument$192:
	; 252 PushFloat £temporary1990
	fld qword [rsi]

 printArgument$193:
	; 253 PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$194:
	; 255 Equal 203 negativePtr integral8$0#
	cmp qword [rbp + 80], 0
	je printArgument$203

 printArgument$195:
	; 258 Dereference £temporary1996 negativePtr 0
	mov rsi, [rbp + 80]

 printArgument$196:
	; 259 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$197:
	; 260 PushFloat floating8$0#
	fldz

 printArgument$198:
	; 261 GreaterThanEqual 201 longDoubleValue floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe printArgument$201

 printArgument$199:
	; 263 Assign £temporary1998 integral4$1#
	mov eax, 1

 printArgument$200:
	; 264 Jump 202
	jmp printArgument$202

 printArgument$201:
	; 265 Assign £temporary1998 integral4$0#
	mov eax, 0

 printArgument$202:
	; 267 Assign £temporary1996 £temporary1998
	mov [rsi], eax

 printArgument$203:
	; 271 NotEqual 211 sign integral4$0#
	cmp dword [rbp + 76], 0
	jne printArgument$211

 printArgument$204:
	; 276 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$205:
	; 277 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$206:
	; 278 Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$207:
	; 279 Call 114 fabs 0
	mov qword [rbp + 114], printArgument$208
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$208:
	; 280 PostCall 114

 printArgument$209:
	; 281 GetReturnValue £temporary2003

 printArgument$210:
	; 282 PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$211:
	; 286 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$212:
	; 287 Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$213:
	; 288 Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$214:
	; 289 Address £temporary2006 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$215:
	; 290 Parameter 154 pointer £temporary2006
	mov [rbp + 154], rsi

 printArgument$216:
	; 291 Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$217
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$217:
	; 292 PostCall 114

 printArgument$218:
	; 293 GetReturnValue £temporary2007

 printArgument$219:
	; 294 Assign arg_list £temporary2007
	mov [rbp + 32], rbx

 printArgument$220:
	; 295 NotEqual 231 c integral1$102#
	cmp byte [rbp + 88], 102
	jne printArgument$231

 printArgument$221:
	; 298 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$222:
	; 299 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$223:
	; 300 Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$224:
	; 301 Parameter 146 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$225:
	; 302 Parameter 150 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$226:
	; 303 Parameter 154 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$227:
	; 304 Parameter 158 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$228:
	; 305 Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$229
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$229:
	; 306 PostCall 114

 printArgument$230:
	; 307 Jump 357
	jmp printArgument$357

 printArgument$231:
	; 309 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$232:
	; 310 IntegralToIntegral £temporary2010 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$233
	neg al
	neg eax

 printArgument$233:
	; 311 Parameter 138 signed int £temporary2010
	mov [rbp + 138], eax

 printArgument$234:
	; 312 Call 114 tolower 0
	mov qword [rbp + 114], printArgument$235
	mov [rbp + 122], rbp
	add rbp, 114
	jmp tolower

 printArgument$235:
	; 313 PostCall 114

 printArgument$236:
	; 314 GetReturnValue £temporary2011

 printArgument$237:
	; 315 NotEqual 255 £temporary2011 integral4$101#
	cmp ebx, 101
	jne printArgument$255

 printArgument$238:
	; 318 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$239:
	; 319 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$240:
	; 320 Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$241:
	; 321 Parameter 146 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 146], eax

 printArgument$242:
	; 322 Parameter 150 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 150], eax

 printArgument$243:
	; 323 Parameter 154 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 154], eax

 printArgument$244:
	; 324 Parameter 158 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 158], eax

 printArgument$245:
	; 325 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$246:
	; 326 IntegralToIntegral £temporary2013 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$247
	neg al
	neg eax

 printArgument$247:
	; 327 Parameter 186 signed int £temporary2013
	mov [rbp + 186], eax

 printArgument$248:
	; 328 Call 162 isupper 0
	mov qword [rbp + 162], printArgument$249
	mov [rbp + 170], rbp
	add rbp, 162
	jmp isupper

 printArgument$249:
	; 329 PostCall 162

 printArgument$250:
	; 330 GetReturnValue £temporary2014

 printArgument$251:
	; 331 Parameter 162 signed int £temporary2014
	mov [rbp + 162], ebx

 printArgument$252:
	; 332 Call 114 printLongDoubleExpo 0
	mov qword [rbp + 114], printArgument$253
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printLongDoubleExpo

 printArgument$253:
	; 333 PostCall 114

 printArgument$254:
	; 334 Jump 357
	jmp printArgument$357

 printArgument$255:
	; 336 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$256:
	; 337 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$257:
	; 338 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$258:
	; 339 Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$259:
	; 340 Call 114 fabs 0
	mov qword [rbp + 114], printArgument$260
	mov [rbp + 122], rbp
	add rbp, 114
	jmp fabs

 printArgument$260:
	; 341 PostCall 114

 printArgument$261:
	; 342 GetReturnValue £temporary2016

 printArgument$262:
	; 343 Parameter 138 double £temporary2016
	fstp qword [rbp + 138]

 printArgument$263:
	; 344 Call 114 log10 0
	mov qword [rbp + 114], printArgument$264
	mov [rbp + 122], rbp
	add rbp, 114
	jmp log10

 printArgument$264:
	; 345 PostCall 114

 printArgument$265:
	; 346 GetReturnValue £temporary2017

 printArgument$266:
	; 347 FloatingToIntegral £temporary2018 £temporary2017
	fistp dword [container4bytes#]
	mov eax, [container4bytes#]

 printArgument$267:
	; 348 Assign expo £temporary2018
	mov [rbp + 114], eax

 printArgument$268:
	; 349 LessThan 280 expo integral4$minus3#
	cmp dword [rbp + 114], -3
	jl printArgument$280

 printArgument$269:
	; 351 GreaterThan 280 expo integral4$2#
	cmp dword [rbp + 114], 2
	jg printArgument$280

 printArgument$270:
	; 354 PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$271:
	; 355 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$272:
	; 356 Parameter 142 long double longDoubleValue
	fstp qword [rbp + 142]

 printArgument$273:
	; 357 Parameter 150 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$274:
	; 358 Parameter 154 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$275:
	; 359 Parameter 158 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$276:
	; 360 Parameter 162 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$277:
	; 361 Call 118 printLongDoublePlain 0
	mov qword [rbp + 118], printArgument$278
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoublePlain

 printArgument$278:
	; 362 PostCall 118

 printArgument$279:
	; 363 Jump 357
	jmp printArgument$357

 printArgument$280:
	; 365 PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$281:
	; 366 PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$282:
	; 367 Parameter 142 long double longDoubleValue
	fstp qword [rbp + 142]

 printArgument$283:
	; 368 Parameter 150 signed int plus
	mov eax, [rbp + 40]
	mov [rbp + 150], eax

 printArgument$284:
	; 369 Parameter 154 signed int space
	mov eax, [rbp + 44]
	mov [rbp + 154], eax

 printArgument$285:
	; 370 Parameter 158 signed int grid
	mov eax, [rbp + 48]
	mov [rbp + 158], eax

 printArgument$286:
	; 371 Parameter 162 signed int precision
	mov eax, [rbp + 60]
	mov [rbp + 162], eax

 printArgument$287:
	; 372 PreCall 118 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$288:
	; 373 IntegralToIntegral £temporary2023 c
	mov al, [rbp + 88]
	and eax, 255
	cmp al, 0
	jge printArgument$289
	neg al
	neg eax

 printArgument$289:
	; 374 Parameter 190 signed int £temporary2023
	mov [rbp + 190], eax

 printArgument$290:
	; 375 Call 166 isupper 0
	mov qword [rbp + 166], printArgument$291
	mov [rbp + 174], rbp
	add rbp, 166
	jmp isupper

 printArgument$291:
	; 376 PostCall 166

 printArgument$292:
	; 377 GetReturnValue £temporary2024

 printArgument$293:
	; 378 Parameter 166 signed int £temporary2024
	mov [rbp + 166], ebx

 printArgument$294:
	; 379 Call 118 printLongDoubleExpo 0
	mov qword [rbp + 118], printArgument$295
	mov [rbp + 126], rbp
	add rbp, 118
	jmp printLongDoubleExpo

 printArgument$295:
	; 380 PostCall 118

 printArgument$296:
	; 384 Jump 357
	jmp printArgument$357

 printArgument$297:
	; 385 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$298:
	; 387 Subtract £temporary2033 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$299:
	; 388 IntegralToIntegral £temporary2034 £temporary2033

 printArgument$300:
	; 389 Dereference £temporary2035 £temporary2034 0

 printArgument$301:
	; 390 Assign ptrValue £temporary2035
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$302:
	; 391 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$303:
	; 392 Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$304:
	; 393 Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$305:
	; 394 Address £temporary2036 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$306:
	; 395 Parameter 154 pointer £temporary2036
	mov [rbp + 154], rsi

 printArgument$307:
	; 396 Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$308
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$308:
	; 397 PostCall 114

 printArgument$309:
	; 398 GetReturnValue £temporary2037

 printArgument$310:
	; 399 Assign arg_list £temporary2037
	mov [rbp + 32], rbx

 printArgument$311:
	; 400 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$312:
	; 401 IntegralToIntegral £temporary2038 ptrValue
	mov rax, [rbp + 106]

 printArgument$313:
	; 402 Parameter 138 pointer £temporary2038
	mov [rbp + 138], rax

 printArgument$314:
	; 403 Parameter 146 signed int integral4$0#
	mov dword [rbp + 146], 0

 printArgument$315:
	; 404 Parameter 150 signed int integral4$0#
	mov dword [rbp + 150], 0

 printArgument$316:
	; 405 Parameter 154 signed int integral4$0#
	mov dword [rbp + 154], 0

 printArgument$317:
	; 406 Parameter 158 unsigned long int integral8$10#
	mov qword [rbp + 158], 10

 printArgument$318:
	; 407 Parameter 166 signed int integral4$0#
	mov dword [rbp + 166], 0

 printArgument$319:
	; 408 Call 114 printUnsignedLong 0
	mov qword [rbp + 114], printArgument$320
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printUnsignedLong

 printArgument$320:
	; 409 PostCall 114

 printArgument$321:
	; 410 Jump 357
	jmp printArgument$357

 printArgument$322:
	; 411 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$323:
	; 413 Subtract £temporary2041 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$324:
	; 414 IntegralToIntegral £temporary2042 £temporary2041

 printArgument$325:
	; 415 Dereference £temporary2043 £temporary2042 0

 printArgument$326:
	; 416 Assign ptrValue £temporary2043
	mov rax, [rsi]
	mov [rbp + 106], rax

 printArgument$327:
	; 417 Add arg_list arg_list integral8$8#
	add qword [rbp + 32], 8

 printArgument$328:
	; 419 Subtract £temporary2045 arg_list integral8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

 printArgument$329:
	; 420 IntegralToIntegral £temporary2046 £temporary2045

 printArgument$330:
	; 421 Dereference £temporary2047 £temporary2046 0

 printArgument$331:
	; 422 Assign intPtr £temporary2047
	mov rax, [rsi]
	mov [rbp + 90], rax

 printArgument$332:
	; 423 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$333:
	; 424 Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$334:
	; 425 Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$335:
	; 426 Address £temporary2048 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$336:
	; 427 Parameter 154 pointer £temporary2048
	mov [rbp + 154], rsi

 printArgument$337:
	; 428 Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$338
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$338:
	; 429 PostCall 114

 printArgument$339:
	; 430 GetReturnValue £temporary2049

 printArgument$340:
	; 431 Assign arg_list £temporary2049
	mov [rbp + 32], rbx

 printArgument$341:
	; 432 Dereference £temporary2050 intPtr 0
	mov rsi, [rbp + 90]

 printArgument$342:
	; 433 Assign £temporary2050 g_outChars
	mov eax, [g_outChars]
	mov [rsi], eax

 printArgument$343:
	; 434 Jump 357
	jmp printArgument$357

 printArgument$344:
	; 435 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$345:
	; 436 Parameter 138 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 138], rax

 printArgument$346:
	; 437 Parameter 146 pointer widthPtr
	mov rax, [rbp + 52]
	mov [rbp + 146], rax

 printArgument$347:
	; 438 Address £temporary2051 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$348:
	; 439 Parameter 154 pointer £temporary2051
	mov [rbp + 154], rsi

 printArgument$349:
	; 440 Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$350
	mov [rbp + 122], rbp
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$350:
	; 441 PostCall 114

 printArgument$351:
	; 442 GetReturnValue £temporary2052

 printArgument$352:
	; 443 Assign arg_list £temporary2052
	mov [rbp + 32], rbx

 printArgument$353:
	; 444 PreCall 114 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printArgument$354:
	; 445 Parameter 138 signed char integral1$37#
	mov byte [rbp + 138], 37

 printArgument$355:
	; 446 Call 114 printChar 0
	mov qword [rbp + 114], printArgument$356
	mov [rbp + 122], rbp
	add rbp, 114
	jmp printChar

 printArgument$356:
	; 447 PostCall 114

 printArgument$357:
	; 449 SetReturnValue

 printArgument$358:
	; 450 Return arg_list
	mov rbx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printArgument$359:
	; 452 FunctionEnd printArgument

section .data

@4681integral4$10#:
	; Initializer SignedInt 10
	dd 10

section .text

 printFormat:
	; 0 Assign width integral4$0#
	mov dword [rbp + 44], 0

 printFormat$1:
	; 1 Assign precision integral4$0#
	mov dword [rbp + 48], 0

 printFormat$2:
	; 2 Assign percent integral4$0#
	mov dword [rbp + 52], 0

 printFormat$3:
	; 3 Assign plus integral4$0#
	mov dword [rbp + 56], 0

 printFormat$4:
	; 4 Assign minus integral4$0#
	mov dword [rbp + 60], 0

 printFormat$5:
	; 5 Assign space integral4$0#
	mov dword [rbp + 64], 0

 printFormat$6:
	; 6 Assign zero integral4$0#
	mov dword [rbp + 68], 0

 printFormat$7:
	; 7 Assign grid integral4$0#
	mov dword [rbp + 72], 0

 printFormat$8:
	; 8 Assign widthStar integral4$0#
	mov dword [rbp + 76], 0

 printFormat$9:
	; 9 Assign period integral4$0#
	mov dword [rbp + 80], 0

 printFormat$10:
	; 10 Assign precisionStar integral4$0#
	mov dword [rbp + 84], 0

 printFormat$11:
	; 11 Assign shortInt integral4$0#
	mov dword [rbp + 88], 0

 printFormat$12:
	; 12 Assign longInt integral4$0#
	mov dword [rbp + 92], 0

 printFormat$13:
	; 13 Assign longDouble integral4$0#
	mov dword [rbp + 96], 0

 printFormat$14:
	; 14 Assign g_outChars integral4$0#
	mov dword [g_outChars], 0

 printFormat$15:
	; 15 Assign index integral4$0#
	mov dword [rbp + 40], 0

 printFormat$16:
	; 17 IntegralToIntegral £temporary2070 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$17:
	; 18 Add £temporary2071 format £temporary2070
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$18:
	; 19 Dereference £temporary2072 £temporary2071 0

 printFormat$19:
	; 20 Equal 292 £temporary2072 integral1$0#
	cmp byte [rsi], 0
	je printFormat$292

 printFormat$20:
	; 22 IntegralToIntegral £temporary2075 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$21:
	; 23 Add £temporary2076 format £temporary2075
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$22:
	; 24 Dereference £temporary2077 £temporary2076 0

 printFormat$23:
	; 25 Assign c £temporary2077
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$24:
	; 26 Equal 270 percent integral4$0#
	cmp dword [rbp + 52], 0
	je printFormat$270

 printFormat$25:
	; 29 Case 54 c integral1$43#
	mov al, [rbp + 100]
	cmp al, 43
	je printFormat$54

 printFormat$26:
	; 30 Case 56 c integral1$45#
	cmp al, 45
	je printFormat$56

 printFormat$27:
	; 31 Case 58 c integral1$32#
	cmp al, 32
	je printFormat$58

 printFormat$28:
	; 32 Case 60 c integral1$48#
	cmp al, 48
	je printFormat$60

 printFormat$29:
	; 33 Case 62 c integral1$35#
	cmp al, 35
	je printFormat$62

 printFormat$30:
	; 34 Case 64 c integral1$46#
	cmp al, 46
	je printFormat$64

 printFormat$31:
	; 35 Case 66 c integral1$42#
	cmp al, 42
	je printFormat$66

 printFormat$32:
	; 36 Case 71 c integral1$104#
	cmp al, 104
	je printFormat$71

 printFormat$33:
	; 37 Case 73 c integral1$108#
	cmp al, 108
	je printFormat$73

 printFormat$34:
	; 38 Case 75 c integral1$76#
	cmp al, 76
	je printFormat$75

 printFormat$35:
	; 39 Case 77 c integral1$37#
	cmp al, 37
	je printFormat$77

 printFormat$36:
	; 40 Case 77 c integral1$110#
	cmp al, 110
	je printFormat$77

 printFormat$37:
	; 41 Case 77 c integral1$112#
	cmp al, 112
	je printFormat$77

 printFormat$38:
	; 42 Case 77 c integral1$71#
	cmp al, 71
	je printFormat$77

 printFormat$39:
	; 43 Case 77 c integral1$103#
	cmp al, 103
	je printFormat$77

 printFormat$40:
	; 44 Case 77 c integral1$69#
	cmp al, 69
	je printFormat$77

 printFormat$41:
	; 45 Case 77 c integral1$101#
	cmp al, 101
	je printFormat$77

 printFormat$42:
	; 46 Case 77 c integral1$102#
	cmp al, 102
	je printFormat$77

 printFormat$43:
	; 47 Case 77 c integral1$115#
	cmp al, 115
	je printFormat$77

 printFormat$44:
	; 48 Case 77 c integral1$99#
	cmp al, 99
	je printFormat$77

 printFormat$45:
	; 49 Case 77 c integral1$88#
	cmp al, 88
	je printFormat$77

 printFormat$46:
	; 50 Case 77 c integral1$120#
	cmp al, 120
	je printFormat$77

 printFormat$47:
	; 51 Case 77 c integral1$111#
	cmp al, 111
	je printFormat$77

 printFormat$48:
	; 52 Case 77 c integral1$98#
	cmp al, 98
	je printFormat$77

 printFormat$49:
	; 53 Case 77 c integral1$117#
	cmp al, 117
	je printFormat$77

 printFormat$50:
	; 54 Case 77 c integral1$100#
	cmp al, 100
	je printFormat$77

 printFormat$51:
	; 55 Case 77 c integral1$105#
	cmp al, 105
	je printFormat$77

 printFormat$52:
	; 56 CaseEnd c

 printFormat$53:
	; 57 Jump 246
	jmp printFormat$246

 printFormat$54:
	; 58 Assign plus integral4$1#
	mov dword [rbp + 56], 1

 printFormat$55:
	; 59 Jump 290
	jmp printFormat$290

 printFormat$56:
	; 60 Assign minus integral4$1#
	mov dword [rbp + 60], 1

 printFormat$57:
	; 61 Jump 290
	jmp printFormat$290

 printFormat$58:
	; 62 Assign space integral4$1#
	mov dword [rbp + 64], 1

 printFormat$59:
	; 63 Jump 290
	jmp printFormat$290

 printFormat$60:
	; 64 Assign zero integral4$1#
	mov dword [rbp + 68], 1

 printFormat$61:
	; 65 Jump 290
	jmp printFormat$290

 printFormat$62:
	; 66 Assign grid integral4$1#
	mov dword [rbp + 72], 1

 printFormat$63:
	; 67 Jump 290
	jmp printFormat$290

 printFormat$64:
	; 68 Assign period integral4$1#
	mov dword [rbp + 80], 1

 printFormat$65:
	; 69 Jump 290
	jmp printFormat$290

 printFormat$66:
	; 70 NotEqual 69 period integral4$0#
	cmp dword [rbp + 80], 0
	jne printFormat$69

 printFormat$67:
	; 73 Assign width integral4$minus1#
	mov dword [rbp + 44], -1

 printFormat$68:
	; 74 Jump 290
	jmp printFormat$290

 printFormat$69:
	; 76 Assign precision integral4$minus1#
	mov dword [rbp + 48], -1

 printFormat$70:
	; 78 Jump 290
	jmp printFormat$290

 printFormat$71:
	; 79 Assign shortInt integral4$1#
	mov dword [rbp + 88], 1

 printFormat$72:
	; 80 Jump 290
	jmp printFormat$290

 printFormat$73:
	; 81 Assign longInt integral4$1#
	mov dword [rbp + 92], 1

 printFormat$74:
	; 82 Jump 290
	jmp printFormat$290

 printFormat$75:
	; 83 Assign longDouble integral4$1#
	mov dword [rbp + 96], 1

 printFormat$76:
	; 84 Jump 290
	jmp printFormat$290

 printFormat$77:
	; 85 Equal 110 minus integral4$0#
	cmp dword [rbp + 60], 0
	je printFormat$110

 printFormat$78:
	; 88 Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$79:
	; 89 PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$80:
	; 90 IntegralToIntegral £temporary2082 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$81:
	; 91 Add £temporary2083 format £temporary2082
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$82:
	; 92 Dereference £temporary2084 £temporary2083 0

 printFormat$83:
	; 93 Address £temporary2085 £temporary2084

 printFormat$84:
	; 94 Parameter 129 pointer £temporary2085
	mov [rbp + 129], rsi

 printFormat$85:
	; 95 Parameter 137 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 137], rax

 printFormat$86:
	; 96 Parameter 145 signed int plus
	mov eax, [rbp + 56]
	mov [rbp + 145], eax

 printFormat$87:
	; 97 Parameter 149 signed int space
	mov eax, [rbp + 64]
	mov [rbp + 149], eax

 printFormat$88:
	; 98 Parameter 153 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 153], eax

 printFormat$89:
	; 99 Address £temporary2086 width
	mov rsi, rbp
	add rsi, 44

 printFormat$90:
	; 100 Parameter 157 pointer £temporary2086
	mov [rbp + 157], rsi

 printFormat$91:
	; 101 Parameter 165 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 165], eax

 printFormat$92:
	; 102 Parameter 169 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 169], eax

 printFormat$93:
	; 103 Parameter 173 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 173], eax

 printFormat$94:
	; 104 Parameter 177 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 177], eax

 printFormat$95:
	; 105 Parameter 181 signed int integral4$1#
	mov dword [rbp + 181], 1

 printFormat$96:
	; 106 Parameter 185 pointer integral8$0#
	mov qword [rbp + 185], 0

 printFormat$97:
	; 107 Call 105 printArgument 0
	mov qword [rbp + 105], printFormat$98
	mov [rbp + 113], rbp
	add rbp, 105
	jmp printArgument

 printFormat$98:
	; 108 PostCall 105

 printFormat$99:
	; 109 GetReturnValue £temporary2087

 printFormat$100:
	; 110 Assign arg_list £temporary2087
	mov [rbp + 32], rbx

 printFormat$101:
	; 111 Subtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 105], eax

 printFormat$102:
	; 114 Assign £temporary2090 field
	mov eax, [rbp + 105]

 printFormat$103:
	; 115 Add field field integral4$1#
	inc dword [rbp + 105]

 printFormat$104:
	; 117 GreaterThanEqual 244 £temporary2090 width
	cmp eax, [rbp + 44]
	jge printFormat$244

 printFormat$105:
	; 119 PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$106:
	; 120 Parameter 133 signed char integral1$32#
	mov byte [rbp + 133], 32

 printFormat$107:
	; 121 Call 109 printChar 0
	mov qword [rbp + 109], printFormat$108
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printChar

 printFormat$108:
	; 122 PostCall 109

 printFormat$109:
	; 124 Jump 102
	jmp printFormat$102

 printFormat$110:
	; 127 Equal 189 zero integral4$0#
	cmp dword [rbp + 68], 0
	je printFormat$189

 printFormat$111:
	; 130 Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$112:
	; 131 Assign oldOutStatus g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$113:
	; 132 Assign negative integral4$0#
	mov dword [rbp + 109], 0

 printFormat$114:
	; 133 Assign g_outStatus integral4$2#
	mov dword [g_outStatus], 2

 printFormat$115:
	; 134 PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$116:
	; 135 IntegralToIntegral £temporary2094 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$117:
	; 136 Add £temporary2095 format £temporary2094
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$118:
	; 137 Dereference £temporary2096 £temporary2095 0

 printFormat$119:
	; 138 Address £temporary2097 £temporary2096

 printFormat$120:
	; 139 Parameter 137 pointer £temporary2097
	mov [rbp + 137], rsi

 printFormat$121:
	; 140 Parameter 145 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$122:
	; 141 Parameter 153 signed int integral4$0#
	mov dword [rbp + 153], 0

 printFormat$123:
	; 142 Parameter 157 signed int integral4$0#
	mov dword [rbp + 157], 0

 printFormat$124:
	; 143 Parameter 161 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$125:
	; 144 Address £temporary2098 width
	mov rsi, rbp
	add rsi, 44

 printFormat$126:
	; 145 Parameter 165 pointer £temporary2098
	mov [rbp + 165], rsi

 printFormat$127:
	; 146 Parameter 173 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$128:
	; 147 Parameter 177 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$129:
	; 148 Parameter 181 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$130:
	; 149 Parameter 185 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$131:
	; 150 Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], 0

 printFormat$132:
	; 151 Address £temporary2099 negative
	mov rsi, rbp
	add rsi, 109

 printFormat$133:
	; 152 Parameter 193 pointer £temporary2099
	mov [rbp + 193], rsi

 printFormat$134:
	; 153 Call 113 printArgument 0
	mov qword [rbp + 113], printFormat$135
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$135:
	; 154 PostCall 113

 printFormat$136:
	; 155 Assign g_outStatus oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$137:
	; 156 Subtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 113], eax

 printFormat$138:
	; 158 Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$139:
	; 159 Equal 146 negative integral4$0#
	cmp dword [rbp + 109], 0
	je printFormat$146

 printFormat$140:
	; 162 PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$141:
	; 163 Parameter 141 signed char integral1$45#
	mov byte [rbp + 141], 45

 printFormat$142:
	; 164 Call 117 printChar 0
	mov qword [rbp + 117], printFormat$143
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$143:
	; 165 PostCall 117

 printFormat$144:
	; 166 Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$145:
	; 168 Jump 159
	jmp printFormat$159

 printFormat$146:
	; 170 Equal 153 plus integral4$0#
	cmp dword [rbp + 56], 0
	je printFormat$153

 printFormat$147:
	; 173 PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$148:
	; 174 Parameter 141 signed char integral1$43#
	mov byte [rbp + 141], 43

 printFormat$149:
	; 175 Call 117 printChar 0
	mov qword [rbp + 117], printFormat$150
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$150:
	; 176 PostCall 117

 printFormat$151:
	; 177 Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$152:
	; 179 Jump 159
	jmp printFormat$159

 printFormat$153:
	; 181 Equal 159 space integral4$0#
	cmp dword [rbp + 64], 0
	je printFormat$159

 printFormat$154:
	; 184 PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$155:
	; 185 Parameter 141 signed char integral1$32#
	mov byte [rbp + 141], 32

 printFormat$156:
	; 186 Call 117 printChar 0
	mov qword [rbp + 117], printFormat$157
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$157:
	; 187 PostCall 117

 printFormat$158:
	; 188 Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$159:
	; 196 Assign £temporary2118 field
	mov eax, [rbp + 113]

 printFormat$160:
	; 197 Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$161:
	; 199 GreaterThanEqual 167 £temporary2118 width
	cmp eax, [rbp + 44]
	jge printFormat$167

 printFormat$162:
	; 201 PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$163:
	; 202 Parameter 141 signed char integral1$48#
	mov byte [rbp + 141], 48

 printFormat$164:
	; 203 Call 117 printChar 0
	mov qword [rbp + 117], printFormat$165
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printChar

 printFormat$165:
	; 204 PostCall 117

 printFormat$166:
	; 206 Jump 159
	jmp printFormat$159

 printFormat$167:
	; 207 PreCall 117 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$168:
	; 208 IntegralToIntegral £temporary2122 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$169:
	; 209 Add £temporary2123 format £temporary2122
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$170:
	; 210 Dereference £temporary2124 £temporary2123 0

 printFormat$171:
	; 211 Address £temporary2125 £temporary2124

 printFormat$172:
	; 212 Parameter 141 pointer £temporary2125
	mov [rbp + 141], rsi

 printFormat$173:
	; 213 Parameter 149 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 149], rax

 printFormat$174:
	; 214 Parameter 157 signed int integral4$0#
	mov dword [rbp + 157], 0

 printFormat$175:
	; 215 Parameter 161 signed int integral4$0#
	mov dword [rbp + 161], 0

 printFormat$176:
	; 216 Parameter 165 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 165], eax

 printFormat$177:
	; 217 Parameter 169 pointer integral8$0#
	mov qword [rbp + 169], 0

 printFormat$178:
	; 218 Parameter 177 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 177], eax

 printFormat$179:
	; 219 Parameter 181 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 181], eax

 printFormat$180:
	; 220 Parameter 185 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 185], eax

 printFormat$181:
	; 221 Parameter 189 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 189], eax

 printFormat$182:
	; 222 Parameter 193 signed int integral4$0#
	mov dword [rbp + 193], 0

 printFormat$183:
	; 223 Parameter 197 pointer integral8$0#
	mov qword [rbp + 197], 0

 printFormat$184:
	; 224 Call 117 printArgument 0
	mov qword [rbp + 117], printFormat$185
	mov [rbp + 125], rbp
	add rbp, 117
	jmp printArgument

 printFormat$185:
	; 225 PostCall 117

 printFormat$186:
	; 226 GetReturnValue £temporary2126

 printFormat$187:
	; 227 Assign arg_list £temporary2126
	mov [rbp + 32], rbx

 printFormat$188:
	; 228 Jump 244
	jmp printFormat$244

 printFormat$189:
	; 230 Assign startChars g_outChars
	mov eax, [g_outChars]
	mov [rbp + 101], eax

 printFormat$190:
	; 231 Assign oldOutStatus g_outStatus
	mov eax, [g_outStatus]
	mov [rbp + 105], eax

 printFormat$191:
	; 232 Assign g_outStatus integral4$2#
	mov dword [g_outStatus], 2

 printFormat$192:
	; 233 PreCall 109 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$193:
	; 234 IntegralToIntegral £temporary2127 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$194:
	; 235 Add £temporary2128 format £temporary2127
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$195:
	; 236 Dereference £temporary2129 £temporary2128 0

 printFormat$196:
	; 237 Address £temporary2130 £temporary2129

 printFormat$197:
	; 238 Parameter 133 pointer £temporary2130
	mov [rbp + 133], rsi

 printFormat$198:
	; 239 Parameter 141 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 141], rax

 printFormat$199:
	; 240 Parameter 149 signed int plus
	mov eax, [rbp + 56]
	mov [rbp + 149], eax

 printFormat$200:
	; 241 Parameter 153 signed int space
	mov eax, [rbp + 64]
	mov [rbp + 153], eax

 printFormat$201:
	; 242 Parameter 157 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 157], eax

 printFormat$202:
	; 243 Address £temporary2131 width
	mov rsi, rbp
	add rsi, 44

 printFormat$203:
	; 244 Parameter 161 pointer £temporary2131
	mov [rbp + 161], rsi

 printFormat$204:
	; 245 Parameter 169 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 169], eax

 printFormat$205:
	; 246 Parameter 173 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 173], eax

 printFormat$206:
	; 247 Parameter 177 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 177], eax

 printFormat$207:
	; 248 Parameter 181 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 181], eax

 printFormat$208:
	; 249 Parameter 185 signed int integral4$1#
	mov dword [rbp + 185], 1

 printFormat$209:
	; 250 Parameter 189 pointer integral8$0#
	mov qword [rbp + 189], 0

 printFormat$210:
	; 251 Call 109 printArgument 0
	mov qword [rbp + 109], printFormat$211
	mov [rbp + 117], rbp
	add rbp, 109
	jmp printArgument

 printFormat$211:
	; 252 PostCall 109

 printFormat$212:
	; 253 Assign g_outStatus oldOutStatus
	mov eax, [rbp + 105]
	mov [g_outStatus], eax

 printFormat$213:
	; 254 Subtract field g_outChars startChars
	mov eax, [g_outChars]
	sub eax, [rbp + 101]
	mov [rbp + 109], eax

 printFormat$214:
	; 256 Assign g_outChars startChars
	mov eax, [rbp + 101]
	mov [g_outChars], eax

 printFormat$215:
	; 258 Assign £temporary2135 field
	mov eax, [rbp + 109]

 printFormat$216:
	; 259 Add field field integral4$1#
	inc dword [rbp + 109]

 printFormat$217:
	; 261 GreaterThanEqual 223 £temporary2135 width
	cmp eax, [rbp + 44]
	jge printFormat$223

 printFormat$218:
	; 263 PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$219:
	; 264 Parameter 137 signed char integral1$32#
	mov byte [rbp + 137], 32

 printFormat$220:
	; 265 Call 113 printChar 0
	mov qword [rbp + 113], printFormat$221
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printChar

 printFormat$221:
	; 266 PostCall 113

 printFormat$222:
	; 268 Jump 215
	jmp printFormat$215

 printFormat$223:
	; 269 PreCall 113 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$224:
	; 270 IntegralToIntegral £temporary2139 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$225:
	; 271 Add £temporary2140 format £temporary2139
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$226:
	; 272 Dereference £temporary2141 £temporary2140 0

 printFormat$227:
	; 273 Address £temporary2142 £temporary2141

 printFormat$228:
	; 274 Parameter 137 pointer £temporary2142
	mov [rbp + 137], rsi

 printFormat$229:
	; 275 Parameter 145 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 145], rax

 printFormat$230:
	; 276 Parameter 153 signed int plus
	mov eax, [rbp + 56]
	mov [rbp + 153], eax

 printFormat$231:
	; 277 Parameter 157 signed int space
	mov eax, [rbp + 64]
	mov [rbp + 157], eax

 printFormat$232:
	; 278 Parameter 161 signed int grid
	mov eax, [rbp + 72]
	mov [rbp + 161], eax

 printFormat$233:
	; 279 Parameter 165 pointer integral8$0#
	mov qword [rbp + 165], 0

 printFormat$234:
	; 280 Parameter 173 signed int precision
	mov eax, [rbp + 48]
	mov [rbp + 173], eax

 printFormat$235:
	; 281 Parameter 177 signed int shortInt
	mov eax, [rbp + 88]
	mov [rbp + 177], eax

 printFormat$236:
	; 282 Parameter 181 signed int longInt
	mov eax, [rbp + 92]
	mov [rbp + 181], eax

 printFormat$237:
	; 283 Parameter 185 signed int longDouble
	mov eax, [rbp + 96]
	mov [rbp + 185], eax

 printFormat$238:
	; 284 Parameter 189 signed int integral4$1#
	mov dword [rbp + 189], 1

 printFormat$239:
	; 285 Parameter 193 pointer integral8$0#
	mov qword [rbp + 193], 0

 printFormat$240:
	; 286 Call 113 printArgument 0
	mov qword [rbp + 113], printFormat$241
	mov [rbp + 121], rbp
	add rbp, 113
	jmp printArgument

 printFormat$241:
	; 287 PostCall 113

 printFormat$242:
	; 288 GetReturnValue £temporary2143

 printFormat$243:
	; 289 Assign arg_list £temporary2143
	mov [rbp + 32], rbx

 printFormat$244:
	; 292 Assign percent integral4$0#
	mov dword [rbp + 52], 0

 printFormat$245:
	; 293 Jump 290
	jmp printFormat$290

 printFormat$246:
	; 294 Assign value integral4$0#
	mov dword [rbp + 101], 0

 printFormat$247:
	; 296 PreCall 105 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$248:
	; 297 IntegralToIntegral £temporary2150 c
	mov al, [rbp + 100]
	and eax, 255
	cmp al, 0
	jge printFormat$249
	neg al
	neg eax

 printFormat$249:
	; 298 Parameter 129 signed int £temporary2150
	mov [rbp + 129], eax

 printFormat$250:
	; 299 Call 105 isdigit 0
	mov qword [rbp + 105], printFormat$251
	mov [rbp + 113], rbp
	add rbp, 105
	jmp isdigit

 printFormat$251:
	; 300 PostCall 105

 printFormat$252:
	; 301 GetReturnValue £temporary2151

 printFormat$253:
	; 302 Equal 264 £temporary2151 integral4$0#
	cmp ebx, 0
	je printFormat$264

 printFormat$254:
	; 304 Multiply £temporary2152 value integral4$10#
	mov eax, [rbp + 101]
	xor edx, edx
	imul dword [@4681integral4$10#]

 printFormat$255:
	; 305 Subtract £temporary2153 c integral1$48#
	mov bl, [rbp + 100]
	sub bl, 48

 printFormat$256:
	; 306 IntegralToIntegral £temporary2155 £temporary2153
	and ebx, 255
	cmp bl, 0
	jge printFormat$257
	neg bl
	neg ebx

 printFormat$257:
	; 307 Add value £temporary2152 £temporary2155
	add eax, ebx
	mov [rbp + 101], eax

 printFormat$258:
	; 309 Add index index integral4$1#
	inc dword [rbp + 40]

 printFormat$259:
	; 311 IntegralToIntegral £temporary2157 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$260:
	; 312 Add £temporary2158 format £temporary2157
	mov rsi, [rbp + 24]
	add rsi, rax

 printFormat$261:
	; 313 Dereference £temporary2159 £temporary2158 0

 printFormat$262:
	; 314 Assign c £temporary2159
	mov al, [rsi]
	mov [rbp + 100], al

 printFormat$263:
	; 316 Jump 247
	jmp printFormat$247

 printFormat$264:
	; 317 Subtract index index integral4$1#
	dec dword [rbp + 40]

 printFormat$265:
	; 319 NotEqual 268 period integral4$0#
	cmp dword [rbp + 80], 0
	jne printFormat$268

 printFormat$266:
	; 322 Assign width value
	mov eax, [rbp + 101]
	mov [rbp + 44], eax

 printFormat$267:
	; 323 Jump 290
	jmp printFormat$290

 printFormat$268:
	; 325 Assign precision value
	mov eax, [rbp + 101]
	mov [rbp + 48], eax

 printFormat$269:
	; 327 Jump 290
	jmp printFormat$290

 printFormat$270:
	; 330 NotEqual 286 c integral1$37#
	cmp byte [rbp + 100], 37
	jne printFormat$286

 printFormat$271:
	; 333 Assign percent integral4$1#
	mov dword [rbp + 52], 1

 printFormat$272:
	; 334 Assign plus integral4$0#
	mov dword [rbp + 56], 0

 printFormat$273:
	; 335 Assign minus integral4$0#
	mov dword [rbp + 60], 0

 printFormat$274:
	; 336 Assign space integral4$0#
	mov dword [rbp + 64], 0

 printFormat$275:
	; 337 Assign zero integral4$0#
	mov dword [rbp + 68], 0

 printFormat$276:
	; 338 Assign grid integral4$0#
	mov dword [rbp + 72], 0

 printFormat$277:
	; 339 Assign widthStar integral4$0#
	mov dword [rbp + 76], 0

 printFormat$278:
	; 340 Assign period integral4$0#
	mov dword [rbp + 80], 0

 printFormat$279:
	; 341 Assign precisionStar integral4$0#
	mov dword [rbp + 84], 0

 printFormat$280:
	; 342 Assign shortInt integral4$0#
	mov dword [rbp + 88], 0

 printFormat$281:
	; 343 Assign longInt integral4$0#
	mov dword [rbp + 92], 0

 printFormat$282:
	; 344 Assign longDouble integral4$0#
	mov dword [rbp + 96], 0

 printFormat$283:
	; 345 Assign width integral4$0#
	mov dword [rbp + 44], 0

 printFormat$284:
	; 346 Assign precision integral4$0#
	mov dword [rbp + 48], 0

 printFormat$285:
	; 347 Jump 290
	jmp printFormat$290

 printFormat$286:
	; 349 PreCall 101 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printFormat$287:
	; 350 Parameter 125 signed char c
	mov al, [rbp + 100]
	mov [rbp + 125], al

 printFormat$288:
	; 351 Call 101 printChar 0
	mov qword [rbp + 101], printFormat$289
	mov [rbp + 109], rbp
	add rbp, 101
	jmp printChar

 printFormat$289:
	; 352 PostCall 101

 printFormat$290:
	; 356 Add index index integral4$1#
	inc dword [rbp + 40]

 printFormat$291:
	; 358 Jump 16
	jmp printFormat$16

 printFormat$292:
	; 359 NotEqual 299 g_outStatus integral4$1#
	cmp dword [g_outStatus], 1
	jne printFormat$299

 printFormat$293:
	; 362 IntegralToIntegral £temporary2174 g_outDevice
	mov rax, [g_outDevice]

 printFormat$294:
	; 363 Assign outString £temporary2174
	mov [rbp + 100], rax

 printFormat$295:
	; 364 IntegralToIntegral £temporary2175 g_outChars
	mov eax, [g_outChars]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$296:
	; 365 Add £temporary2176 outString £temporary2175
	mov rsi, [rbp + 100]
	add rsi, rax

 printFormat$297:
	; 366 Dereference £temporary2177 £temporary2176 0

 printFormat$298:
	; 367 Assign £temporary2177 integral1$0#
	mov byte [rsi], 0

 printFormat$299:
	; 371 SetReturnValue

 printFormat$300:
	; 372 Return g_outChars
	mov ebx, [g_outChars]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printFormat$301:
	; 374 FunctionEnd printFormat

section .text

 printf:
	; 0 Address £temporary2184 format
	mov rsi, rbp
	add rsi, 24

 printf$1:
	; 1 IntegralToIntegral £temporary2185 £temporary2184

 printf$2:
	; 2 Add arg_list £temporary2185 integral8$8#
	add rsi, 8
	mov [rdi + 32], rsi

 printf$3:
	; 4 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 printf$4:
	; 5 Parameter 64 pointer format
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

 printf$5:
	; 6 Parameter 72 pointer arg_list
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

 printf$6:
	; 7 Call 40 vprintf 0
	mov qword [rdi + 40], printf$7
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	add rdi, 40
	mov rbp, rdi
	jmp vprintf

 printf$7:
	; 8 PostCall 40

 printf$8:
	; 9 GetReturnValue £temporary2187

 printf$9:
	; 10 SetReturnValue

 printf$10:
	; 11 Return £temporary2187
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 printf$11:
	; 13 FunctionEnd printf

section .text

 vprintf:
	; 0 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vprintf$1:
	; 1 Parameter 64 pointer stdout
	mov rax, [stdout]
	mov [rbp + 64], rax

 vprintf$2:
	; 2 Parameter 72 pointer format
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 vprintf$3:
	; 3 Parameter 80 pointer arg_list
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 vprintf$4:
	; 4 Call 40 vfprintf 0
	mov qword [rbp + 40], vprintf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfprintf

 vprintf$5:
	; 5 PostCall 40

 vprintf$6:
	; 6 GetReturnValue £temporary2189

 vprintf$7:
	; 7 SetReturnValue

 vprintf$8:
	; 8 Return £temporary2189
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vprintf$9:
	; 10 FunctionEnd vprintf

section .text

 fprintf:
	; 0 Address £temporary2190 format
	mov rsi, rbp
	add rsi, 32

 fprintf$1:
	; 1 IntegralToIntegral £temporary2191 £temporary2190

 fprintf$2:
	; 2 Add arg_list £temporary2191 integral8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 fprintf$3:
	; 4 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 fprintf$4:
	; 5 Parameter 72 pointer outStream
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 fprintf$5:
	; 6 Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 fprintf$6:
	; 7 Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 fprintf$7:
	; 8 Call 48 vfprintf 0
	mov qword [rdi + 48], fprintf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vfprintf

 fprintf$8:
	; 9 PostCall 48

 fprintf$9:
	; 10 GetReturnValue £temporary2193

 fprintf$10:
	; 11 SetReturnValue

 fprintf$11:
	; 12 Return £temporary2193
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fprintf$12:
	; 14 FunctionEnd fprintf

section .text

 vfprintf:
	; 0 Assign g_outStatus integral4$0#
	mov dword [g_outStatus], 0

 vfprintf$1:
	; 1 IntegralToIntegral £temporary2195 outStream
	mov rax, [rbp + 24]

 vfprintf$2:
	; 2 Assign g_outDevice £temporary2195
	mov [g_outDevice], rax

 vfprintf$3:
	; 3 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vfprintf$4:
	; 4 Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vfprintf$5:
	; 5 Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vfprintf$6:
	; 6 Call 48 printFormat 0
	mov qword [rbp + 48], vfprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vfprintf$7:
	; 7 PostCall 48

 vfprintf$8:
	; 8 GetReturnValue £temporary2196

 vfprintf$9:
	; 9 SetReturnValue

 vfprintf$10:
	; 10 Return £temporary2196
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vfprintf$11:
	; 12 FunctionEnd vfprintf

section .text

 sprintf:
	; 0 Address £temporary2197 format
	mov rsi, rbp
	add rsi, 32

 sprintf$1:
	; 1 IntegralToIntegral £temporary2198 £temporary2197

 sprintf$2:
	; 2 Add arg_list £temporary2198 integral8$8#
	add rsi, 8
	mov [rdi + 40], rsi

 sprintf$3:
	; 4 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 sprintf$4:
	; 5 Parameter 72 pointer outString
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

 sprintf$5:
	; 6 Parameter 80 pointer format
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

 sprintf$6:
	; 7 Parameter 88 pointer arg_list
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

 sprintf$7:
	; 8 Call 48 vsprintf 0
	mov qword [rdi + 48], sprintf$8
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	add rdi, 48
	mov rbp, rdi
	jmp vsprintf

 sprintf$8:
	; 9 PostCall 48

 sprintf$9:
	; 10 GetReturnValue £temporary2200

 sprintf$10:
	; 11 SetReturnValue

 sprintf$11:
	; 12 Return £temporary2200
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 sprintf$12:
	; 14 FunctionEnd sprintf

section .text

 vsprintf:
	; 0 Assign g_outStatus integral4$1#
	mov dword [g_outStatus], 1

 vsprintf$1:
	; 1 IntegralToIntegral £temporary2202 outString
	mov rax, [rbp + 24]

 vsprintf$2:
	; 2 Assign g_outDevice £temporary2202
	mov [g_outDevice], rax

 vsprintf$3:
	; 3 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 vsprintf$4:
	; 4 Parameter 72 pointer format
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 vsprintf$5:
	; 5 Parameter 80 pointer arg_list
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 vsprintf$6:
	; 6 Call 48 printFormat 0
	mov qword [rbp + 48], vsprintf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp printFormat

 vsprintf$7:
	; 7 PostCall 48

 vsprintf$8:
	; 8 GetReturnValue £temporary2203

 vsprintf$9:
	; 9 SetReturnValue

 vsprintf$10:
	; 10 Return £temporary2203
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 vsprintf$11:
	; 12 FunctionEnd vsprintf
