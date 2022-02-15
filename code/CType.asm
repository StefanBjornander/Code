	global islower
	global isupper
	global isalpha
	global isdigit
	global isalnum
	global isxdigit
	global isgraph
	global isprint
	global ispunct
	global iscntrl
	global isspace
	global tolower
	global toupper

	extern localeconv
	extern strchr
	extern $StackTop


section .text

 islower:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$1:
	; 1 Call 28 localeconv 0
	mov qword [rbp + 28], islower$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 islower$2:
	; 2 PostCall 28

 islower$3:
	; 3 GetReturnValue £temporary179

 islower$4:
	; 4 Assign localeConvPtr £temporary179
	mov [rbp + 28], rbx

 islower$5:
	; 5 Equal 19 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je islower$19

 islower$6:
	; 8 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; 9 Dereference £temporary181 localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; 10 Parameter 60 pointer £temporary181.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

 islower$9:
	; 11 Parameter 68 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 islower$10:
	; 12 Call 36 strchr 0
	mov qword [rbp + 36], islower$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 islower$11:
	; 13 PostCall 36

 islower$12:
	; 14 GetReturnValue £temporary182

 islower$13:
	; 15 Equal 16 £temporary182 integral8$0#
	cmp rbx, 0
	je islower$16

 islower$14:
	; 17 Assign £temporary184 integral4$1#
	mov ebx, 1

 islower$15:
	; 18 Jump 17
	jmp islower$17

 islower$16:
	; 19 Assign £temporary184 integral4$0#
	mov ebx, 0

 islower$17:
	; 21 SetReturnValue

 islower$18:
	; 22 Return £temporary184
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$19:
	; 25 LessThan 23 c integral4$97#
	cmp dword [rbp + 24], 97
	jl islower$23

 islower$20:
	; 27 GreaterThan 23 c integral4$122#
	cmp dword [rbp + 24], 122
	jg islower$23

 islower$21:
	; 29 Assign £temporary188 integral4$1#
	mov ebx, 1

 islower$22:
	; 30 Jump 24
	jmp islower$24

 islower$23:
	; 31 Assign £temporary188 integral4$0#
	mov ebx, 0

 islower$24:
	; 33 SetReturnValue

 islower$25:
	; 34 Return £temporary188
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$26:
	; 37 FunctionEnd islower

section .text

 isupper:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$1:
	; 1 Call 28 localeconv 0
	mov qword [rbp + 28], isupper$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 isupper$2:
	; 2 PostCall 28

 isupper$3:
	; 3 GetReturnValue £temporary191

 isupper$4:
	; 4 Assign localeConvPtr £temporary191
	mov [rbp + 28], rbx

 isupper$5:
	; 5 Equal 19 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je isupper$19

 isupper$6:
	; 8 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; 9 Dereference £temporary193 localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; 10 Parameter 60 pointer £temporary193.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

 isupper$9:
	; 11 Parameter 68 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 isupper$10:
	; 12 Call 36 strchr 0
	mov qword [rbp + 36], isupper$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 isupper$11:
	; 13 PostCall 36

 isupper$12:
	; 14 GetReturnValue £temporary194

 isupper$13:
	; 15 Equal 16 £temporary194 integral8$0#
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; 17 Assign £temporary196 integral4$1#
	mov ebx, 1

 isupper$15:
	; 18 Jump 17
	jmp isupper$17

 isupper$16:
	; 19 Assign £temporary196 integral4$0#
	mov ebx, 0

 isupper$17:
	; 21 SetReturnValue

 isupper$18:
	; 22 Return £temporary196
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$19:
	; 25 LessThan 23 c integral4$65#
	cmp dword [rbp + 24], 65
	jl isupper$23

 isupper$20:
	; 27 GreaterThan 23 c integral4$90#
	cmp dword [rbp + 24], 90
	jg isupper$23

 isupper$21:
	; 29 Assign £temporary200 integral4$1#
	mov ebx, 1

 isupper$22:
	; 30 Jump 24
	jmp isupper$24

 isupper$23:
	; 31 Assign £temporary200 integral4$0#
	mov ebx, 0

 isupper$24:
	; 33 SetReturnValue

 isupper$25:
	; 34 Return £temporary200
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$26:
	; 37 FunctionEnd isupper

section .text

 isalpha:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$2:
	; 2 Call 28 islower 0
	mov qword [rbp + 28], isalpha$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 isalpha$3:
	; 3 PostCall 28

 isalpha$4:
	; 4 GetReturnValue £temporary203

 isalpha$5:
	; 5 NotEqual 12 £temporary203 integral4$0#
	cmp ebx, 0
	jne isalpha$12

 isalpha$6:
	; 7 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$7:
	; 8 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$8:
	; 9 Call 28 isupper 0
	mov qword [rbp + 28], isalpha$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 isalpha$9:
	; 10 PostCall 28

 isalpha$10:
	; 11 GetReturnValue £temporary204

 isalpha$11:
	; 12 Equal 14 £temporary204 integral4$0#
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; 14 Assign £temporary208 integral4$1#
	mov ebx, 1

 isalpha$13:
	; 15 Jump 15
	jmp isalpha$15

 isalpha$14:
	; 16 Assign £temporary208 integral4$0#
	mov ebx, 0

 isalpha$15:
	; 18 SetReturnValue

 isalpha$16:
	; 19 Return £temporary208
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalpha$17:
	; 21 FunctionEnd isalpha

section .text

 isdigit:
	; 0 LessThan 4 c integral4$48#
	cmp dword [rbp + 24], 48
	jl isdigit$4

 isdigit$1:
	; 2 GreaterThan 4 c integral4$57#
	cmp dword [rbp + 24], 57
	jg isdigit$4

 isdigit$2:
	; 4 Assign £temporary212 integral4$1#
	mov ebx, 1

 isdigit$3:
	; 5 Jump 5
	jmp isdigit$5

 isdigit$4:
	; 6 Assign £temporary212 integral4$0#
	mov ebx, 0

 isdigit$5:
	; 8 SetReturnValue

 isdigit$6:
	; 9 Return £temporary212
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isdigit$7:
	; 11 FunctionEnd isdigit

section .text

 isalnum:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$2:
	; 2 Call 28 isalpha 0
	mov qword [rbp + 28], isalnum$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalpha

 isalnum$3:
	; 3 PostCall 28

 isalnum$4:
	; 4 GetReturnValue £temporary213

 isalnum$5:
	; 5 NotEqual 12 £temporary213 integral4$0#
	cmp ebx, 0
	jne isalnum$12

 isalnum$6:
	; 7 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$7:
	; 8 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$8:
	; 9 Call 28 isdigit 0
	mov qword [rbp + 28], isalnum$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isalnum$9:
	; 10 PostCall 28

 isalnum$10:
	; 11 GetReturnValue £temporary214

 isalnum$11:
	; 12 Equal 14 £temporary214 integral4$0#
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; 14 Assign £temporary218 integral4$1#
	mov ebx, 1

 isalnum$13:
	; 15 Jump 15
	jmp isalnum$15

 isalnum$14:
	; 16 Assign £temporary218 integral4$0#
	mov ebx, 0

 isalnum$15:
	; 18 SetReturnValue

 isalnum$16:
	; 19 Return £temporary218
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalnum$17:
	; 21 FunctionEnd isalnum

section .text

 isxdigit:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isxdigit$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isxdigit$2:
	; 2 Call 28 isdigit 0
	mov qword [rbp + 28], isxdigit$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isxdigit$3:
	; 3 PostCall 28

 isxdigit$4:
	; 4 GetReturnValue £temporary219

 isxdigit$5:
	; 5 NotEqual 10 £temporary219 integral4$0#
	cmp ebx, 0
	jne isxdigit$10

 isxdigit$6:
	; 7 LessThan 8 c integral4$97#
	cmp dword [rbp + 24], 97
	jl isxdigit$8

 isxdigit$7:
	; 9 LessThanEqual 10 c integral4$102#
	cmp dword [rbp + 24], 102
	jle isxdigit$10

 isxdigit$8:
	; 11 LessThan 12 c integral4$65#
	cmp dword [rbp + 24], 65
	jl isxdigit$12

 isxdigit$9:
	; 13 GreaterThan 12 c integral4$70#
	cmp dword [rbp + 24], 70
	jg isxdigit$12

 isxdigit$10:
	; 15 Assign £temporary229 integral4$1#
	mov ebx, 1

 isxdigit$11:
	; 16 Jump 13
	jmp isxdigit$13

 isxdigit$12:
	; 17 Assign £temporary229 integral4$0#
	mov ebx, 0

 isxdigit$13:
	; 19 SetReturnValue

 isxdigit$14:
	; 20 Return £temporary229
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isxdigit$15:
	; 22 FunctionEnd isxdigit

section .text

 isgraph:
	; 0 LessThan 4 c integral4$32#
	cmp dword [rbp + 24], 32
	jl isgraph$4

 isgraph$1:
	; 2 GreaterThan 4 c integral4$126#
	cmp dword [rbp + 24], 126
	jg isgraph$4

 isgraph$2:
	; 4 Assign £temporary233 integral4$1#
	mov ebx, 1

 isgraph$3:
	; 5 Jump 5
	jmp isgraph$5

 isgraph$4:
	; 6 Assign £temporary233 integral4$0#
	mov ebx, 0

 isgraph$5:
	; 8 SetReturnValue

 isgraph$6:
	; 9 Return £temporary233
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isgraph$7:
	; 11 FunctionEnd isgraph

section .text

 isprint:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isprint$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isprint$2:
	; 2 Call 28 isgraph 0
	mov qword [rbp + 28], isprint$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 isprint$3:
	; 3 PostCall 28

 isprint$4:
	; 4 GetReturnValue £temporary234

 isprint$5:
	; 5 Equal 9 £temporary234 integral4$0#
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; 7 Equal 9 c integral4$32#
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; 9 Assign £temporary238 integral4$1#
	mov ebx, 1

 isprint$8:
	; 10 Jump 10
	jmp isprint$10

 isprint$9:
	; 11 Assign £temporary238 integral4$0#
	mov ebx, 0

 isprint$10:
	; 13 SetReturnValue

 isprint$11:
	; 14 Return £temporary238
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isprint$12:
	; 16 FunctionEnd isprint

section .text

 ispunct:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$2:
	; 2 Call 28 isgraph 0
	mov qword [rbp + 28], ispunct$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 ispunct$3:
	; 3 PostCall 28

 ispunct$4:
	; 4 GetReturnValue £temporary239

 ispunct$5:
	; 5 Equal 14 £temporary239 integral4$0#
	cmp ebx, 0
	je ispunct$14

 ispunct$6:
	; 7 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$7:
	; 8 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$8:
	; 9 Call 28 isalnum 0
	mov qword [rbp + 28], ispunct$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalnum

 ispunct$9:
	; 10 PostCall 28

 ispunct$10:
	; 11 GetReturnValue £temporary240

 ispunct$11:
	; 12 NotEqual 14 £temporary240 integral4$0#
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; 14 Assign £temporary245 integral4$1#
	mov ebx, 1

 ispunct$13:
	; 15 Jump 15
	jmp ispunct$15

 ispunct$14:
	; 16 Assign £temporary245 integral4$0#
	mov ebx, 0

 ispunct$15:
	; 18 SetReturnValue

 ispunct$16:
	; 19 Return £temporary245
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ispunct$17:
	; 21 FunctionEnd ispunct

section .text

 iscntrl:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 iscntrl$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 iscntrl$2:
	; 2 Call 28 isprint 0
	mov qword [rbp + 28], iscntrl$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isprint

 iscntrl$3:
	; 3 PostCall 28

 iscntrl$4:
	; 4 GetReturnValue £temporary246

 iscntrl$5:
	; 5 NotEqual 8 £temporary246 integral4$0#
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; 7 Assign £temporary249 integral4$1#
	mov ebx, 1

 iscntrl$7:
	; 8 Jump 9
	jmp iscntrl$9

 iscntrl$8:
	; 9 Assign £temporary249 integral4$0#
	mov ebx, 0

 iscntrl$9:
	; 11 SetReturnValue

 iscntrl$10:
	; 12 Return £temporary249
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 iscntrl$11:
	; 14 FunctionEnd iscntrl

section .text

 isspace:
	; 0 Equal 6 c integral4$32#
	cmp dword [rbp + 24], 32
	je isspace$6

 isspace$1:
	; 2 Equal 6 c integral4$12#
	cmp dword [rbp + 24], 12
	je isspace$6

 isspace$2:
	; 4 Equal 6 c integral4$10#
	cmp dword [rbp + 24], 10
	je isspace$6

 isspace$3:
	; 6 Equal 6 c integral4$13#
	cmp dword [rbp + 24], 13
	je isspace$6

 isspace$4:
	; 8 Equal 6 c integral4$9#
	cmp dword [rbp + 24], 9
	je isspace$6

 isspace$5:
	; 10 NotEqual 8 c integral4$11#
	cmp dword [rbp + 24], 11
	jne isspace$8

 isspace$6:
	; 12 Assign £temporary261 integral4$1#
	mov ebx, 1

 isspace$7:
	; 13 Jump 9
	jmp isspace$9

 isspace$8:
	; 14 Assign £temporary261 integral4$0#
	mov ebx, 0

 isspace$9:
	; 16 SetReturnValue

 isspace$10:
	; 17 Return £temporary261
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isspace$11:
	; 19 FunctionEnd isspace

section .text

 tolower:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolower$2:
	; 2 Call 28 isupper 0
	mov qword [rbp + 28], tolower$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolower$3:
	; 3 PostCall 28

 tolower$4:
	; 4 GetReturnValue £temporary262

 tolower$5:
	; 5 Equal 34 £temporary262 integral4$0#
	cmp ebx, 0
	je tolower$34

 tolower$6:
	; 8 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$7:
	; 9 Call 28 localeconv 0
	mov qword [rbp + 28], tolower$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 tolower$8:
	; 10 PostCall 28

 tolower$9:
	; 11 GetReturnValue £temporary263

 tolower$10:
	; 12 Assign localeConvPtr £temporary263
	mov [rbp + 28], rbx

 tolower$11:
	; 13 Equal 31 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je tolower$31

 tolower$12:
	; 16 Dereference £temporary265 localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; 17 Assign lowerCase £temporary265.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; 18 Dereference £temporary266 localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; 19 Assign upperCase £temporary266.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 tolower$16:
	; 20 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$17:
	; 21 Parameter 76 pointer upperCase
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 tolower$18:
	; 22 Parameter 84 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 tolower$19:
	; 23 Call 52 strchr 0
	mov qword [rbp + 52], tolower$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 tolower$20:
	; 24 PostCall 52

 tolower$21:
	; 25 GetReturnValue £temporary267

 tolower$22:
	; 26 Subtract £temporary268 £temporary267 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; 27 IntegralToIntegral £temporary269 £temporary268

 tolower$24:
	; 28 Assign index £temporary269
	mov [rbp + 52], ebx

 tolower$25:
	; 29 IntegralToIntegral £temporary270 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; 30 Add £temporary271 lowerCase £temporary270
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; 31 Dereference £temporary272 £temporary271 0

 tolower$28:
	; 32 IntegralToIntegral £temporary273 £temporary272
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; 33 SetReturnValue

 tolower$30:
	; 34 Return £temporary273
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$31:
	; 37 Add £temporary274 c integral4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$32:
	; 38 SetReturnValue

 tolower$33:
	; 39 Return £temporary274
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$34:
	; 43 SetReturnValue

 tolower$35:
	; 44 Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$36:
	; 47 FunctionEnd tolower

section .text

 toupper:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$1:
	; 1 Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupper$2:
	; 2 Call 28 islower 0
	mov qword [rbp + 28], toupper$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupper$3:
	; 3 PostCall 28

 toupper$4:
	; 4 GetReturnValue £temporary280

 toupper$5:
	; 5 Equal 34 £temporary280 integral4$0#
	cmp ebx, 0
	je toupper$34

 toupper$6:
	; 8 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$7:
	; 9 Call 28 localeconv 0
	mov qword [rbp + 28], toupper$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 toupper$8:
	; 10 PostCall 28

 toupper$9:
	; 11 GetReturnValue £temporary281

 toupper$10:
	; 12 Assign localeConvPtr £temporary281
	mov [rbp + 28], rbx

 toupper$11:
	; 13 Equal 31 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je toupper$31

 toupper$12:
	; 16 Dereference £temporary283 localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; 17 Assign lowerCase £temporary283.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; 18 Dereference £temporary284 localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; 19 Assign upperCase £temporary284.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 toupper$16:
	; 20 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$17:
	; 21 Parameter 76 pointer lowerCase
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 toupper$18:
	; 22 Parameter 84 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 toupper$19:
	; 23 Call 52 strchr 0
	mov qword [rbp + 52], toupper$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 toupper$20:
	; 24 PostCall 52

 toupper$21:
	; 25 GetReturnValue £temporary285

 toupper$22:
	; 26 Subtract £temporary286 £temporary285 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; 27 IntegralToIntegral £temporary287 £temporary286

 toupper$24:
	; 28 Assign index £temporary287
	mov [rbp + 52], ebx

 toupper$25:
	; 29 IntegralToIntegral £temporary288 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; 30 Add £temporary289 upperCase £temporary288
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; 31 Dereference £temporary290 £temporary289 0

 toupper$28:
	; 32 IntegralToIntegral £temporary291 £temporary290
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; 33 SetReturnValue

 toupper$30:
	; 34 Return £temporary291
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$31:
	; 37 Subtract £temporary292 c integral4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$32:
	; 38 SetReturnValue

 toupper$33:
	; 39 Return £temporary292
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$34:
	; 43 SetReturnValue

 toupper$35:
	; 44 Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$36:
	; 47 FunctionEnd toupper
