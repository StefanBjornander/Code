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
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], {operand2}

 putc$1:
	; IntegralToIntegral £temporary1774 stream
	mov rax, [{operand1}{WithSign(operand2)}]

 putc$2:
	; Assign g_outDevice £temporary1774
	mov [g_outDevice], {operand2}

 putc$3:
	; PreCall 36

 putc$4:
	; IntegralToIntegral £temporary1775 i
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp eax, 0
	jge putc$5
	neg eax
	neg al

 putc$5:
	; Parameter 60 signed char £temporary1775
	mov [rbp + 60], {operand2}

 putc$6:
	; Call 36 printChar 0
	mov qword [rbp + 36], putc$7
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 putc$7:
	; PostCall 36

 putc$8:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 putc$9:
	; FunctionEnd putc

section .text

 fputc:
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], {operand2}

 fputc$1:
	; IntegralToIntegral £temporary1777 stream
	mov rax, [{operand1}{WithSign(operand2)}]

 fputc$2:
	; Assign g_outDevice £temporary1777
	mov [g_outDevice], {operand2}

 fputc$3:
	; PreCall 36

 fputc$4:
	; IntegralToIntegral £temporary1778 i
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp eax, 0
	jge fputc$5
	neg eax
	neg al

 fputc$5:
	; Parameter 60 signed char £temporary1778
	mov [rbp + 60], {operand2}

 fputc$6:
	; Call 36 printChar 0
	mov qword [rbp + 36], fputc$7
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 fputc$7:
	; PostCall 36

 fputc$8:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 fputc$9:
	; FunctionEnd fputc

section .text

 putchar:
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], {operand2}

 putchar$1:
	; IntegralToIntegral £temporary1780 stdout
	mov rax, [{operand1}{WithSign(operand2)}]

 putchar$2:
	; Assign g_outDevice £temporary1780
	mov [g_outDevice], {operand2}

 putchar$3:
	; PreCall 28

 putchar$4:
	; IntegralToIntegral £temporary1781 i
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp eax, 0
	jge putchar$5
	neg eax
	neg al

 putchar$5:
	; Parameter 52 signed char £temporary1781
	mov [rbp + 52], {operand2}

 putchar$6:
	; Call 28 printChar 0
	mov qword [rbp + 28], putchar$7
	mov [rbp + 36], {operand2}
	add rbp, 28
	jmp printChar

 putchar$7:
	; PostCall 28

 putchar$8:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 putchar$9:
	; FunctionEnd putchar

section .text

 printChar:
	; Case 5 g_outStatus integral4$0#
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp eax, 0
	je printChar$5

 printChar$1:
	; Case 18 g_outStatus integral4$1#
	cmp eax, 1
	je printChar$18

 printChar$2:
	; Case 27 g_outStatus integral4$2#
	cmp eax, 2
	je printChar$27

 printChar$3:
	; CaseEnd g_outStatus

 printChar$4:
	; Jump 28
	jmp printChar$28

 printChar$5:
	; IntegralToIntegral £temporary1783 g_outDevice
	mov rax, [{operand1}{WithSign(operand2)}]

 printChar$6:
	; Assign stream £temporary1783
	mov [rbp + 37], {operand2}

 printChar$7:
	; AssignRegister rax integral8$1#
	mov rax, 1

 printChar$8:
	; Dereference £temporary1786 stream 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 printChar$9:
	; IntegralToIntegral £temporary1787 £temporary1786.handle
	mov edi, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rdi, rbx

 printChar$10:
	; AssignRegister rdi £temporary1787

 printChar$11:
	; Address £temporary1789 c
	mov rsi, rbp
	add rsi, 24

 printChar$12:
	; IntegralToIntegral £temporary1790 £temporary1789

 printChar$13:
	; AssignRegister rsi £temporary1790

 printChar$14:
	; AssignRegister rdx integral8$1#
	mov rdx, 1

 printChar$15:
	; SysCall
	syscall

 printChar$16:
	; Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$17:
	; Jump 28
	jmp printChar$28

 printChar$18:
	; IntegralToIntegral £temporary1793 g_outDevice
	mov rax, [{operand1}{WithSign(operand2)}]

 printChar$19:
	; Assign outString £temporary1793
	mov [rbp + 29], {operand2}

 printChar$20:
	; Assign £temporary1796 g_outChars
	mov eax, [{operand1}{WithSign(operand2)}]

 printChar$21:
	; Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$22:
	; IntegralToIntegral £temporary1797 £temporary1796
	mov rbx, 4294967295
	and rax, rbx

 printChar$23:
	; Add £temporary1798 outString £temporary1797
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printChar$24:
	; Dereference £temporary1799 £temporary1798 0

 printChar$25:
	; Assign £temporary1799 c
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 printChar$26:
	; Jump 28
	jmp printChar$28

 printChar$27:
	; Add g_outChars g_outChars integral4$1#
	inc dword [g_outChars]

 printChar$28:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printChar$29:
	; FunctionEnd printChar

section .text

 printString:
	; Equal 33 s integral8$0#
	cmp qword [rbp + 24], {operand2}
	je printString$33

 printString$1:
	; NotEqual 16 precision integral4$0#
	cmp dword [rbp + 32], {operand2}
	jne printString$16

 printString$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], {operand2}

 printString$3:
	; IntegralToIntegral £temporary1806 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printString$4:
	; Add £temporary1807 s £temporary1806
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printString$5:
	; Dereference £temporary1808 £temporary1807 0

 printString$6:
	; Equal 57 £temporary1808 integral1$0#
	cmp byte [rsi], {operand2}
	je printString$57

 printString$7:
	; PreCall 40

 printString$8:
	; IntegralToIntegral £temporary1812 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printString$9:
	; Add £temporary1813 s £temporary1812
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printString$10:
	; Dereference £temporary1814 £temporary1813 0

 printString$11:
	; Parameter 64 signed char £temporary1814
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 printString$12:
	; Call 40 printChar 0
	mov qword [rbp + 40], printString$13
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printString$13:
	; PostCall 40

 printString$14:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 printString$15:
	; Jump 3
	jmp printString$3

 printString$16:
	; Assign index integral4$0#
	mov dword [rbp + 36], {operand2}

 printString$17:
	; Assign £temporary1816 precision
	mov eax, [{operand1}{WithSign(operand2)}]

 printString$18:
	; Subtract precision precision integral4$1#
	dec dword [rbp + 32]

 printString$19:
	; LessThanEqual 57 £temporary1816 integral4$0#
	cmp eax, 0
	jle printString$57

 printString$20:
	; IntegralToIntegral £temporary1820 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printString$21:
	; Add £temporary1821 s £temporary1820
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printString$22:
	; Dereference £temporary1822 £temporary1821 0

 printString$23:
	; Equal 57 £temporary1822 integral1$0#
	cmp byte [rsi], {operand2}
	je printString$57

 printString$24:
	; PreCall 40

 printString$25:
	; IntegralToIntegral £temporary1827 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printString$26:
	; Add £temporary1828 s £temporary1827
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printString$27:
	; Dereference £temporary1829 £temporary1828 0

 printString$28:
	; Parameter 64 signed char £temporary1829
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 printString$29:
	; Call 40 printChar 0
	mov qword [rbp + 40], printString$30
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printString$30:
	; PostCall 40

 printString$31:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 printString$32:
	; Jump 17
	jmp printString$17

 printString$33:
	; PreCall 36

 printString$34:
	; Parameter 60 signed char integral1$60#
	mov byte [rbp + 60], {operand2}

 printString$35:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$36
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printString$36:
	; PostCall 36

 printString$37:
	; PreCall 36

 printString$38:
	; Parameter 60 signed char integral1$78#
	mov byte [rbp + 60], {operand2}

 printString$39:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$40
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printString$40:
	; PostCall 36

 printString$41:
	; PreCall 36

 printString$42:
	; Parameter 60 signed char integral1$85#
	mov byte [rbp + 60], {operand2}

 printString$43:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$44
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printString$44:
	; PostCall 36

 printString$45:
	; PreCall 36

 printString$46:
	; Parameter 60 signed char integral1$76#
	mov byte [rbp + 60], {operand2}

 printString$47:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$48
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printString$48:
	; PostCall 36

 printString$49:
	; PreCall 36

 printString$50:
	; Parameter 60 signed char integral1$76#
	mov byte [rbp + 60], {operand2}

 printString$51:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$52
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printString$52:
	; PostCall 36

 printString$53:
	; PreCall 36

 printString$54:
	; Parameter 60 signed char integral1$62#
	mov byte [rbp + 60], {operand2}

 printString$55:
	; Call 36 printChar 0
	mov qword [rbp + 36], printString$56
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printString$56:
	; PostCall 36

 printString$57:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printString$58:
	; FunctionEnd printString

section .data

@4229integral8$10#:
	; Initializer SignedLongInt 10
	dq 10

section .data

@4231integral8$10#:
	; Initializer SignedLongInt 10
	dq 10

section .text

 printLongIntRec:
	; Equal 15 longValue integral8$0#
	cmp qword [rbp + 24], {operand2}
	je printLongIntRec$15

 printLongIntRec$1:
	; Modulo £temporary1842 longValue integral8$10#
	mov rax, [{operand1}{WithSign(operand2)}]
	xor rdx, rdx
	idiv qword [@4229integral8$10#]

 printLongIntRec$2:
	; IntegralToIntegral £temporary1843 £temporary1842
	cmp rdx, 0
	jge printLongIntRec$3
	neg rdx
	neg edx

 printLongIntRec$3:
	; Assign digit £temporary1843
	mov [rbp + 32], {operand2}

 printLongIntRec$4:
	; PreCall 36

 printLongIntRec$5:
	; Divide £temporary1844 longValue integral8$10#
	mov rax, [{operand1}{WithSign(operand2)}]
	xor rdx, rdx
	idiv qword [@4231integral8$10#]

 printLongIntRec$6:
	; Parameter 60 signed long int £temporary1844
	mov [rbp + 60], {operand2}

 printLongIntRec$7:
	; Call 36 printLongIntRec 0
	mov qword [rbp + 36], printLongIntRec$8
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printLongIntRec

 printLongIntRec$8:
	; PostCall 36

 printLongIntRec$9:
	; PreCall 36

 printLongIntRec$10:
	; Add £temporary1846 digit integral4$48#
	mov eax, [{operand1}{WithSign(operand2)}]
	add eax, 48

 printLongIntRec$11:
	; IntegralToIntegral £temporary1847 £temporary1846
	cmp eax, 0
	jge printLongIntRec$12
	neg eax
	neg al

 printLongIntRec$12:
	; Parameter 60 signed char £temporary1847
	mov [rbp + 60], {operand2}

 printLongIntRec$13:
	; Call 36 printChar 0
	mov qword [rbp + 36], printLongIntRec$14
	mov [rbp + 44], {operand2}
	add rbp, 36
	jmp printChar

 printLongIntRec$14:
	; PostCall 36

 printLongIntRec$15:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printLongIntRec$16:
	; FunctionEnd printLongIntRec

section .text

 printLongInt:
	; GreaterThanEqual 8 longValue integral8$0#
	cmp qword [rbp + 24], {operand2}
	jge printLongInt$8

 printLongInt$1:
	; Minus £temporary1852 longValue
	mov rax, [{operand1}{WithSign(operand2)}]
	neg rax

 printLongInt$2:
	; Assign longValue £temporary1852
	mov [rbp + 24], {operand2}

 printLongInt$3:
	; PreCall 40

 printLongInt$4:
	; Parameter 64 signed char integral1$45#
	mov byte [rbp + 64], {operand2}

 printLongInt$5:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$6
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printLongInt$6:
	; PostCall 40

 printLongInt$7:
	; Jump 19
	jmp printLongInt$19

 printLongInt$8:
	; Equal 14 space integral4$0#
	cmp dword [rbp + 36], {operand2}
	je printLongInt$14

 printLongInt$9:
	; PreCall 40

 printLongInt$10:
	; Parameter 64 signed char integral1$32#
	mov byte [rbp + 64], {operand2}

 printLongInt$11:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$12
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printLongInt$12:
	; PostCall 40

 printLongInt$13:
	; Jump 19
	jmp printLongInt$19

 printLongInt$14:
	; Equal 19 plus integral4$0#
	cmp dword [rbp + 32], {operand2}
	je printLongInt$19

 printLongInt$15:
	; PreCall 40

 printLongInt$16:
	; Parameter 64 signed char integral1$43#
	mov byte [rbp + 64], {operand2}

 printLongInt$17:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$18
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printLongInt$18:
	; PostCall 40

 printLongInt$19:
	; NotEqual 25 longValue integral8$0#
	cmp qword [rbp + 24], {operand2}
	jne printLongInt$25

 printLongInt$20:
	; PreCall 40

 printLongInt$21:
	; Parameter 64 signed char integral1$48#
	mov byte [rbp + 64], {operand2}

 printLongInt$22:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongInt$23
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printLongInt$23:
	; PostCall 40

 printLongInt$24:
	; Jump 29
	jmp printLongInt$29

 printLongInt$25:
	; PreCall 40

 printLongInt$26:
	; Parameter 64 signed long int longValue
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 printLongInt$27:
	; Call 40 printLongIntRec 0
	mov qword [rbp + 40], printLongInt$28
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printLongIntRec

 printLongInt$28:
	; PostCall 40

 printLongInt$29:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printLongInt$30:
	; FunctionEnd printLongInt

section .text

 digitToChar:
	; GreaterThanEqual 4 digit integral4$10#
	cmp dword [rbp + 24], {operand2}
	jge digitToChar$4

 digitToChar$1:
	; Add £temporary1870 digit integral4$48#
	mov ebx, [{operand1}{WithSign(operand2)}]
	add ebx, 48

 digitToChar$2:
	; IntegralToIntegral £temporary1871 £temporary1870
	cmp ebx, 0
	jge digitToChar$3
	neg ebx
	neg bl

 digitToChar$3:
	; Return £temporary1871
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 digitToChar$4:
	; Equal 9 capital integral4$0#
	cmp dword [rbp + 28], {operand2}
	je digitToChar$9

 digitToChar$5:
	; Subtract £temporary1872 digit integral4$10#
	mov ebx, [{operand1}{WithSign(operand2)}]
	sub ebx, 10

 digitToChar$6:
	; Add £temporary1873 £temporary1872 integral4$65#
	add ebx, 65

 digitToChar$7:
	; IntegralToIntegral £temporary1874 £temporary1873
	cmp ebx, 0
	jge digitToChar$8
	neg ebx
	neg bl

 digitToChar$8:
	; Return £temporary1874
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 digitToChar$9:
	; Subtract £temporary1875 digit integral4$10#
	mov ebx, [{operand1}{WithSign(operand2)}]
	sub ebx, 10

 digitToChar$10:
	; Add £temporary1876 £temporary1875 integral4$97#
	add ebx, 97

 digitToChar$11:
	; IntegralToIntegral £temporary1877 £temporary1876
	cmp ebx, 0
	jge digitToChar$12
	neg ebx
	neg bl

 digitToChar$12:
	; Return £temporary1877
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 digitToChar$13:
	; FunctionEnd digitToChar

section .text

 printUnsignedLongRec:
	; LessThanEqual 22 unsignedValue integral8$0#
	cmp qword [rbp + 24], {operand2}
	jbe printUnsignedLongRec$22

 printUnsignedLongRec$1:
	; Modulo £temporary1884 unsignedValue base
	mov rax, [{operand1}{WithSign(operand2)}]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$2:
	; IntegralToIntegral £temporary1885 £temporary1884

 printUnsignedLongRec$3:
	; Assign digit £temporary1885
	mov [rbp + 44], {operand2}

 printUnsignedLongRec$4:
	; PreCall 48

 printUnsignedLongRec$5:
	; Divide £temporary1886 unsignedValue base
	mov rax, [{operand1}{WithSign(operand2)}]
	xor rdx, rdx
	div qword [rbp + 32]

 printUnsignedLongRec$6:
	; Parameter 72 unsigned long int £temporary1886
	mov [rbp + 72], {operand2}

 printUnsignedLongRec$7:
	; Parameter 80 unsigned long int base
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 printUnsignedLongRec$8:
	; Parameter 88 signed int capital
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printUnsignedLongRec$9:
	; Call 48 printUnsignedLongRec 0
	mov qword [rbp + 48], printUnsignedLongRec$10
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp printUnsignedLongRec

 printUnsignedLongRec$10:
	; PostCall 48

 printUnsignedLongRec$11:
	; PreCall 48

 printUnsignedLongRec$12:
	; Parameter 72 signed int digit
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 printUnsignedLongRec$13:
	; Parameter 76 signed int capital
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 76], {operand2}

 printUnsignedLongRec$14:
	; Call 48 digitToChar 0
	mov qword [rbp + 48], printUnsignedLongRec$15
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp digitToChar

 printUnsignedLongRec$15:
	; PostCall 48

 printUnsignedLongRec$16:
	; GetReturnValue £temporary1888

 printUnsignedLongRec$17:
	; Assign c £temporary1888
	mov [rbp + 48], {operand2}

 printUnsignedLongRec$18:
	; PreCall 49

 printUnsignedLongRec$19:
	; Parameter 73 signed char c
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 73], {operand2}

 printUnsignedLongRec$20:
	; Call 49 printChar 0
	mov qword [rbp + 49], printUnsignedLongRec$21
	mov [rbp + 57], {operand2}
	add rbp, 49
	jmp printChar

 printUnsignedLongRec$21:
	; PostCall 49

 printUnsignedLongRec$22:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printUnsignedLongRec$23:
	; FunctionEnd printUnsignedLongRec

section .text

 printUnsignedLong:
	; Equal 5 plus integral4$0#
	cmp dword [rbp + 32], {operand2}
	je printUnsignedLong$5

 printUnsignedLong$1:
	; PreCall 56

 printUnsignedLong$2:
	; Parameter 80 signed char integral1$43#
	mov byte [rbp + 80], {operand2}

 printUnsignedLong$3:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$4
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printUnsignedLong$4:
	; PostCall 56

 printUnsignedLong$5:
	; Equal 10 space integral4$0#
	cmp dword [rbp + 36], {operand2}
	je printUnsignedLong$10

 printUnsignedLong$6:
	; PreCall 56

 printUnsignedLong$7:
	; Parameter 80 signed char integral1$32#
	mov byte [rbp + 80], {operand2}

 printUnsignedLong$8:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$9
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printUnsignedLong$9:
	; PostCall 56

 printUnsignedLong$10:
	; Equal 29 grid integral4$0#
	cmp dword [rbp + 40], {operand2}
	je printUnsignedLong$29

 printUnsignedLong$11:
	; NotEqual 16 base integral8$8#
	cmp qword [rbp + 44], {operand2}
	jne printUnsignedLong$16

 printUnsignedLong$12:
	; PreCall 56

 printUnsignedLong$13:
	; Parameter 80 signed char integral1$48#
	mov byte [rbp + 80], {operand2}

 printUnsignedLong$14:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$15
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printUnsignedLong$15:
	; PostCall 56

 printUnsignedLong$16:
	; NotEqual 29 base integral8$16#
	cmp qword [rbp + 44], {operand2}
	jne printUnsignedLong$29

 printUnsignedLong$17:
	; PreCall 56

 printUnsignedLong$18:
	; Parameter 80 signed char integral1$48#
	mov byte [rbp + 80], {operand2}

 printUnsignedLong$19:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$20
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printUnsignedLong$20:
	; PostCall 56

 printUnsignedLong$21:
	; PreCall 56

 printUnsignedLong$22:
	; Equal 25 capital integral4$0#
	cmp dword [rbp + 52], {operand2}
	je printUnsignedLong$25

 printUnsignedLong$23:
	; Assign £temporary1907 integral1$88#
	mov al, 88

 printUnsignedLong$24:
	; Jump 26
	jmp printUnsignedLong$26

 printUnsignedLong$25:
	; Assign £temporary1907 integral1$120#
	mov al, 120

 printUnsignedLong$26:
	; Parameter 80 signed char £temporary1907
	mov [rbp + 80], {operand2}

 printUnsignedLong$27:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$28
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printUnsignedLong$28:
	; PostCall 56

 printUnsignedLong$29:
	; NotEqual 35 unsignedValue integral8$0#
	cmp qword [rbp + 24], {operand2}
	jne printUnsignedLong$35

 printUnsignedLong$30:
	; PreCall 56

 printUnsignedLong$31:
	; Parameter 80 signed char integral1$48#
	mov byte [rbp + 80], {operand2}

 printUnsignedLong$32:
	; Call 56 printChar 0
	mov qword [rbp + 56], printUnsignedLong$33
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printUnsignedLong$33:
	; PostCall 56

 printUnsignedLong$34:
	; Jump 41
	jmp printUnsignedLong$41

 printUnsignedLong$35:
	; PreCall 56

 printUnsignedLong$36:
	; Parameter 80 unsigned long int unsignedValue
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 printUnsignedLong$37:
	; Parameter 88 unsigned long int base
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printUnsignedLong$38:
	; Parameter 96 signed int capital
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 96], {operand2}

 printUnsignedLong$39:
	; Call 56 printUnsignedLongRec 0
	mov qword [rbp + 56], printUnsignedLong$40
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printUnsignedLongRec

 printUnsignedLong$40:
	; PostCall 56

 printUnsignedLong$41:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printUnsignedLong$42:
	; FunctionEnd printUnsignedLong

section .data

container8bytes#:
	; InitializerZero 8
	times 8 db 0

section .data

@4315floating8$10.0#:
	; Initializer LongDouble 10.0
	dq 10.0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .text

 printLongDoubleFraction:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$1:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$2:
	; FloatingToIntegral £temporary1919 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [{operand1}{WithSign(operand2)}]

 printLongDoubleFraction$3:
	; IntegralToFloating £temporary1921 £temporary1919
	mov [container8bytes#], {operand2}
	fild qword [container8bytes#]

 printLongDoubleFraction$4:
	; Subtract £temporary1920 longDoubleValue £temporary1921
	fsub

 printLongDoubleFraction$5:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$6:
	; NotEqual 8 precision integral4$0#
	cmp dword [rbp + 36], {operand2}
	jne printLongDoubleFraction$8

 printLongDoubleFraction$7:
	; Assign precision integral4$6#
	mov dword [rbp + 36], {operand2}

 printLongDoubleFraction$8:
	; NotEqual 10 grid integral4$0#
	cmp dword [rbp + 32], {operand2}
	jne printLongDoubleFraction$10

 printLongDoubleFraction$9:
	; LessThanEqual 14 precision integral4$0#
	cmp dword [rbp + 36], {operand2}
	jle printLongDoubleFraction$14

 printLongDoubleFraction$10:
	; PreCall 40

 printLongDoubleFraction$11:
	; Parameter 64 signed char integral1$46#
	mov byte [rbp + 64], {operand2}

 printLongDoubleFraction$12:
	; Call 40 printChar 0
	mov qword [rbp + 40], printLongDoubleFraction$13
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp printChar

 printLongDoubleFraction$13:
	; PostCall 40

 printLongDoubleFraction$14:
	; Assign £temporary1931 precision
	mov eax, [{operand1}{WithSign(operand2)}]

 printLongDoubleFraction$15:
	; Subtract precision precision integral4$1#
	dec dword [rbp + 36]

 printLongDoubleFraction$16:
	; LessThanEqual 34 £temporary1931 integral4$0#
	cmp eax, 0
	jle printLongDoubleFraction$34

 printLongDoubleFraction$17:
	; PushFloat floating8$10.0#
	fld qword [@4315floating8$10.0#]

 printLongDoubleFraction$18:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoubleFraction$19:
	; Multiply £temporary1934 floating8$10.0# longDoubleValue
	fmul

 printLongDoubleFraction$20:
	; TopFloat longDoubleValue10
	fst qword [rbp + 40]

 printLongDoubleFraction$21:
	; FloatingToIntegral £temporary1935 longDoubleValue10
	fistp dword [container4bytes#]
	mov eax, [{operand1}{WithSign(operand2)}]

 printLongDoubleFraction$22:
	; Assign digitValue £temporary1935
	mov [rbp + 48], {operand2}

 printLongDoubleFraction$23:
	; PreCall 52

 printLongDoubleFraction$24:
	; Add £temporary1936 digitValue integral4$48#
	mov eax, [{operand1}{WithSign(operand2)}]
	add eax, 48

 printLongDoubleFraction$25:
	; IntegralToIntegral £temporary1937 £temporary1936
	cmp eax, 0
	jge printLongDoubleFraction$26
	neg eax
	neg al

 printLongDoubleFraction$26:
	; Parameter 76 signed char £temporary1937
	mov [rbp + 76], {operand2}

 printLongDoubleFraction$27:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleFraction$28
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp printChar

 printLongDoubleFraction$28:
	; PostCall 52

 printLongDoubleFraction$29:
	; PushFloat longDoubleValue10
	fld qword [rbp + 40]

 printLongDoubleFraction$30:
	; IntegralToFloating £temporary1939 digitValue
	fild dword [rbp + 48]

 printLongDoubleFraction$31:
	; Subtract £temporary1940 longDoubleValue10 £temporary1939
	fsub

 printLongDoubleFraction$32:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoubleFraction$33:
	; Jump 14
	jmp printLongDoubleFraction$14

 printLongDoubleFraction$34:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printLongDoubleFraction$35:
	; FunctionEnd printLongDoubleFraction

section .text

 printLongDoublePlain:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$1:
	; PushFloat floating8$0.0#
	fldz

 printLongDoublePlain$2:
	; GreaterThanEqual 12 longDoubleValue floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jbe printLongDoublePlain$12

 printLongDoublePlain$3:
	; PreCall 48

 printLongDoublePlain$4:
	; Parameter 72 signed char integral1$45#
	mov byte [rbp + 72], {operand2}

 printLongDoublePlain$5:
	; Call 48 printChar 0
	mov qword [rbp + 48], printLongDoublePlain$6
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp printChar

 printLongDoublePlain$6:
	; PostCall 48

 printLongDoublePlain$7:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$8:
	; Minus £temporary1943 longDoubleValue
	fchs

 printLongDoublePlain$9:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$10:
	; Assign plus integral4$0#
	mov dword [rbp + 32], {operand2}

 printLongDoublePlain$11:
	; Assign space integral4$0#
	mov dword [rbp + 36], {operand2}

 printLongDoublePlain$12:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$13:
	; FloatingToIntegral £temporary1946 longDoubleValue
	fistp qword [container8bytes#]
	mov rax, [{operand1}{WithSign(operand2)}]

 printLongDoublePlain$14:
	; Assign longValue £temporary1946
	mov [rbp + 48], {operand2}

 printLongDoublePlain$15:
	; PreCall 56

 printLongDoublePlain$16:
	; Parameter 80 signed long int longValue
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 printLongDoublePlain$17:
	; Parameter 88 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printLongDoublePlain$18:
	; Parameter 92 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 92], {operand2}

 printLongDoublePlain$19:
	; Call 56 printLongInt 0
	mov qword [rbp + 56], printLongDoublePlain$20
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printLongInt

 printLongDoublePlain$20:
	; PostCall 56

 printLongDoublePlain$21:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$22:
	; IntegralToFloating £temporary1948 longValue
	fild qword [rbp + 48]

 printLongDoublePlain$23:
	; Subtract £temporary1949 longDoubleValue £temporary1948
	fsub

 printLongDoublePlain$24:
	; PopFloat longDoubleValue
	fstp qword [rbp + 24]

 printLongDoublePlain$25:
	; PreCall 56

 printLongDoublePlain$26:
	; PushFloat longDoubleValue
	fld qword [rbp + 24]

 printLongDoublePlain$27:
	; Parameter 80 long double longDoubleValue
	fstp qword [rbp + 80]

 printLongDoublePlain$28:
	; Parameter 88 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printLongDoublePlain$29:
	; Parameter 92 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 92], {operand2}

 printLongDoublePlain$30:
	; Call 56 printLongDoubleFraction 0
	mov qword [rbp + 56], printLongDoublePlain$31
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printLongDoubleFraction

 printLongDoublePlain$31:
	; PostCall 56

 printLongDoublePlain$32:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printLongDoublePlain$33:
	; FunctionEnd printLongDoublePlain

section .data

@4354floating8$10.0#:
	; Initializer Double 10.0
	dq 10.0

section .text

 printLongDoubleExpo:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$1:
	; PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$2:
	; NotEqual 27 value floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jne printLongDoubleExpo$27

 printLongDoubleExpo$3:
	; PreCall 52

 printLongDoubleExpo$4:
	; Parameter 76 signed char integral1$48#
	mov byte [rbp + 76], {operand2}

 printLongDoubleExpo$5:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$6
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$6:
	; PostCall 52

 printLongDoubleExpo$7:
	; PreCall 52

 printLongDoubleExpo$8:
	; PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$9:
	; Parameter 76 long double floating8$0.0#
	fstp qword [rbp + 76]

 printLongDoubleExpo$10:
	; Parameter 84 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 84], {operand2}

 printLongDoubleExpo$11:
	; Parameter 88 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printLongDoubleExpo$12:
	; Call 52 printLongDoubleFraction 0
	mov qword [rbp + 52], printLongDoubleExpo$13
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp printLongDoubleFraction

 printLongDoubleExpo$13:
	; PostCall 52

 printLongDoubleExpo$14:
	; PreCall 52

 printLongDoubleExpo$15:
	; Equal 18 capital integral4$0#
	cmp dword [rbp + 48], {operand2}
	je printLongDoubleExpo$18

 printLongDoubleExpo$16:
	; Assign £temporary1956 integral1$69#
	mov al, 69

 printLongDoubleExpo$17:
	; Jump 19
	jmp printLongDoubleExpo$19

 printLongDoubleExpo$18:
	; Assign £temporary1956 integral1$101#
	mov al, 101

 printLongDoubleExpo$19:
	; Parameter 76 signed char £temporary1956
	mov [rbp + 76], {operand2}

 printLongDoubleExpo$20:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$21
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$21:
	; PostCall 52

 printLongDoubleExpo$22:
	; PreCall 52

 printLongDoubleExpo$23:
	; Parameter 76 signed char integral1$48#
	mov byte [rbp + 76], {operand2}

 printLongDoubleExpo$24:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$25
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$25:
	; PostCall 52

 printLongDoubleExpo$26:
	; Jump 80
	jmp printLongDoubleExpo$80

 printLongDoubleExpo$27:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$28:
	; PushFloat floating8$0.0#
	fldz

 printLongDoubleExpo$29:
	; GreaterThanEqual 37 value floating8$0.0#
	fcompp
	fstsw ax
	sahf
	jbe printLongDoubleExpo$37

 printLongDoubleExpo$30:
	; PreCall 52

 printLongDoubleExpo$31:
	; Parameter 76 signed char integral1$45#
	mov byte [rbp + 76], {operand2}

 printLongDoubleExpo$32:
	; Call 52 printChar 0
	mov qword [rbp + 52], printLongDoubleExpo$33
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp printChar

 printLongDoubleExpo$33:
	; PostCall 52

 printLongDoubleExpo$34:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$35:
	; Minus £temporary1961 value
	fchs

 printLongDoubleExpo$36:
	; PopFloat value
	fstp qword [rbp + 24]

 printLongDoubleExpo$37:
	; PreCall 52

 printLongDoubleExpo$38:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$39:
	; Parameter 76 long double value
	fstp qword [rbp + 76]

 printLongDoubleExpo$40:
	; Call 52 log10 0
	mov qword [rbp + 52], printLongDoubleExpo$41
	mov [rbp + 60], {operand2}
	add rbp, 52
	jmp log10

 printLongDoubleExpo$41:
	; PostCall 52

 printLongDoubleExpo$42:
	; GetReturnValue £temporary1964

 printLongDoubleExpo$43:
	; FloatingToIntegral £temporary1965 £temporary1964
	fistp dword [container4bytes#]
	mov eax, [{operand1}{WithSign(operand2)}]

 printLongDoubleExpo$44:
	; Assign expo £temporary1965
	mov [rbp + 52], {operand2}

 printLongDoubleExpo$45:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$46:
	; PreCall 56
	fstp qword [rbp + 56]

 printLongDoubleExpo$47:
	; PushFloat floating8$10.0#
	fld qword [@4354floating8$10.0#]

 printLongDoubleExpo$48:
	; Parameter 80 double floating8$10.0#
	fstp qword [rbp + 88]

 printLongDoubleExpo$49:
	; IntegralToFloating £temporary1966 expo
	fild dword [rbp + 52]

 printLongDoubleExpo$50:
	; Parameter 88 double £temporary1966
	fstp qword [rbp + 96]

 printLongDoubleExpo$51:
	; Call 56 pow 0
	mov qword [rbp + 64], printLongDoubleExpo$52
	mov [rbp + 72], {operand2}
	add rbp, 64
	jmp pow

 printLongDoubleExpo$52:
	; PostCall 56
	fstp qword [rbp + 64]
	fld qword [rbp + 56]
	fld qword [rbp + 64]

 printLongDoubleExpo$53:
	; GetReturnValue £temporary1967

 printLongDoubleExpo$54:
	; Divide £temporary1968 value £temporary1967
	fdiv

 printLongDoubleExpo$55:
	; PopFloat value
	fstp qword [rbp + 24]

 printLongDoubleExpo$56:
	; PreCall 56

 printLongDoubleExpo$57:
	; PushFloat value
	fld qword [rbp + 24]

 printLongDoubleExpo$58:
	; Parameter 80 long double value
	fstp qword [rbp + 80]

 printLongDoubleExpo$59:
	; Parameter 88 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printLongDoubleExpo$60:
	; Parameter 92 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 92], {operand2}

 printLongDoubleExpo$61:
	; Parameter 96 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 96], {operand2}

 printLongDoubleExpo$62:
	; Parameter 100 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 100], {operand2}

 printLongDoubleExpo$63:
	; Call 56 printLongDoublePlain 0
	mov qword [rbp + 56], printLongDoubleExpo$64
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printLongDoublePlain

 printLongDoubleExpo$64:
	; PostCall 56

 printLongDoubleExpo$65:
	; PreCall 56

 printLongDoubleExpo$66:
	; Equal 69 capital integral4$0#
	cmp dword [rbp + 48], {operand2}
	je printLongDoubleExpo$69

 printLongDoubleExpo$67:
	; Assign £temporary1971 integral1$69#
	mov al, 69

 printLongDoubleExpo$68:
	; Jump 70
	jmp printLongDoubleExpo$70

 printLongDoubleExpo$69:
	; Assign £temporary1971 integral1$101#
	mov al, 101

 printLongDoubleExpo$70:
	; Parameter 80 signed char £temporary1971
	mov [rbp + 80], {operand2}

 printLongDoubleExpo$71:
	; Call 56 printChar 0
	mov qword [rbp + 56], printLongDoubleExpo$72
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printChar

 printLongDoubleExpo$72:
	; PostCall 56

 printLongDoubleExpo$73:
	; PreCall 56

 printLongDoubleExpo$74:
	; IntegralToIntegral £temporary1973 expo
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printLongDoubleExpo$75
	neg eax
	neg rax

 printLongDoubleExpo$75:
	; Parameter 80 signed long int £temporary1973
	mov [rbp + 80], {operand2}

 printLongDoubleExpo$76:
	; Parameter 88 signed int integral4$1#
	mov dword [rbp + 88], {operand2}

 printLongDoubleExpo$77:
	; Parameter 92 signed int integral4$0#
	mov dword [rbp + 92], {operand2}

 printLongDoubleExpo$78:
	; Call 56 printLongInt 0
	mov qword [rbp + 56], printLongDoubleExpo$79
	mov [rbp + 64], {operand2}
	add rbp, 56
	jmp printLongInt

 printLongDoubleExpo$79:
	; PostCall 56

 printLongDoubleExpo$80:
	; Return
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printLongDoubleExpo$81:
	; FunctionEnd printLongDoubleExpo

section .text

 checkWidthAndPrecision:
	; Equal 9 widthPtr integral8$0#
	cmp qword [rbp + 32], {operand2}
	je checkWidthAndPrecision$9

 checkWidthAndPrecision$1:
	; Dereference £temporary1983 widthPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 checkWidthAndPrecision$2:
	; NotEqual 9 £temporary1983 integral4$minus1#
	cmp dword [rsi], {operand2}
	jne checkWidthAndPrecision$9

 checkWidthAndPrecision$3:
	; Dereference £temporary1986 widthPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 checkWidthAndPrecision$4:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 24], {operand2}

 checkWidthAndPrecision$5:
	; Subtract £temporary1988 arg_list integral8$4#
	mov rdi, [{operand1}{WithSign(operand2)}]
	sub rdi, 4

 checkWidthAndPrecision$6:
	; IntegralToIntegral £temporary1989 £temporary1988

 checkWidthAndPrecision$7:
	; Dereference £temporary1990 £temporary1989 0

 checkWidthAndPrecision$8:
	; Assign £temporary1986 £temporary1990
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 checkWidthAndPrecision$9:
	; Equal 18 precisionPtr integral8$0#
	cmp qword [rbp + 40], {operand2}
	je checkWidthAndPrecision$18

 checkWidthAndPrecision$10:
	; Dereference £temporary1994 precisionPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 checkWidthAndPrecision$11:
	; NotEqual 18 £temporary1994 integral4$minus1#
	cmp dword [rsi], {operand2}
	jne checkWidthAndPrecision$18

 checkWidthAndPrecision$12:
	; Dereference £temporary1997 precisionPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 checkWidthAndPrecision$13:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 24], {operand2}

 checkWidthAndPrecision$14:
	; Subtract £temporary1999 arg_list integral8$4#
	mov rdi, [{operand1}{WithSign(operand2)}]
	sub rdi, 4

 checkWidthAndPrecision$15:
	; IntegralToIntegral £temporary2000 £temporary1999

 checkWidthAndPrecision$16:
	; Dereference £temporary2001 £temporary2000 0

 checkWidthAndPrecision$17:
	; Assign £temporary1997 £temporary2001
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 checkWidthAndPrecision$18:
	; Return arg_list
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 checkWidthAndPrecision$19:
	; FunctionEnd checkWidthAndPrecision

section .text

 printArgument:
	; Dereference £temporary2005 £temporary2004 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 printArgument$1:
	; Assign c £temporary2005
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 88], {operand2}

 printArgument$2:
	; Case 21 c integral1$100#
	mov al, [{operand1}{WithSign(operand2)}]
	cmp al, 100
	je printArgument$21

 printArgument$3:
	; Case 21 c integral1$105#
	cmp al, 105
	je printArgument$21

 printArgument$4:
	; Case 73 c integral1$99#
	cmp al, 99
	je printArgument$73

 printArgument$5:
	; Case 93 c integral1$115#
	cmp al, 115
	je printArgument$93

 printArgument$6:
	; Case 113 c integral1$88#
	cmp al, 88
	je printArgument$113

 printArgument$7:
	; Case 113 c integral1$120#
	cmp al, 120
	je printArgument$113

 printArgument$8:
	; Case 113 c integral1$98#
	cmp al, 98
	je printArgument$113

 printArgument$9:
	; Case 113 c integral1$111#
	cmp al, 111
	je printArgument$113

 printArgument$10:
	; Case 113 c integral1$117#
	cmp al, 117
	je printArgument$113

 printArgument$11:
	; Case 171 c integral1$71#
	cmp al, 71
	je printArgument$171

 printArgument$12:
	; Case 171 c integral1$103#
	cmp al, 103
	je printArgument$171

 printArgument$13:
	; Case 171 c integral1$69#
	cmp al, 69
	je printArgument$171

 printArgument$14:
	; Case 171 c integral1$101#
	cmp al, 101
	je printArgument$171

 printArgument$15:
	; Case 171 c integral1$102#
	cmp al, 102
	je printArgument$171

 printArgument$16:
	; Case 297 c integral1$112#
	cmp al, 112
	je printArgument$297

 printArgument$17:
	; Case 322 c integral1$110#
	cmp al, 110
	je printArgument$322

 printArgument$18:
	; Case 344 c integral1$37#
	cmp al, 37
	je printArgument$344

 printArgument$19:
	; CaseEnd c

 printArgument$20:
	; Jump 357
	jmp printArgument$357

 printArgument$21:
	; Equal 30 shortInt integral4$0#
	cmp dword [rbp + 64], {operand2}
	je printArgument$30

 printArgument$22:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], {operand2}

 printArgument$23:
	; Subtract £temporary2007 arg_list integral8$4#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 4

 printArgument$24:
	; IntegralToIntegral £temporary2008 £temporary2007

 printArgument$25:
	; Dereference £temporary2009 £temporary2008 0

 printArgument$26:
	; IntegralToIntegral £temporary2010 £temporary2009
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp eax, 0
	jge printArgument$27
	neg eax
	neg ax

 printArgument$27:
	; IntegralToIntegral £temporary2011 £temporary2010
	mov rbx, 65535
	and rax, rbx
	cmp ax, 0
	jge printArgument$28
	neg ax
	neg rax

 printArgument$28:
	; Assign longValue £temporary2011
	mov [rbp + 114], {operand2}

 printArgument$29:
	; Jump 43
	jmp printArgument$43

 printArgument$30:
	; Equal 37 longInt integral4$0#
	cmp dword [rbp + 68], {operand2}
	je printArgument$37

 printArgument$31:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$32:
	; Subtract £temporary2013 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$33:
	; IntegralToIntegral £temporary2014 £temporary2013

 printArgument$34:
	; Dereference £temporary2015 £temporary2014 0

 printArgument$35:
	; Assign longValue £temporary2015
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 114], {operand2}

 printArgument$36:
	; Jump 43
	jmp printArgument$43

 printArgument$37:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], {operand2}

 printArgument$38:
	; Subtract £temporary2017 arg_list integral8$4#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 4

 printArgument$39:
	; IntegralToIntegral £temporary2018 £temporary2017

 printArgument$40:
	; Dereference £temporary2019 £temporary2018 0

 printArgument$41:
	; IntegralToIntegral £temporary2020 £temporary2019
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx
	cmp eax, 0
	jge printArgument$42
	neg eax
	neg rax

 printArgument$42:
	; Assign longValue £temporary2020
	mov [rbp + 114], {operand2}

 printArgument$43:
	; Equal 50 negativePtr integral8$0#
	cmp qword [rbp + 80], {operand2}
	je printArgument$50

 printArgument$44:
	; Dereference £temporary2028 negativePtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 printArgument$45:
	; GreaterThanEqual 48 longValue integral8$0#
	cmp qword [rbp + 114], {operand2}
	jge printArgument$48

 printArgument$46:
	; Assign £temporary2030 integral4$1#
	mov eax, 1

 printArgument$47:
	; Jump 49
	jmp printArgument$49

 printArgument$48:
	; Assign £temporary2030 integral4$0#
	mov eax, 0

 printArgument$49:
	; Assign £temporary2028 £temporary2030
	mov [rsi], {operand2}

 printArgument$50:
	; NotEqual 57 sign integral4$0#
	cmp dword [rbp + 76], {operand2}
	jne printArgument$57

 printArgument$51:
	; PreCall 122

 printArgument$52:
	; Parameter 146 signed long int longValue
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$53:
	; Call 122 labs 0
	mov qword [rbp + 122], printArgument$54
	mov [rbp + 130], {operand2}
	add rbp, 122
	jmp labs

 printArgument$54:
	; PostCall 122

 printArgument$55:
	; GetReturnValue £temporary2035

 printArgument$56:
	; Assign longValue £temporary2035
	mov [rbp + 114], {operand2}

 printArgument$57:
	; PreCall 122

 printArgument$58:
	; Parameter 146 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$59:
	; Parameter 154 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$60:
	; Address £temporary2038 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$61:
	; Parameter 162 pointer £temporary2038
	mov [rbp + 162], {operand2}

 printArgument$62:
	; Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$63
	mov [rbp + 130], {operand2}
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$63:
	; PostCall 122

 printArgument$64:
	; GetReturnValue £temporary2039

 printArgument$65:
	; Assign arg_list £temporary2039
	mov [rbp + 32], {operand2}

 printArgument$66:
	; PreCall 122

 printArgument$67:
	; Parameter 146 signed long int longValue
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$68:
	; Parameter 154 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$69:
	; Parameter 158 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 158], {operand2}

 printArgument$70:
	; Call 122 printLongInt 0
	mov qword [rbp + 122], printArgument$71
	mov [rbp + 130], {operand2}
	add rbp, 122
	jmp printLongInt

 printArgument$71:
	; PostCall 122

 printArgument$72:
	; Jump 357
	jmp printArgument$357

 printArgument$73:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], {operand2}

 printArgument$74:
	; Subtract £temporary2042 arg_list integral8$4#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 4

 printArgument$75:
	; IntegralToIntegral £temporary2043 £temporary2042

 printArgument$76:
	; Dereference £temporary2044 £temporary2043 0

 printArgument$77:
	; IntegralToIntegral £temporary2045 £temporary2044
	mov eax, [{operand1}{WithSign(operand2)}]
	cmp eax, 0
	jge printArgument$78
	neg eax
	neg al

 printArgument$78:
	; Assign charValue £temporary2045
	mov [rbp + 89], {operand2}

 printArgument$79:
	; PreCall 114

 printArgument$80:
	; Parameter 138 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 138], {operand2}

 printArgument$81:
	; Parameter 146 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$82:
	; Address £temporary2046 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$83:
	; Parameter 154 pointer £temporary2046
	mov [rbp + 154], {operand2}

 printArgument$84:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$85
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$85:
	; PostCall 114

 printArgument$86:
	; GetReturnValue £temporary2047

 printArgument$87:
	; Assign arg_list £temporary2047
	mov [rbp + 32], {operand2}

 printArgument$88:
	; PreCall 114

 printArgument$89:
	; Parameter 138 signed char charValue
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 138], {operand2}

 printArgument$90:
	; Call 114 printChar 0
	mov qword [rbp + 114], printArgument$91
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp printChar

 printArgument$91:
	; PostCall 114

 printArgument$92:
	; Jump 357
	jmp printArgument$357

 printArgument$93:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$94:
	; Subtract £temporary2050 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$95:
	; IntegralToIntegral £temporary2051 £temporary2050

 printArgument$96:
	; Dereference £temporary2052 £temporary2051 0

 printArgument$97:
	; Assign stringValue £temporary2052
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 114], {operand2}

 printArgument$98:
	; PreCall 122

 printArgument$99:
	; Parameter 146 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$100:
	; Parameter 154 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$101:
	; Address £temporary2053 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$102:
	; Parameter 162 pointer £temporary2053
	mov [rbp + 162], {operand2}

 printArgument$103:
	; Call 122 checkWidthAndPrecision 0
	mov qword [rbp + 122], printArgument$104
	mov [rbp + 130], {operand2}
	add rbp, 122
	jmp checkWidthAndPrecision

 printArgument$104:
	; PostCall 122

 printArgument$105:
	; GetReturnValue £temporary2054

 printArgument$106:
	; Assign arg_list £temporary2054
	mov [rbp + 32], {operand2}

 printArgument$107:
	; PreCall 122

 printArgument$108:
	; Parameter 146 pointer stringValue
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$109:
	; Parameter 154 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$110:
	; Call 122 printString 0
	mov qword [rbp + 122], printArgument$111
	mov [rbp + 130], {operand2}
	add rbp, 122
	jmp printString

 printArgument$111:
	; PostCall 122

 printArgument$112:
	; Jump 357
	jmp printArgument$357

 printArgument$113:
	; NotEqual 116 c integral1$117#
	cmp byte [rbp + 88], {operand2}
	jne printArgument$116

 printArgument$114:
	; Assign £temporary2061 integral8$10#
	mov rax, 10

 printArgument$115:
	; Jump 123
	jmp printArgument$123

 printArgument$116:
	; NotEqual 119 c integral1$111#
	cmp byte [rbp + 88], {operand2}
	jne printArgument$119

 printArgument$117:
	; Assign £temporary2061 integral8$8#
	mov rax, 8

 printArgument$118:
	; Jump 123
	jmp printArgument$123

 printArgument$119:
	; NotEqual 122 c integral1$98#
	cmp byte [rbp + 88], {operand2}
	jne printArgument$122

 printArgument$120:
	; Assign £temporary2061 integral8$2#
	mov rax, 2

 printArgument$121:
	; Jump 123
	jmp printArgument$123

 printArgument$122:
	; Assign £temporary2061 integral8$16#
	mov rax, 16

 printArgument$123:
	; Assign base £temporary2061
	mov [rbp + 114], {operand2}

 printArgument$124:
	; Equal 133 shortInt integral4$0#
	cmp dword [rbp + 64], {operand2}
	je printArgument$133

 printArgument$125:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], {operand2}

 printArgument$126:
	; Subtract £temporary2063 arg_list integral8$4#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 4

 printArgument$127:
	; IntegralToIntegral £temporary2064 £temporary2063

 printArgument$128:
	; Dereference £temporary2065 £temporary2064 0

 printArgument$129:
	; IntegralToIntegral £temporary2066 £temporary2065
	mov eax, [{operand1}{WithSign(operand2)}]

 printArgument$130:
	; IntegralToIntegral £temporary2067 £temporary2066
	mov rbx, 65535
	and rax, rbx

 printArgument$131:
	; Assign value £temporary2067
	mov [rbp + 122], {operand2}

 printArgument$132:
	; Jump 146
	jmp printArgument$146

 printArgument$133:
	; Equal 140 longInt integral4$0#
	cmp dword [rbp + 68], {operand2}
	je printArgument$140

 printArgument$134:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$135:
	; Subtract £temporary2069 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$136:
	; IntegralToIntegral £temporary2070 £temporary2069

 printArgument$137:
	; Dereference £temporary2071 £temporary2070 0

 printArgument$138:
	; Assign value £temporary2071
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 122], {operand2}

 printArgument$139:
	; Jump 146
	jmp printArgument$146

 printArgument$140:
	; Add arg_list arg_list integral8$4#
	add qword [rbp + 32], {operand2}

 printArgument$141:
	; Subtract £temporary2073 arg_list integral8$4#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 4

 printArgument$142:
	; IntegralToIntegral £temporary2074 £temporary2073

 printArgument$143:
	; Dereference £temporary2075 £temporary2074 0

 printArgument$144:
	; IntegralToIntegral £temporary2076 £temporary2075
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printArgument$145:
	; Assign value £temporary2076
	mov [rbp + 122], {operand2}

 printArgument$146:
	; PreCall 130

 printArgument$147:
	; Parameter 154 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$148:
	; Parameter 162 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 162], {operand2}

 printArgument$149:
	; Address £temporary2083 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$150:
	; Parameter 170 pointer £temporary2083
	mov [rbp + 170], {operand2}

 printArgument$151:
	; Call 130 checkWidthAndPrecision 0
	mov qword [rbp + 130], printArgument$152
	mov [rbp + 138], {operand2}
	add rbp, 130
	jmp checkWidthAndPrecision

 printArgument$152:
	; PostCall 130

 printArgument$153:
	; GetReturnValue £temporary2084

 printArgument$154:
	; Assign arg_list £temporary2084
	mov [rbp + 32], {operand2}

 printArgument$155:
	; PreCall 130

 printArgument$156:
	; Parameter 154 unsigned long int value
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$157:
	; Parameter 162 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 162], {operand2}

 printArgument$158:
	; Parameter 166 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 166], {operand2}

 printArgument$159:
	; Parameter 170 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 170], {operand2}

 printArgument$160:
	; Parameter 174 unsigned long int base
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 174], {operand2}

 printArgument$161:
	; PreCall 130

 printArgument$162:
	; IntegralToIntegral £temporary2085 c
	mov al, [{operand1}{WithSign(operand2)}]
	and eax, 255
	cmp al, 0
	jge printArgument$163
	neg al
	neg eax

 printArgument$163:
	; Parameter 206 signed int £temporary2085
	mov [rbp + 206], {operand2}

 printArgument$164:
	; Call 182 isupper 0
	mov qword [rbp + 182], printArgument$165
	mov [rbp + 190], {operand2}
	add rbp, 182
	jmp isupper

 printArgument$165:
	; PostCall 182

 printArgument$166:
	; GetReturnValue £temporary2086

 printArgument$167:
	; Parameter 182 signed int £temporary2086
	mov [rbp + 182], {operand2}

 printArgument$168:
	; Call 130 printUnsignedLong 0
	mov qword [rbp + 130], printArgument$169
	mov [rbp + 138], {operand2}
	add rbp, 130
	jmp printUnsignedLong

 printArgument$169:
	; PostCall 130

 printArgument$170:
	; Jump 357
	jmp printArgument$357

 printArgument$171:
	; Equal 188 longDouble integral4$0#
	cmp dword [rbp + 72], {operand2}
	je printArgument$188

 printArgument$172:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$173:
	; Subtract £temporary2089 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$174:
	; IntegralToIntegral £temporary2090 £temporary2089

 printArgument$175:
	; Dereference £temporary2091 £temporary2090 0

 printArgument$176:
	; PushFloat £temporary2091
	fld qword [rsi]

 printArgument$177:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$178:
	; PreCall 114

 printArgument$179:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$180:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$181:
	; Parameter 146 signed int integral4$0#
	mov dword [rbp + 146], {operand2}

 printArgument$182:
	; Parameter 150 signed int integral4$0#
	mov dword [rbp + 150], {operand2}

 printArgument$183:
	; Parameter 154 signed int integral4$0#
	mov dword [rbp + 154], {operand2}

 printArgument$184:
	; Parameter 158 signed int integral4$3#
	mov dword [rbp + 158], {operand2}

 printArgument$185:
	; Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$186
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$186:
	; PostCall 114

 printArgument$187:
	; Jump 194
	jmp printArgument$194

 printArgument$188:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$189:
	; Subtract £temporary2094 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$190:
	; IntegralToIntegral £temporary2095 £temporary2094

 printArgument$191:
	; Dereference £temporary2096 £temporary2095 0

 printArgument$192:
	; PushFloat £temporary2096
	fld qword [rsi]

 printArgument$193:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$194:
	; Equal 203 negativePtr integral8$0#
	cmp qword [rbp + 80], {operand2}
	je printArgument$203

 printArgument$195:
	; Dereference £temporary2102 negativePtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 printArgument$196:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$197:
	; PushFloat floating8$0#
	fldz

 printArgument$198:
	; GreaterThanEqual 201 longDoubleValue floating8$0#
	fcompp
	fstsw ax
	sahf
	jbe printArgument$201

 printArgument$199:
	; Assign £temporary2104 integral4$1#
	mov eax, 1

 printArgument$200:
	; Jump 202
	jmp printArgument$202

 printArgument$201:
	; Assign £temporary2104 integral4$0#
	mov eax, 0

 printArgument$202:
	; Assign £temporary2102 £temporary2104
	mov [rsi], {operand2}

 printArgument$203:
	; NotEqual 211 sign integral4$0#
	cmp dword [rbp + 76], {operand2}
	jne printArgument$211

 printArgument$204:
	; PreCall 114

 printArgument$205:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$206:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$207:
	; Call 114 fabs 0
	mov qword [rbp + 114], printArgument$208
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp fabs

 printArgument$208:
	; PostCall 114

 printArgument$209:
	; GetReturnValue £temporary2109

 printArgument$210:
	; PopFloat longDoubleValue
	fstp qword [rbp + 98]

 printArgument$211:
	; PreCall 114

 printArgument$212:
	; Parameter 138 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 138], {operand2}

 printArgument$213:
	; Parameter 146 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$214:
	; Address £temporary2112 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$215:
	; Parameter 154 pointer £temporary2112
	mov [rbp + 154], {operand2}

 printArgument$216:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$217
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$217:
	; PostCall 114

 printArgument$218:
	; GetReturnValue £temporary2113

 printArgument$219:
	; Assign arg_list £temporary2113
	mov [rbp + 32], {operand2}

 printArgument$220:
	; NotEqual 231 c integral1$102#
	cmp byte [rbp + 88], {operand2}
	jne printArgument$231

 printArgument$221:
	; PreCall 114

 printArgument$222:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$223:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$224:
	; Parameter 146 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$225:
	; Parameter 150 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 150], {operand2}

 printArgument$226:
	; Parameter 154 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$227:
	; Parameter 158 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 158], {operand2}

 printArgument$228:
	; Call 114 printLongDoublePlain 0
	mov qword [rbp + 114], printArgument$229
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp printLongDoublePlain

 printArgument$229:
	; PostCall 114

 printArgument$230:
	; Jump 357
	jmp printArgument$357

 printArgument$231:
	; PreCall 114

 printArgument$232:
	; IntegralToIntegral £temporary2116 c
	mov al, [{operand1}{WithSign(operand2)}]
	and eax, 255
	cmp al, 0
	jge printArgument$233
	neg al
	neg eax

 printArgument$233:
	; Parameter 138 signed int £temporary2116
	mov [rbp + 138], {operand2}

 printArgument$234:
	; Call 114 tolower 0
	mov qword [rbp + 114], printArgument$235
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp tolower

 printArgument$235:
	; PostCall 114

 printArgument$236:
	; GetReturnValue £temporary2117

 printArgument$237:
	; NotEqual 255 £temporary2117 integral4$101#
	cmp ebx, 101
	jne printArgument$255

 printArgument$238:
	; PreCall 114

 printArgument$239:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$240:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$241:
	; Parameter 146 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$242:
	; Parameter 150 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 150], {operand2}

 printArgument$243:
	; Parameter 154 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$244:
	; Parameter 158 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 158], {operand2}

 printArgument$245:
	; PreCall 114

 printArgument$246:
	; IntegralToIntegral £temporary2119 c
	mov al, [{operand1}{WithSign(operand2)}]
	and eax, 255
	cmp al, 0
	jge printArgument$247
	neg al
	neg eax

 printArgument$247:
	; Parameter 186 signed int £temporary2119
	mov [rbp + 186], {operand2}

 printArgument$248:
	; Call 162 isupper 0
	mov qword [rbp + 162], printArgument$249
	mov [rbp + 170], {operand2}
	add rbp, 162
	jmp isupper

 printArgument$249:
	; PostCall 162

 printArgument$250:
	; GetReturnValue £temporary2120

 printArgument$251:
	; Parameter 162 signed int £temporary2120
	mov [rbp + 162], {operand2}

 printArgument$252:
	; Call 114 printLongDoubleExpo 0
	mov qword [rbp + 114], printArgument$253
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp printLongDoubleExpo

 printArgument$253:
	; PostCall 114

 printArgument$254:
	; Jump 357
	jmp printArgument$357

 printArgument$255:
	; PreCall 114

 printArgument$256:
	; PreCall 114

 printArgument$257:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$258:
	; Parameter 138 long double longDoubleValue
	fstp qword [rbp + 138]

 printArgument$259:
	; Call 114 fabs 0
	mov qword [rbp + 114], printArgument$260
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp fabs

 printArgument$260:
	; PostCall 114

 printArgument$261:
	; GetReturnValue £temporary2122

 printArgument$262:
	; Parameter 138 double £temporary2122
	fstp qword [rbp + 138]

 printArgument$263:
	; Call 114 log10 0
	mov qword [rbp + 114], printArgument$264
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp log10

 printArgument$264:
	; PostCall 114

 printArgument$265:
	; GetReturnValue £temporary2123

 printArgument$266:
	; FloatingToIntegral £temporary2124 £temporary2123
	fistp dword [container4bytes#]
	mov eax, [{operand1}{WithSign(operand2)}]

 printArgument$267:
	; Assign expo £temporary2124
	mov [rbp + 114], {operand2}

 printArgument$268:
	; LessThan 280 expo integral4$minus3#
	cmp dword [rbp + 114], {operand2}
	jl printArgument$280

 printArgument$269:
	; GreaterThan 280 expo integral4$2#
	cmp dword [rbp + 114], {operand2}
	jg printArgument$280

 printArgument$270:
	; PreCall 118

 printArgument$271:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$272:
	; Parameter 142 long double longDoubleValue
	fstp qword [rbp + 142]

 printArgument$273:
	; Parameter 150 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 150], {operand2}

 printArgument$274:
	; Parameter 154 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$275:
	; Parameter 158 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 158], {operand2}

 printArgument$276:
	; Parameter 162 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 162], {operand2}

 printArgument$277:
	; Call 118 printLongDoublePlain 0
	mov qword [rbp + 118], printArgument$278
	mov [rbp + 126], {operand2}
	add rbp, 118
	jmp printLongDoublePlain

 printArgument$278:
	; PostCall 118

 printArgument$279:
	; Jump 357
	jmp printArgument$357

 printArgument$280:
	; PreCall 118

 printArgument$281:
	; PushFloat longDoubleValue
	fld qword [rbp + 98]

 printArgument$282:
	; Parameter 142 long double longDoubleValue
	fstp qword [rbp + 142]

 printArgument$283:
	; Parameter 150 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 150], {operand2}

 printArgument$284:
	; Parameter 154 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 154], {operand2}

 printArgument$285:
	; Parameter 158 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 158], {operand2}

 printArgument$286:
	; Parameter 162 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 162], {operand2}

 printArgument$287:
	; PreCall 118

 printArgument$288:
	; IntegralToIntegral £temporary2129 c
	mov al, [{operand1}{WithSign(operand2)}]
	and eax, 255
	cmp al, 0
	jge printArgument$289
	neg al
	neg eax

 printArgument$289:
	; Parameter 190 signed int £temporary2129
	mov [rbp + 190], {operand2}

 printArgument$290:
	; Call 166 isupper 0
	mov qword [rbp + 166], printArgument$291
	mov [rbp + 174], {operand2}
	add rbp, 166
	jmp isupper

 printArgument$291:
	; PostCall 166

 printArgument$292:
	; GetReturnValue £temporary2130

 printArgument$293:
	; Parameter 166 signed int £temporary2130
	mov [rbp + 166], {operand2}

 printArgument$294:
	; Call 118 printLongDoubleExpo 0
	mov qword [rbp + 118], printArgument$295
	mov [rbp + 126], {operand2}
	add rbp, 118
	jmp printLongDoubleExpo

 printArgument$295:
	; PostCall 118

 printArgument$296:
	; Jump 357
	jmp printArgument$357

 printArgument$297:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$298:
	; Subtract £temporary2139 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$299:
	; IntegralToIntegral £temporary2140 £temporary2139

 printArgument$300:
	; Dereference £temporary2141 £temporary2140 0

 printArgument$301:
	; Assign ptrValue £temporary2141
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 106], {operand2}

 printArgument$302:
	; PreCall 114

 printArgument$303:
	; Parameter 138 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 138], {operand2}

 printArgument$304:
	; Parameter 146 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$305:
	; Address £temporary2142 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$306:
	; Parameter 154 pointer £temporary2142
	mov [rbp + 154], {operand2}

 printArgument$307:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$308
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$308:
	; PostCall 114

 printArgument$309:
	; GetReturnValue £temporary2143

 printArgument$310:
	; Assign arg_list £temporary2143
	mov [rbp + 32], {operand2}

 printArgument$311:
	; PreCall 114

 printArgument$312:
	; IntegralToIntegral £temporary2144 ptrValue
	mov rax, [{operand1}{WithSign(operand2)}]

 printArgument$313:
	; Parameter 138 pointer £temporary2144
	mov [rbp + 138], {operand2}

 printArgument$314:
	; Parameter 146 signed int integral4$0#
	mov dword [rbp + 146], {operand2}

 printArgument$315:
	; Parameter 150 signed int integral4$0#
	mov dword [rbp + 150], {operand2}

 printArgument$316:
	; Parameter 154 signed int integral4$0#
	mov dword [rbp + 154], {operand2}

 printArgument$317:
	; Parameter 158 unsigned long int integral8$10#
	mov qword [rbp + 158], {operand2}

 printArgument$318:
	; Parameter 166 signed int integral4$0#
	mov dword [rbp + 166], {operand2}

 printArgument$319:
	; Call 114 printUnsignedLong 0
	mov qword [rbp + 114], printArgument$320
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp printUnsignedLong

 printArgument$320:
	; PostCall 114

 printArgument$321:
	; Jump 357
	jmp printArgument$357

 printArgument$322:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$323:
	; Subtract £temporary2147 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$324:
	; IntegralToIntegral £temporary2148 £temporary2147

 printArgument$325:
	; Dereference £temporary2149 £temporary2148 0

 printArgument$326:
	; Assign ptrValue £temporary2149
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 106], {operand2}

 printArgument$327:
	; Add arg_list arg_list integral8$8#
	add qword [rbp + 32], {operand2}

 printArgument$328:
	; Subtract £temporary2151 arg_list integral8$8#
	mov rsi, [{operand1}{WithSign(operand2)}]
	sub rsi, 8

 printArgument$329:
	; IntegralToIntegral £temporary2152 £temporary2151

 printArgument$330:
	; Dereference £temporary2153 £temporary2152 0

 printArgument$331:
	; Assign intPtr £temporary2153
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 90], {operand2}

 printArgument$332:
	; PreCall 114

 printArgument$333:
	; Parameter 138 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 138], {operand2}

 printArgument$334:
	; Parameter 146 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$335:
	; Address £temporary2154 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$336:
	; Parameter 154 pointer £temporary2154
	mov [rbp + 154], {operand2}

 printArgument$337:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$338
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$338:
	; PostCall 114

 printArgument$339:
	; GetReturnValue £temporary2155

 printArgument$340:
	; Assign arg_list £temporary2155
	mov [rbp + 32], {operand2}

 printArgument$341:
	; Dereference £temporary2156 intPtr 0
	mov rsi, [{operand1}{WithSign(operand2)}]

 printArgument$342:
	; Assign £temporary2156 g_outChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rsi], {operand2}

 printArgument$343:
	; Jump 357
	jmp printArgument$357

 printArgument$344:
	; PreCall 114

 printArgument$345:
	; Parameter 138 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 138], {operand2}

 printArgument$346:
	; Parameter 146 pointer widthPtr
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 146], {operand2}

 printArgument$347:
	; Address £temporary2157 precision
	mov rsi, rbp
	add rsi, 60

 printArgument$348:
	; Parameter 154 pointer £temporary2157
	mov [rbp + 154], {operand2}

 printArgument$349:
	; Call 114 checkWidthAndPrecision 0
	mov qword [rbp + 114], printArgument$350
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp checkWidthAndPrecision

 printArgument$350:
	; PostCall 114

 printArgument$351:
	; GetReturnValue £temporary2158

 printArgument$352:
	; Assign arg_list £temporary2158
	mov [rbp + 32], {operand2}

 printArgument$353:
	; PreCall 114

 printArgument$354:
	; Parameter 138 signed char integral1$37#
	mov byte [rbp + 138], {operand2}

 printArgument$355:
	; Call 114 printChar 0
	mov qword [rbp + 114], printArgument$356
	mov [rbp + 122], {operand2}
	add rbp, 114
	jmp printChar

 printArgument$356:
	; PostCall 114

 printArgument$357:
	; Return arg_list
	mov rbx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printArgument$358:
	; FunctionEnd printArgument

section .data

@4854integral4$10#:
	; Initializer SignedInt 10
	dd 10

section .text

 printFormat:
	; Assign width integral4$0#
	mov dword [rbp + 44], {operand2}

 printFormat$1:
	; Assign precision integral4$0#
	mov dword [rbp + 48], {operand2}

 printFormat$2:
	; Assign percent integral4$0#
	mov dword [rbp + 52], {operand2}

 printFormat$3:
	; Assign plus integral4$0#
	mov dword [rbp + 56], {operand2}

 printFormat$4:
	; Assign minus integral4$0#
	mov dword [rbp + 60], {operand2}

 printFormat$5:
	; Assign space integral4$0#
	mov dword [rbp + 64], {operand2}

 printFormat$6:
	; Assign zero integral4$0#
	mov dword [rbp + 68], {operand2}

 printFormat$7:
	; Assign grid integral4$0#
	mov dword [rbp + 72], {operand2}

 printFormat$8:
	; Assign widthStar integral4$0#
	mov dword [rbp + 76], {operand2}

 printFormat$9:
	; Assign period integral4$0#
	mov dword [rbp + 80], {operand2}

 printFormat$10:
	; Assign precisionStar integral4$0#
	mov dword [rbp + 84], {operand2}

 printFormat$11:
	; Assign shortInt integral4$0#
	mov dword [rbp + 88], {operand2}

 printFormat$12:
	; Assign longInt integral4$0#
	mov dword [rbp + 92], {operand2}

 printFormat$13:
	; Assign longDouble integral4$0#
	mov dword [rbp + 96], {operand2}

 printFormat$14:
	; Assign g_outChars integral4$0#
	mov dword [g_outChars], {operand2}

 printFormat$15:
	; Assign index integral4$0#
	mov dword [rbp + 40], {operand2}

 printFormat$16:
	; IntegralToIntegral £temporary2177 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$17:
	; Add £temporary2178 format £temporary2177
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$18:
	; Dereference £temporary2179 £temporary2178 0

 printFormat$19:
	; Equal 292 £temporary2179 integral1$0#
	cmp byte [rsi], {operand2}
	je printFormat$292

 printFormat$20:
	; IntegralToIntegral £temporary2183 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$21:
	; Add £temporary2184 format £temporary2183
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$22:
	; Dereference £temporary2185 £temporary2184 0

 printFormat$23:
	; Assign c £temporary2185
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 100], {operand2}

 printFormat$24:
	; Equal 270 percent integral4$0#
	cmp dword [rbp + 52], {operand2}
	je printFormat$270

 printFormat$25:
	; Case 54 c integral1$43#
	mov al, [{operand1}{WithSign(operand2)}]
	cmp al, 43
	je printFormat$54

 printFormat$26:
	; Case 56 c integral1$45#
	cmp al, 45
	je printFormat$56

 printFormat$27:
	; Case 58 c integral1$32#
	cmp al, 32
	je printFormat$58

 printFormat$28:
	; Case 60 c integral1$48#
	cmp al, 48
	je printFormat$60

 printFormat$29:
	; Case 62 c integral1$35#
	cmp al, 35
	je printFormat$62

 printFormat$30:
	; Case 64 c integral1$46#
	cmp al, 46
	je printFormat$64

 printFormat$31:
	; Case 66 c integral1$42#
	cmp al, 42
	je printFormat$66

 printFormat$32:
	; Case 71 c integral1$104#
	cmp al, 104
	je printFormat$71

 printFormat$33:
	; Case 73 c integral1$108#
	cmp al, 108
	je printFormat$73

 printFormat$34:
	; Case 75 c integral1$76#
	cmp al, 76
	je printFormat$75

 printFormat$35:
	; Case 77 c integral1$37#
	cmp al, 37
	je printFormat$77

 printFormat$36:
	; Case 77 c integral1$110#
	cmp al, 110
	je printFormat$77

 printFormat$37:
	; Case 77 c integral1$112#
	cmp al, 112
	je printFormat$77

 printFormat$38:
	; Case 77 c integral1$71#
	cmp al, 71
	je printFormat$77

 printFormat$39:
	; Case 77 c integral1$103#
	cmp al, 103
	je printFormat$77

 printFormat$40:
	; Case 77 c integral1$69#
	cmp al, 69
	je printFormat$77

 printFormat$41:
	; Case 77 c integral1$101#
	cmp al, 101
	je printFormat$77

 printFormat$42:
	; Case 77 c integral1$102#
	cmp al, 102
	je printFormat$77

 printFormat$43:
	; Case 77 c integral1$115#
	cmp al, 115
	je printFormat$77

 printFormat$44:
	; Case 77 c integral1$99#
	cmp al, 99
	je printFormat$77

 printFormat$45:
	; Case 77 c integral1$88#
	cmp al, 88
	je printFormat$77

 printFormat$46:
	; Case 77 c integral1$120#
	cmp al, 120
	je printFormat$77

 printFormat$47:
	; Case 77 c integral1$111#
	cmp al, 111
	je printFormat$77

 printFormat$48:
	; Case 77 c integral1$98#
	cmp al, 98
	je printFormat$77

 printFormat$49:
	; Case 77 c integral1$117#
	cmp al, 117
	je printFormat$77

 printFormat$50:
	; Case 77 c integral1$100#
	cmp al, 100
	je printFormat$77

 printFormat$51:
	; Case 77 c integral1$105#
	cmp al, 105
	je printFormat$77

 printFormat$52:
	; CaseEnd c

 printFormat$53:
	; Jump 246
	jmp printFormat$246

 printFormat$54:
	; Assign plus integral4$1#
	mov dword [rbp + 56], {operand2}

 printFormat$55:
	; Jump 290
	jmp printFormat$290

 printFormat$56:
	; Assign minus integral4$1#
	mov dword [rbp + 60], {operand2}

 printFormat$57:
	; Jump 290
	jmp printFormat$290

 printFormat$58:
	; Assign space integral4$1#
	mov dword [rbp + 64], {operand2}

 printFormat$59:
	; Jump 290
	jmp printFormat$290

 printFormat$60:
	; Assign zero integral4$1#
	mov dword [rbp + 68], {operand2}

 printFormat$61:
	; Jump 290
	jmp printFormat$290

 printFormat$62:
	; Assign grid integral4$1#
	mov dword [rbp + 72], {operand2}

 printFormat$63:
	; Jump 290
	jmp printFormat$290

 printFormat$64:
	; Assign period integral4$1#
	mov dword [rbp + 80], {operand2}

 printFormat$65:
	; Jump 290
	jmp printFormat$290

 printFormat$66:
	; NotEqual 69 period integral4$0#
	cmp dword [rbp + 80], {operand2}
	jne printFormat$69

 printFormat$67:
	; Assign width integral4$minus1#
	mov dword [rbp + 44], {operand2}

 printFormat$68:
	; Jump 290
	jmp printFormat$290

 printFormat$69:
	; Assign precision integral4$minus1#
	mov dword [rbp + 48], {operand2}

 printFormat$70:
	; Jump 290
	jmp printFormat$290

 printFormat$71:
	; Assign shortInt integral4$1#
	mov dword [rbp + 88], {operand2}

 printFormat$72:
	; Jump 290
	jmp printFormat$290

 printFormat$73:
	; Assign longInt integral4$1#
	mov dword [rbp + 92], {operand2}

 printFormat$74:
	; Jump 290
	jmp printFormat$290

 printFormat$75:
	; Assign longDouble integral4$1#
	mov dword [rbp + 96], {operand2}

 printFormat$76:
	; Jump 290
	jmp printFormat$290

 printFormat$77:
	; Equal 110 minus integral4$0#
	cmp dword [rbp + 60], {operand2}
	je printFormat$110

 printFormat$78:
	; Assign startChars g_outChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 101], {operand2}

 printFormat$79:
	; PreCall 105

 printFormat$80:
	; IntegralToIntegral £temporary2191 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$81:
	; Add £temporary2192 format £temporary2191
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$82:
	; Dereference £temporary2193 £temporary2192 0

 printFormat$83:
	; Address £temporary2194 £temporary2193

 printFormat$84:
	; Parameter 129 pointer £temporary2194
	mov [rbp + 129], {operand2}

 printFormat$85:
	; Parameter 137 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 137], {operand2}

 printFormat$86:
	; Parameter 145 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 145], {operand2}

 printFormat$87:
	; Parameter 149 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 149], {operand2}

 printFormat$88:
	; Parameter 153 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 153], {operand2}

 printFormat$89:
	; Address £temporary2195 width
	mov rsi, rbp
	add rsi, 44

 printFormat$90:
	; Parameter 157 pointer £temporary2195
	mov [rbp + 157], {operand2}

 printFormat$91:
	; Parameter 165 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 165], {operand2}

 printFormat$92:
	; Parameter 169 signed int shortInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 169], {operand2}

 printFormat$93:
	; Parameter 173 signed int longInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 173], {operand2}

 printFormat$94:
	; Parameter 177 signed int longDouble
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 177], {operand2}

 printFormat$95:
	; Parameter 181 signed int integral4$1#
	mov dword [rbp + 181], {operand2}

 printFormat$96:
	; Parameter 185 pointer integral8$0#
	mov qword [rbp + 185], {operand2}

 printFormat$97:
	; Call 105 printArgument 0
	mov qword [rbp + 105], printFormat$98
	mov [rbp + 113], {operand2}
	add rbp, 105
	jmp printArgument

 printFormat$98:
	; PostCall 105

 printFormat$99:
	; GetReturnValue £temporary2196

 printFormat$100:
	; Assign arg_list £temporary2196
	mov [rbp + 32], {operand2}

 printFormat$101:
	; Subtract field g_outChars startChars
	mov eax, [{operand1}{WithSign(operand2)}]
	sub eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 105], {operand2}

 printFormat$102:
	; Assign £temporary2198 field
	mov eax, [{operand1}{WithSign(operand2)}]

 printFormat$103:
	; Add field field integral4$1#
	inc dword [rbp + 105]

 printFormat$104:
	; GreaterThanEqual 244 £temporary2198 width
	cmp eax, [{operand1}{WithSign(operand2)}]
	jge printFormat$244

 printFormat$105:
	; PreCall 109

 printFormat$106:
	; Parameter 133 signed char integral1$32#
	mov byte [rbp + 133], {operand2}

 printFormat$107:
	; Call 109 printChar 0
	mov qword [rbp + 109], printFormat$108
	mov [rbp + 117], {operand2}
	add rbp, 109
	jmp printChar

 printFormat$108:
	; PostCall 109

 printFormat$109:
	; Jump 102
	jmp printFormat$102

 printFormat$110:
	; Equal 189 zero integral4$0#
	cmp dword [rbp + 68], {operand2}
	je printFormat$189

 printFormat$111:
	; Assign startChars g_outChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 101], {operand2}

 printFormat$112:
	; Assign oldOutStatus g_outStatus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 105], {operand2}

 printFormat$113:
	; Assign negative integral4$0#
	mov dword [rbp + 109], {operand2}

 printFormat$114:
	; Assign g_outStatus integral4$2#
	mov dword [g_outStatus], {operand2}

 printFormat$115:
	; PreCall 113

 printFormat$116:
	; IntegralToIntegral £temporary2203 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$117:
	; Add £temporary2204 format £temporary2203
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$118:
	; Dereference £temporary2205 £temporary2204 0

 printFormat$119:
	; Address £temporary2206 £temporary2205

 printFormat$120:
	; Parameter 137 pointer £temporary2206
	mov [rbp + 137], {operand2}

 printFormat$121:
	; Parameter 145 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 145], {operand2}

 printFormat$122:
	; Parameter 153 signed int integral4$0#
	mov dword [rbp + 153], {operand2}

 printFormat$123:
	; Parameter 157 signed int integral4$0#
	mov dword [rbp + 157], {operand2}

 printFormat$124:
	; Parameter 161 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 161], {operand2}

 printFormat$125:
	; Address £temporary2207 width
	mov rsi, rbp
	add rsi, 44

 printFormat$126:
	; Parameter 165 pointer £temporary2207
	mov [rbp + 165], {operand2}

 printFormat$127:
	; Parameter 173 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 173], {operand2}

 printFormat$128:
	; Parameter 177 signed int shortInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 177], {operand2}

 printFormat$129:
	; Parameter 181 signed int longInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 181], {operand2}

 printFormat$130:
	; Parameter 185 signed int longDouble
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 185], {operand2}

 printFormat$131:
	; Parameter 189 signed int integral4$0#
	mov dword [rbp + 189], {operand2}

 printFormat$132:
	; Address £temporary2208 negative
	mov rsi, rbp
	add rsi, 109

 printFormat$133:
	; Parameter 193 pointer £temporary2208
	mov [rbp + 193], {operand2}

 printFormat$134:
	; Call 113 printArgument 0
	mov qword [rbp + 113], printFormat$135
	mov [rbp + 121], {operand2}
	add rbp, 113
	jmp printArgument

 printFormat$135:
	; PostCall 113

 printFormat$136:
	; Assign g_outStatus oldOutStatus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [g_outStatus], {operand2}

 printFormat$137:
	; Subtract field g_outChars startChars
	mov eax, [{operand1}{WithSign(operand2)}]
	sub eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 113], {operand2}

 printFormat$138:
	; Assign g_outChars startChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [g_outChars], {operand2}

 printFormat$139:
	; Equal 146 negative integral4$0#
	cmp dword [rbp + 109], {operand2}
	je printFormat$146

 printFormat$140:
	; PreCall 117

 printFormat$141:
	; Parameter 141 signed char integral1$45#
	mov byte [rbp + 141], {operand2}

 printFormat$142:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$143
	mov [rbp + 125], {operand2}
	add rbp, 117
	jmp printChar

 printFormat$143:
	; PostCall 117

 printFormat$144:
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$145:
	; Jump 159
	jmp printFormat$159

 printFormat$146:
	; Equal 153 plus integral4$0#
	cmp dword [rbp + 56], {operand2}
	je printFormat$153

 printFormat$147:
	; PreCall 117

 printFormat$148:
	; Parameter 141 signed char integral1$43#
	mov byte [rbp + 141], {operand2}

 printFormat$149:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$150
	mov [rbp + 125], {operand2}
	add rbp, 117
	jmp printChar

 printFormat$150:
	; PostCall 117

 printFormat$151:
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$152:
	; Jump 159
	jmp printFormat$159

 printFormat$153:
	; Equal 159 space integral4$0#
	cmp dword [rbp + 64], {operand2}
	je printFormat$159

 printFormat$154:
	; PreCall 117

 printFormat$155:
	; Parameter 141 signed char integral1$32#
	mov byte [rbp + 141], {operand2}

 printFormat$156:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$157
	mov [rbp + 125], {operand2}
	add rbp, 117
	jmp printChar

 printFormat$157:
	; PostCall 117

 printFormat$158:
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$159:
	; Assign £temporary2226 field
	mov eax, [{operand1}{WithSign(operand2)}]

 printFormat$160:
	; Add field field integral4$1#
	inc dword [rbp + 113]

 printFormat$161:
	; GreaterThanEqual 167 £temporary2226 width
	cmp eax, [{operand1}{WithSign(operand2)}]
	jge printFormat$167

 printFormat$162:
	; PreCall 117

 printFormat$163:
	; Parameter 141 signed char integral1$48#
	mov byte [rbp + 141], {operand2}

 printFormat$164:
	; Call 117 printChar 0
	mov qword [rbp + 117], printFormat$165
	mov [rbp + 125], {operand2}
	add rbp, 117
	jmp printChar

 printFormat$165:
	; PostCall 117

 printFormat$166:
	; Jump 159
	jmp printFormat$159

 printFormat$167:
	; PreCall 117

 printFormat$168:
	; IntegralToIntegral £temporary2231 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$169:
	; Add £temporary2232 format £temporary2231
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$170:
	; Dereference £temporary2233 £temporary2232 0

 printFormat$171:
	; Address £temporary2234 £temporary2233

 printFormat$172:
	; Parameter 141 pointer £temporary2234
	mov [rbp + 141], {operand2}

 printFormat$173:
	; Parameter 149 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 149], {operand2}

 printFormat$174:
	; Parameter 157 signed int integral4$0#
	mov dword [rbp + 157], {operand2}

 printFormat$175:
	; Parameter 161 signed int integral4$0#
	mov dword [rbp + 161], {operand2}

 printFormat$176:
	; Parameter 165 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 165], {operand2}

 printFormat$177:
	; Parameter 169 pointer integral8$0#
	mov qword [rbp + 169], {operand2}

 printFormat$178:
	; Parameter 177 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 177], {operand2}

 printFormat$179:
	; Parameter 181 signed int shortInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 181], {operand2}

 printFormat$180:
	; Parameter 185 signed int longInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 185], {operand2}

 printFormat$181:
	; Parameter 189 signed int longDouble
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 189], {operand2}

 printFormat$182:
	; Parameter 193 signed int integral4$0#
	mov dword [rbp + 193], {operand2}

 printFormat$183:
	; Parameter 197 pointer integral8$0#
	mov qword [rbp + 197], {operand2}

 printFormat$184:
	; Call 117 printArgument 0
	mov qword [rbp + 117], printFormat$185
	mov [rbp + 125], {operand2}
	add rbp, 117
	jmp printArgument

 printFormat$185:
	; PostCall 117

 printFormat$186:
	; GetReturnValue £temporary2235

 printFormat$187:
	; Assign arg_list £temporary2235
	mov [rbp + 32], {operand2}

 printFormat$188:
	; Jump 244
	jmp printFormat$244

 printFormat$189:
	; Assign startChars g_outChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 101], {operand2}

 printFormat$190:
	; Assign oldOutStatus g_outStatus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 105], {operand2}

 printFormat$191:
	; Assign g_outStatus integral4$2#
	mov dword [g_outStatus], {operand2}

 printFormat$192:
	; PreCall 109

 printFormat$193:
	; IntegralToIntegral £temporary2237 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$194:
	; Add £temporary2238 format £temporary2237
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$195:
	; Dereference £temporary2239 £temporary2238 0

 printFormat$196:
	; Address £temporary2240 £temporary2239

 printFormat$197:
	; Parameter 133 pointer £temporary2240
	mov [rbp + 133], {operand2}

 printFormat$198:
	; Parameter 141 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 141], {operand2}

 printFormat$199:
	; Parameter 149 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 149], {operand2}

 printFormat$200:
	; Parameter 153 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 153], {operand2}

 printFormat$201:
	; Parameter 157 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 157], {operand2}

 printFormat$202:
	; Address £temporary2241 width
	mov rsi, rbp
	add rsi, 44

 printFormat$203:
	; Parameter 161 pointer £temporary2241
	mov [rbp + 161], {operand2}

 printFormat$204:
	; Parameter 169 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 169], {operand2}

 printFormat$205:
	; Parameter 173 signed int shortInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 173], {operand2}

 printFormat$206:
	; Parameter 177 signed int longInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 177], {operand2}

 printFormat$207:
	; Parameter 181 signed int longDouble
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 181], {operand2}

 printFormat$208:
	; Parameter 185 signed int integral4$1#
	mov dword [rbp + 185], {operand2}

 printFormat$209:
	; Parameter 189 pointer integral8$0#
	mov qword [rbp + 189], {operand2}

 printFormat$210:
	; Call 109 printArgument 0
	mov qword [rbp + 109], printFormat$211
	mov [rbp + 117], {operand2}
	add rbp, 109
	jmp printArgument

 printFormat$211:
	; PostCall 109

 printFormat$212:
	; Assign g_outStatus oldOutStatus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [g_outStatus], {operand2}

 printFormat$213:
	; Subtract field g_outChars startChars
	mov eax, [{operand1}{WithSign(operand2)}]
	sub eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 109], {operand2}

 printFormat$214:
	; Assign g_outChars startChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [g_outChars], {operand2}

 printFormat$215:
	; Assign £temporary2244 field
	mov eax, [{operand1}{WithSign(operand2)}]

 printFormat$216:
	; Add field field integral4$1#
	inc dword [rbp + 109]

 printFormat$217:
	; GreaterThanEqual 223 £temporary2244 width
	cmp eax, [{operand1}{WithSign(operand2)}]
	jge printFormat$223

 printFormat$218:
	; PreCall 113

 printFormat$219:
	; Parameter 137 signed char integral1$32#
	mov byte [rbp + 137], {operand2}

 printFormat$220:
	; Call 113 printChar 0
	mov qword [rbp + 113], printFormat$221
	mov [rbp + 121], {operand2}
	add rbp, 113
	jmp printChar

 printFormat$221:
	; PostCall 113

 printFormat$222:
	; Jump 215
	jmp printFormat$215

 printFormat$223:
	; PreCall 113

 printFormat$224:
	; IntegralToIntegral £temporary2249 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$225:
	; Add £temporary2250 format £temporary2249
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$226:
	; Dereference £temporary2251 £temporary2250 0

 printFormat$227:
	; Address £temporary2252 £temporary2251

 printFormat$228:
	; Parameter 137 pointer £temporary2252
	mov [rbp + 137], {operand2}

 printFormat$229:
	; Parameter 145 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 145], {operand2}

 printFormat$230:
	; Parameter 153 signed int plus
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 153], {operand2}

 printFormat$231:
	; Parameter 157 signed int space
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 157], {operand2}

 printFormat$232:
	; Parameter 161 signed int grid
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 161], {operand2}

 printFormat$233:
	; Parameter 165 pointer integral8$0#
	mov qword [rbp + 165], {operand2}

 printFormat$234:
	; Parameter 173 signed int precision
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 173], {operand2}

 printFormat$235:
	; Parameter 177 signed int shortInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 177], {operand2}

 printFormat$236:
	; Parameter 181 signed int longInt
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 181], {operand2}

 printFormat$237:
	; Parameter 185 signed int longDouble
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 185], {operand2}

 printFormat$238:
	; Parameter 189 signed int integral4$1#
	mov dword [rbp + 189], {operand2}

 printFormat$239:
	; Parameter 193 pointer integral8$0#
	mov qword [rbp + 193], {operand2}

 printFormat$240:
	; Call 113 printArgument 0
	mov qword [rbp + 113], printFormat$241
	mov [rbp + 121], {operand2}
	add rbp, 113
	jmp printArgument

 printFormat$241:
	; PostCall 113

 printFormat$242:
	; GetReturnValue £temporary2253

 printFormat$243:
	; Assign arg_list £temporary2253
	mov [rbp + 32], {operand2}

 printFormat$244:
	; Assign percent integral4$0#
	mov dword [rbp + 52], {operand2}

 printFormat$245:
	; Jump 290
	jmp printFormat$290

 printFormat$246:
	; Assign value integral4$0#
	mov dword [rbp + 101], {operand2}

 printFormat$247:
	; PreCall 105

 printFormat$248:
	; IntegralToIntegral £temporary2260 c
	mov al, [{operand1}{WithSign(operand2)}]
	and eax, 255
	cmp al, 0
	jge printFormat$249
	neg al
	neg eax

 printFormat$249:
	; Parameter 129 signed int £temporary2260
	mov [rbp + 129], {operand2}

 printFormat$250:
	; Call 105 isdigit 0
	mov qword [rbp + 105], printFormat$251
	mov [rbp + 113], {operand2}
	add rbp, 105
	jmp isdigit

 printFormat$251:
	; PostCall 105

 printFormat$252:
	; GetReturnValue £temporary2261

 printFormat$253:
	; Equal 264 £temporary2261 integral4$0#
	cmp ebx, 0
	je printFormat$264

 printFormat$254:
	; Multiply £temporary2262 value integral4$10#
	mov eax, [{operand1}{WithSign(operand2)}]
	xor edx, edx
	imul dword [@4854integral4$10#]

 printFormat$255:
	; Subtract £temporary2263 c integral1$48#
	mov bl, [{operand1}{WithSign(operand2)}]
	sub bl, 48

 printFormat$256:
	; IntegralToIntegral £temporary2265 £temporary2263
	and ebx, 255
	cmp bl, 0
	jge printFormat$257
	neg bl
	neg ebx

 printFormat$257:
	; Add value £temporary2262 £temporary2265
	add eax, ebx
	mov [rbp + 101], {operand2}

 printFormat$258:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 printFormat$259:
	; IntegralToIntegral £temporary2268 index
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$260:
	; Add £temporary2269 format £temporary2268
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$261:
	; Dereference £temporary2270 £temporary2269 0

 printFormat$262:
	; Assign c £temporary2270
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 100], {operand2}

 printFormat$263:
	; Jump 247
	jmp printFormat$247

 printFormat$264:
	; Subtract index index integral4$1#
	dec dword [rbp + 40]

 printFormat$265:
	; NotEqual 268 period integral4$0#
	cmp dword [rbp + 80], {operand2}
	jne printFormat$268

 printFormat$266:
	; Assign width value
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 44], {operand2}

 printFormat$267:
	; Jump 290
	jmp printFormat$290

 printFormat$268:
	; Assign precision value
	mov eax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 48], {operand2}

 printFormat$269:
	; Jump 290
	jmp printFormat$290

 printFormat$270:
	; NotEqual 286 c integral1$37#
	cmp byte [rbp + 100], {operand2}
	jne printFormat$286

 printFormat$271:
	; Assign percent integral4$1#
	mov dword [rbp + 52], {operand2}

 printFormat$272:
	; Assign plus integral4$0#
	mov dword [rbp + 56], {operand2}

 printFormat$273:
	; Assign minus integral4$0#
	mov dword [rbp + 60], {operand2}

 printFormat$274:
	; Assign space integral4$0#
	mov dword [rbp + 64], {operand2}

 printFormat$275:
	; Assign zero integral4$0#
	mov dword [rbp + 68], {operand2}

 printFormat$276:
	; Assign grid integral4$0#
	mov dword [rbp + 72], {operand2}

 printFormat$277:
	; Assign widthStar integral4$0#
	mov dword [rbp + 76], {operand2}

 printFormat$278:
	; Assign period integral4$0#
	mov dword [rbp + 80], {operand2}

 printFormat$279:
	; Assign precisionStar integral4$0#
	mov dword [rbp + 84], {operand2}

 printFormat$280:
	; Assign shortInt integral4$0#
	mov dword [rbp + 88], {operand2}

 printFormat$281:
	; Assign longInt integral4$0#
	mov dword [rbp + 92], {operand2}

 printFormat$282:
	; Assign longDouble integral4$0#
	mov dword [rbp + 96], {operand2}

 printFormat$283:
	; Assign width integral4$0#
	mov dword [rbp + 44], {operand2}

 printFormat$284:
	; Assign precision integral4$0#
	mov dword [rbp + 48], {operand2}

 printFormat$285:
	; Jump 290
	jmp printFormat$290

 printFormat$286:
	; PreCall 101

 printFormat$287:
	; Parameter 125 signed char c
	mov al, [{operand1}{WithSign(operand2)}]
	mov [rbp + 125], {operand2}

 printFormat$288:
	; Call 101 printChar 0
	mov qword [rbp + 101], printFormat$289
	mov [rbp + 109], {operand2}
	add rbp, 101
	jmp printChar

 printFormat$289:
	; PostCall 101

 printFormat$290:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 printFormat$291:
	; Jump 16
	jmp printFormat$16

 printFormat$292:
	; NotEqual 299 g_outStatus integral4$1#
	cmp dword [g_outStatus], {operand2}
	jne printFormat$299

 printFormat$293:
	; IntegralToIntegral £temporary2285 g_outDevice
	mov rax, [{operand1}{WithSign(operand2)}]

 printFormat$294:
	; Assign outString £temporary2285
	mov [rbp + 100], {operand2}

 printFormat$295:
	; IntegralToIntegral £temporary2287 g_outChars
	mov eax, [{operand1}{WithSign(operand2)}]
	mov rbx, 4294967295
	and rax, rbx

 printFormat$296:
	; Add £temporary2288 outString £temporary2287
	mov rsi, [{operand1}{WithSign(operand2)}]
	add rsi, rax

 printFormat$297:
	; Dereference £temporary2289 £temporary2288 0

 printFormat$298:
	; Assign £temporary2289 integral1$0#
	mov byte [rsi], {operand2}

 printFormat$299:
	; Return g_outChars
	mov ebx, [{operand1}{WithSign(operand2)}]
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printFormat$300:
	; FunctionEnd printFormat

section .text

 printf:
	; Address £temporary2296 format
	mov rsi, rbp
	add rsi, 24

 printf$1:
	; IntegralToIntegral £temporary2297 £temporary2296

 printf$2:
	; Add arg_list £temporary2297 integral8$8#
	add rsi, 8
	mov [rdi + 32], {operand2}

 printf$3:
	; PreCall 40

 printf$4:
	; Parameter 64 pointer format
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 64], {operand2}

 printf$5:
	; Parameter 72 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 72], {operand2}

 printf$6:
	; Call 40 vprintf 0
	mov qword [rdi + 40], printf$7
	mov [rdi + 48], {operand2}
	mov [rdi + 56], {operand2}
	add rdi, 40
	mov rbp, rdi
	jmp vprintf

 printf$7:
	; PostCall 40

 printf$8:
	; GetReturnValue £temporary2299

 printf$9:
	; Return £temporary2299
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 printf$10:
	; FunctionEnd printf

section .text

 vprintf:
	; PreCall 40

 vprintf$1:
	; Parameter 64 pointer stdout
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 64], {operand2}

 vprintf$2:
	; Parameter 72 pointer format
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 vprintf$3:
	; Parameter 80 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 vprintf$4:
	; Call 40 vfprintf 0
	mov qword [rbp + 40], vprintf$5
	mov [rbp + 48], {operand2}
	add rbp, 40
	jmp vfprintf

 vprintf$5:
	; PostCall 40

 vprintf$6:
	; GetReturnValue £temporary2301

 vprintf$7:
	; Return £temporary2301
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 vprintf$8:
	; FunctionEnd vprintf

section .text

 fprintf:
	; Address £temporary2302 format
	mov rsi, rbp
	add rsi, 32

 fprintf$1:
	; IntegralToIntegral £temporary2303 £temporary2302

 fprintf$2:
	; Add arg_list £temporary2303 integral8$8#
	add rsi, 8
	mov [rdi + 40], {operand2}

 fprintf$3:
	; PreCall 48

 fprintf$4:
	; Parameter 72 pointer outStream
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 72], {operand2}

 fprintf$5:
	; Parameter 80 pointer format
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 80], {operand2}

 fprintf$6:
	; Parameter 88 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 88], {operand2}

 fprintf$7:
	; Call 48 vfprintf 0
	mov qword [rdi + 48], fprintf$8
	mov [rdi + 56], {operand2}
	mov [rdi + 64], {operand2}
	add rdi, 48
	mov rbp, rdi
	jmp vfprintf

 fprintf$8:
	; PostCall 48

 fprintf$9:
	; GetReturnValue £temporary2305

 fprintf$10:
	; Return £temporary2305
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 fprintf$11:
	; FunctionEnd fprintf

section .text

 vfprintf:
	; Assign g_outStatus integral4$0#
	mov dword [g_outStatus], {operand2}

 vfprintf$1:
	; IntegralToIntegral £temporary2307 outStream
	mov rax, [{operand1}{WithSign(operand2)}]

 vfprintf$2:
	; Assign g_outDevice £temporary2307
	mov [g_outDevice], {operand2}

 vfprintf$3:
	; PreCall 48

 vfprintf$4:
	; Parameter 72 pointer format
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 vfprintf$5:
	; Parameter 80 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 vfprintf$6:
	; Call 48 printFormat 0
	mov qword [rbp + 48], vfprintf$7
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp printFormat

 vfprintf$7:
	; PostCall 48

 vfprintf$8:
	; GetReturnValue £temporary2308

 vfprintf$9:
	; Return £temporary2308
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 vfprintf$10:
	; FunctionEnd vfprintf

section .text

 sprintf:
	; Address £temporary2309 format
	mov rsi, rbp
	add rsi, 32

 sprintf$1:
	; IntegralToIntegral £temporary2310 £temporary2309

 sprintf$2:
	; Add arg_list £temporary2310 integral8$8#
	add rsi, 8
	mov [rdi + 40], {operand2}

 sprintf$3:
	; PreCall 48

 sprintf$4:
	; Parameter 72 pointer outString
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 72], {operand2}

 sprintf$5:
	; Parameter 80 pointer format
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 80], {operand2}

 sprintf$6:
	; Parameter 88 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rdi + 88], {operand2}

 sprintf$7:
	; Call 48 vsprintf 0
	mov qword [rdi + 48], sprintf$8
	mov [rdi + 56], {operand2}
	mov [rdi + 64], {operand2}
	add rdi, 48
	mov rbp, rdi
	jmp vsprintf

 sprintf$8:
	; PostCall 48

 sprintf$9:
	; GetReturnValue £temporary2312

 sprintf$10:
	; Return £temporary2312
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 sprintf$11:
	; FunctionEnd sprintf

section .text

 vsprintf:
	; Assign g_outStatus integral4$1#
	mov dword [g_outStatus], {operand2}

 vsprintf$1:
	; IntegralToIntegral £temporary2314 outString
	mov rax, [{operand1}{WithSign(operand2)}]

 vsprintf$2:
	; Assign g_outDevice £temporary2314
	mov [g_outDevice], {operand2}

 vsprintf$3:
	; PreCall 48

 vsprintf$4:
	; Parameter 72 pointer format
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 72], {operand2}

 vsprintf$5:
	; Parameter 80 pointer arg_list
	mov rax, [{operand1}{WithSign(operand2)}]
	mov [rbp + 80], {operand2}

 vsprintf$6:
	; Call 48 printFormat 0
	mov qword [rbp + 48], vsprintf$7
	mov [rbp + 56], {operand2}
	add rbp, 48
	jmp printFormat

 vsprintf$7:
	; PostCall 48

 vsprintf$8:
	; GetReturnValue £temporary2315

 vsprintf$9:
	; Return £temporary2315
	mov rax, [{operand1}{WithSign(operand2)}]
	mov rdi, [{operand1}{WithSign(operand2)}]
	mov rbp, [{operand1}{WithSign(operand2)}]
	jmp rax

 vsprintf$10:
	; FunctionEnd vsprintf
