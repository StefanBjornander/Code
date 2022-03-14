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
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$1:
	; Call 28 localeconv 0
	mov qword [rbp + 28], islower$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 islower$2:
	; PostCall 28

 islower$3:
	; GetReturnValue £temporary178

 islower$4:
	; Assign localeConvPtr £temporary178
	mov [rbp + 28], rbx

 islower$5:
	; Equal 18 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je islower$18

 islower$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 islower$7:
	; Dereference £temporary180 localeConvPtr 0
	mov rsi, [rbp + 28]

 islower$8:
	; Parameter 60 pointer £temporary180.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 60], rax

 islower$9:
	; Parameter 68 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 islower$10:
	; Call 36 strchr 0
	mov qword [rbp + 36], islower$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 islower$11:
	; PostCall 36

 islower$12:
	; GetReturnValue £temporary181

 islower$13:
	; Equal 16 £temporary181 integral8$0#
	cmp rbx, 0
	je islower$16

 islower$14:
	; Assign £temporary183 integral4$1#
	mov ebx, 1

 islower$15:
	; Jump 17
	jmp islower$17

 islower$16:
	; Assign £temporary183 integral4$0#
	mov ebx, 0

 islower$17:
	; Return £temporary183
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$18:
	; LessThan 22 c integral4$97#
	cmp dword [rbp + 24], 97
	jl islower$22

 islower$19:
	; GreaterThan 22 c integral4$122#
	cmp dword [rbp + 24], 122
	jg islower$22

 islower$20:
	; Assign £temporary187 integral4$1#
	mov ebx, 1

 islower$21:
	; Jump 23
	jmp islower$23

 islower$22:
	; Assign £temporary187 integral4$0#
	mov ebx, 0

 islower$23:
	; Return £temporary187
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 islower$24:
	; FunctionEnd islower

section .text

 isupper:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$1:
	; Call 28 localeconv 0
	mov qword [rbp + 28], isupper$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 isupper$2:
	; PostCall 28

 isupper$3:
	; GetReturnValue £temporary190

 isupper$4:
	; Assign localeConvPtr £temporary190
	mov [rbp + 28], rbx

 isupper$5:
	; Equal 18 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je isupper$18

 isupper$6:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isupper$7:
	; Dereference £temporary192 localeConvPtr 0
	mov rsi, [rbp + 28]

 isupper$8:
	; Parameter 60 pointer £temporary192.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 60], rax

 isupper$9:
	; Parameter 68 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 isupper$10:
	; Call 36 strchr 0
	mov qword [rbp + 36], isupper$11
	mov [rbp + 44], rbp
	add rbp, 36
	jmp strchr

 isupper$11:
	; PostCall 36

 isupper$12:
	; GetReturnValue £temporary193

 isupper$13:
	; Equal 16 £temporary193 integral8$0#
	cmp rbx, 0
	je isupper$16

 isupper$14:
	; Assign £temporary195 integral4$1#
	mov ebx, 1

 isupper$15:
	; Jump 17
	jmp isupper$17

 isupper$16:
	; Assign £temporary195 integral4$0#
	mov ebx, 0

 isupper$17:
	; Return £temporary195
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$18:
	; LessThan 22 c integral4$65#
	cmp dword [rbp + 24], 65
	jl isupper$22

 isupper$19:
	; GreaterThan 22 c integral4$90#
	cmp dword [rbp + 24], 90
	jg isupper$22

 isupper$20:
	; Assign £temporary199 integral4$1#
	mov ebx, 1

 isupper$21:
	; Jump 23
	jmp isupper$23

 isupper$22:
	; Assign £temporary199 integral4$0#
	mov ebx, 0

 isupper$23:
	; Return £temporary199
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isupper$24:
	; FunctionEnd isupper

section .text

 isalpha:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$2:
	; Call 28 islower 0
	mov qword [rbp + 28], isalpha$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 isalpha$3:
	; PostCall 28

 isalpha$4:
	; GetReturnValue £temporary202

 isalpha$5:
	; NotEqual 12 £temporary202 integral4$0#
	cmp ebx, 0
	jne isalpha$12

 isalpha$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalpha$7:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalpha$8:
	; Call 28 isupper 0
	mov qword [rbp + 28], isalpha$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 isalpha$9:
	; PostCall 28

 isalpha$10:
	; GetReturnValue £temporary203

 isalpha$11:
	; Equal 14 £temporary203 integral4$0#
	cmp ebx, 0
	je isalpha$14

 isalpha$12:
	; Assign £temporary207 integral4$1#
	mov ebx, 1

 isalpha$13:
	; Jump 15
	jmp isalpha$15

 isalpha$14:
	; Assign £temporary207 integral4$0#
	mov ebx, 0

 isalpha$15:
	; Return £temporary207
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalpha$16:
	; FunctionEnd isalpha

section .text

 isdigit:
	; LessThan 4 c integral4$48#
	cmp dword [rbp + 24], 48
	jl isdigit$4

 isdigit$1:
	; GreaterThan 4 c integral4$57#
	cmp dword [rbp + 24], 57
	jg isdigit$4

 isdigit$2:
	; Assign £temporary211 integral4$1#
	mov ebx, 1

 isdigit$3:
	; Jump 5
	jmp isdigit$5

 isdigit$4:
	; Assign £temporary211 integral4$0#
	mov ebx, 0

 isdigit$5:
	; Return £temporary211
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isdigit$6:
	; FunctionEnd isdigit

section .text

 isalnum:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$2:
	; Call 28 isalpha 0
	mov qword [rbp + 28], isalnum$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalpha

 isalnum$3:
	; PostCall 28

 isalnum$4:
	; GetReturnValue £temporary212

 isalnum$5:
	; NotEqual 12 £temporary212 integral4$0#
	cmp ebx, 0
	jne isalnum$12

 isalnum$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isalnum$7:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isalnum$8:
	; Call 28 isdigit 0
	mov qword [rbp + 28], isalnum$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isalnum$9:
	; PostCall 28

 isalnum$10:
	; GetReturnValue £temporary213

 isalnum$11:
	; Equal 14 £temporary213 integral4$0#
	cmp ebx, 0
	je isalnum$14

 isalnum$12:
	; Assign £temporary217 integral4$1#
	mov ebx, 1

 isalnum$13:
	; Jump 15
	jmp isalnum$15

 isalnum$14:
	; Assign £temporary217 integral4$0#
	mov ebx, 0

 isalnum$15:
	; Return £temporary217
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isalnum$16:
	; FunctionEnd isalnum

section .text

 isxdigit:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isxdigit$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isxdigit$2:
	; Call 28 isdigit 0
	mov qword [rbp + 28], isxdigit$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isdigit

 isxdigit$3:
	; PostCall 28

 isxdigit$4:
	; GetReturnValue £temporary218

 isxdigit$5:
	; NotEqual 10 £temporary218 integral4$0#
	cmp ebx, 0
	jne isxdigit$10

 isxdigit$6:
	; LessThan 8 c integral4$97#
	cmp dword [rbp + 24], 97
	jl isxdigit$8

 isxdigit$7:
	; LessThanEqual 10 c integral4$102#
	cmp dword [rbp + 24], 102
	jle isxdigit$10

 isxdigit$8:
	; LessThan 12 c integral4$65#
	cmp dword [rbp + 24], 65
	jl isxdigit$12

 isxdigit$9:
	; GreaterThan 12 c integral4$70#
	cmp dword [rbp + 24], 70
	jg isxdigit$12

 isxdigit$10:
	; Assign £temporary228 integral4$1#
	mov ebx, 1

 isxdigit$11:
	; Jump 13
	jmp isxdigit$13

 isxdigit$12:
	; Assign £temporary228 integral4$0#
	mov ebx, 0

 isxdigit$13:
	; Return £temporary228
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isxdigit$14:
	; FunctionEnd isxdigit

section .text

 isgraph:
	; LessThan 4 c integral4$32#
	cmp dword [rbp + 24], 32
	jl isgraph$4

 isgraph$1:
	; GreaterThan 4 c integral4$126#
	cmp dword [rbp + 24], 126
	jg isgraph$4

 isgraph$2:
	; Assign £temporary232 integral4$1#
	mov ebx, 1

 isgraph$3:
	; Jump 5
	jmp isgraph$5

 isgraph$4:
	; Assign £temporary232 integral4$0#
	mov ebx, 0

 isgraph$5:
	; Return £temporary232
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isgraph$6:
	; FunctionEnd isgraph

section .text

 isprint:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 isprint$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 isprint$2:
	; Call 28 isgraph 0
	mov qword [rbp + 28], isprint$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 isprint$3:
	; PostCall 28

 isprint$4:
	; GetReturnValue £temporary233

 isprint$5:
	; Equal 9 £temporary233 integral4$0#
	cmp ebx, 0
	je isprint$9

 isprint$6:
	; Equal 9 c integral4$32#
	cmp dword [rbp + 24], 32
	je isprint$9

 isprint$7:
	; Assign £temporary237 integral4$1#
	mov ebx, 1

 isprint$8:
	; Jump 10
	jmp isprint$10

 isprint$9:
	; Assign £temporary237 integral4$0#
	mov ebx, 0

 isprint$10:
	; Return £temporary237
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isprint$11:
	; FunctionEnd isprint

section .text

 ispunct:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$2:
	; Call 28 isgraph 0
	mov qword [rbp + 28], ispunct$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isgraph

 ispunct$3:
	; PostCall 28

 ispunct$4:
	; GetReturnValue £temporary238

 ispunct$5:
	; Equal 14 £temporary238 integral4$0#
	cmp ebx, 0
	je ispunct$14

 ispunct$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 ispunct$7:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 ispunct$8:
	; Call 28 isalnum 0
	mov qword [rbp + 28], ispunct$9
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isalnum

 ispunct$9:
	; PostCall 28

 ispunct$10:
	; GetReturnValue £temporary239

 ispunct$11:
	; NotEqual 14 £temporary239 integral4$0#
	cmp ebx, 0
	jne ispunct$14

 ispunct$12:
	; Assign £temporary244 integral4$1#
	mov ebx, 1

 ispunct$13:
	; Jump 15
	jmp ispunct$15

 ispunct$14:
	; Assign £temporary244 integral4$0#
	mov ebx, 0

 ispunct$15:
	; Return £temporary244
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ispunct$16:
	; FunctionEnd ispunct

section .text

 iscntrl:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 iscntrl$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 iscntrl$2:
	; Call 28 isprint 0
	mov qword [rbp + 28], iscntrl$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isprint

 iscntrl$3:
	; PostCall 28

 iscntrl$4:
	; GetReturnValue £temporary245

 iscntrl$5:
	; NotEqual 8 £temporary245 integral4$0#
	cmp ebx, 0
	jne iscntrl$8

 iscntrl$6:
	; Assign £temporary248 integral4$1#
	mov ebx, 1

 iscntrl$7:
	; Jump 9
	jmp iscntrl$9

 iscntrl$8:
	; Assign £temporary248 integral4$0#
	mov ebx, 0

 iscntrl$9:
	; Return £temporary248
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 iscntrl$10:
	; FunctionEnd iscntrl

section .text

 isspace:
	; Equal 6 c integral4$32#
	cmp dword [rbp + 24], 32
	je isspace$6

 isspace$1:
	; Equal 6 c integral4$12#
	cmp dword [rbp + 24], 12
	je isspace$6

 isspace$2:
	; Equal 6 c integral4$10#
	cmp dword [rbp + 24], 10
	je isspace$6

 isspace$3:
	; Equal 6 c integral4$13#
	cmp dword [rbp + 24], 13
	je isspace$6

 isspace$4:
	; Equal 6 c integral4$9#
	cmp dword [rbp + 24], 9
	je isspace$6

 isspace$5:
	; NotEqual 8 c integral4$11#
	cmp dword [rbp + 24], 11
	jne isspace$8

 isspace$6:
	; Assign £temporary260 integral4$1#
	mov ebx, 1

 isspace$7:
	; Jump 9
	jmp isspace$9

 isspace$8:
	; Assign £temporary260 integral4$0#
	mov ebx, 0

 isspace$9:
	; Return £temporary260
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 isspace$10:
	; FunctionEnd isspace

section .text

 tolower:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 tolower$2:
	; Call 28 isupper 0
	mov qword [rbp + 28], tolower$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp isupper

 tolower$3:
	; PostCall 28

 tolower$4:
	; GetReturnValue £temporary261

 tolower$5:
	; Equal 32 £temporary261 integral4$0#
	cmp ebx, 0
	je tolower$32

 tolower$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$7:
	; Call 28 localeconv 0
	mov qword [rbp + 28], tolower$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 tolower$8:
	; PostCall 28

 tolower$9:
	; GetReturnValue £temporary262

 tolower$10:
	; Assign localeConvPtr £temporary262
	mov [rbp + 28], rbx

 tolower$11:
	; Equal 30 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je tolower$30

 tolower$12:
	; Dereference £temporary264 localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$13:
	; Assign lowerCase £temporary264.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 tolower$14:
	; Dereference £temporary265 localeConvPtr 0
	mov rsi, [rbp + 28]

 tolower$15:
	; Assign upperCase £temporary265.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 tolower$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 tolower$17:
	; Parameter 76 pointer upperCase
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 tolower$18:
	; Parameter 84 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 tolower$19:
	; Call 52 strchr 0
	mov qword [rbp + 52], tolower$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 tolower$20:
	; PostCall 52

 tolower$21:
	; GetReturnValue £temporary266

 tolower$22:
	; Subtract £temporary267 £temporary266 upperCase
	sub rbx, [rbp + 44]

 tolower$23:
	; IntegralToIntegral £temporary268 £temporary267

 tolower$24:
	; Assign index £temporary268
	mov [rbp + 52], ebx

 tolower$25:
	; IntegralToIntegral £temporary271 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 tolower$26:
	; Add £temporary272 lowerCase £temporary271
	mov rsi, [rbp + 36]
	add rsi, rax

 tolower$27:
	; Dereference £temporary273 £temporary272 0

 tolower$28:
	; IntegralToIntegral £temporary274 £temporary273
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge tolower$29
	neg bl
	neg ebx

 tolower$29:
	; Return £temporary274
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$30:
	; Add £temporary275 c integral4$32#
	mov ebx, [rbp + 24]
	add ebx, 32

 tolower$31:
	; Return £temporary275
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$32:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 tolower$33:
	; FunctionEnd tolower

section .text

 toupper:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$1:
	; Parameter 52 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

 toupper$2:
	; Call 28 islower 0
	mov qword [rbp + 28], toupper$3
	mov [rbp + 36], rbp
	add rbp, 28
	jmp islower

 toupper$3:
	; PostCall 28

 toupper$4:
	; GetReturnValue £temporary281

 toupper$5:
	; Equal 32 £temporary281 integral4$0#
	cmp ebx, 0
	je toupper$32

 toupper$6:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$7:
	; Call 28 localeconv 0
	mov qword [rbp + 28], toupper$8
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 toupper$8:
	; PostCall 28

 toupper$9:
	; GetReturnValue £temporary282

 toupper$10:
	; Assign localeConvPtr £temporary282
	mov [rbp + 28], rbx

 toupper$11:
	; Equal 30 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je toupper$30

 toupper$12:
	; Dereference £temporary284 localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$13:
	; Assign lowerCase £temporary284.lowerCase
	mov rax, [rsi + 40]
	mov [rbp + 36], rax

 toupper$14:
	; Dereference £temporary285 localeConvPtr 0
	mov rsi, [rbp + 28]

 toupper$15:
	; Assign upperCase £temporary285.upperCase
	mov rax, [rsi + 48]
	mov [rbp + 44], rax

 toupper$16:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 toupper$17:
	; Parameter 76 pointer lowerCase
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 toupper$18:
	; Parameter 84 signed int c
	mov eax, [rbp + 24]
	mov [rbp + 84], eax

 toupper$19:
	; Call 52 strchr 0
	mov qword [rbp + 52], toupper$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 toupper$20:
	; PostCall 52

 toupper$21:
	; GetReturnValue £temporary286

 toupper$22:
	; Subtract £temporary287 £temporary286 lowerCase
	sub rbx, [rbp + 36]

 toupper$23:
	; IntegralToIntegral £temporary288 £temporary287

 toupper$24:
	; Assign index £temporary288
	mov [rbp + 52], ebx

 toupper$25:
	; IntegralToIntegral £temporary291 index
	mov eax, [rbp + 52]
	mov rbx, 4294967295
	and rax, rbx

 toupper$26:
	; Add £temporary292 upperCase £temporary291
	mov rsi, [rbp + 44]
	add rsi, rax

 toupper$27:
	; Dereference £temporary293 £temporary292 0

 toupper$28:
	; IntegralToIntegral £temporary294 £temporary293
	mov bl, [rsi]
	and ebx, 255
	cmp bl, 0
	jge toupper$29
	neg bl
	neg ebx

 toupper$29:
	; Return £temporary294
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$30:
	; Subtract £temporary295 c integral4$32#
	mov ebx, [rbp + 24]
	sub ebx, 32

 toupper$31:
	; Return £temporary295
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$32:
	; Return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 toupper$33:
	; FunctionEnd toupper
