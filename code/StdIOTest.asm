	global stdio_test

	extern printf
	extern sscanf
	extern $StackTop


section .data

@10920string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#:
	; Initializer String <%i> <%i> <%li> <%li> <%u> <%lu>\n\n
	db "<%i> <%i> <%li> <%li> <%u> <%lu>", 10, 10, 0

section .data

@10927string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#:
	; Initializer String <%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n
	db "<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>", 10, 0

section .data

@10934string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#:
	; Initializer String <%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n
	db "<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>", 10, 0

section .data

@10941string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#:
	; Initializer String <%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n
	db "<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>", 10, 0

section .data

@10948string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#:
	; Initializer String <%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n\n
	db "<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>", 10, 10, 0

section .data

@10959string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#:
	; Initializer String <%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n
	db "<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>", 10, 0

section .data

@10966string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#:
	; Initializer String <%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n
	db "<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>", 10, 0

section .data

@10973string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#:
	; Initializer String <%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n
	db "<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>", 10, 0

section .data

@10980string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#:
	; Initializer String <%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n\n
	db "<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>", 10, 10, 0

section .data

@10987string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#:
	; Initializer String <% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n
	db "<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>", 10, 0

section .data

@10994string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#:
	; Initializer String <%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n
	db "<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>", 10, 0

section .data

@11001string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#:
	; Initializer String <%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n
	db "<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>", 10, 0

section .data

@11008string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#:
	; Initializer String <%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n
	db "<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>", 10, 10, 0

section .data

@11015string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#:
	; Initializer String <%x> <%X> <%o> <%lx> <%lX> <%lo>\n
	db "<%x> <%X> <%o> <%lx> <%lX> <%lo>", 10, 0

section .data

@11022string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#:
	; Initializer String <%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n
	db "<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>", 10, 0

section .data

@11029string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#:
	; Initializer String <%%> <%s> <%c> <%p>\n\n
	db "<%%> <%s> <%c> <%p>", 10, 10, 0

section .data

@11030string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@11033string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#:
	; Initializer String <%f> <%e> <%E> <%g> <%G>\n
	db "<%f> <%e> <%E> <%g> <%G>", 10, 0

section .data

@11039string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#:
	; Initializer String <%lf> <%le> <%lE> <%lg> <%lG>\n
	db "<%lf> <%le> <%lE> <%lg> <%lG>", 10, 0

section .data

@11045string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#:
	; Initializer String <%#f> <%#e> <%#E> <%#g> <%#G>\n
	db "<%#f> <%#e> <%#E> <%#g> <%#G>", 10, 0

section .data

@11051string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#:
	; Initializer String <%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n
	db "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>", 10, 0

section .data

@11057string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#:
	; Initializer String <%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n
	db "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>", 10, 0

section .data

@11063string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#:
	; Initializer String <%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n
	db "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>", 10, 10, 0

section .data

@11069string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#:
	; Initializer String <%f> <%e> <%E> <%g> <%G>\n
	db "<%f> <%e> <%E> <%g> <%G>", 10, 0

section .data

@11075string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#:
	; Initializer String <%lf> <%le> <%lE> <%lg> <%lG>\n
	db "<%lf> <%le> <%lE> <%lg> <%lG>", 10, 0

section .data

@11081string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#:
	; Initializer String <%#f> <%#e> <%#E> <%#g> <%#G>\n
	db "<%#f> <%#e> <%#E> <%#g> <%#G>", 10, 0

section .data

@11087string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#:
	; Initializer String <%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n
	db "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>", 10, 0

section .data

@11093string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#:
	; Initializer String <%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n
	db "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>", 10, 0

section .data

@11099string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#:
	; Initializer String <%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n
	db "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>", 10, 10, 0

section .data

@11111string_Please20write20three20integers3A20#:
	; Initializer String Please write three integers: 
	db "Please write three integers: ", 0

section .data

@11112string_1232045620789#:
	; Initializer String 123 456 789
	db "123 456 789", 0

section .data

@11113string_25i20252Ai2025i2025n#:
	; Initializer String %i %*i %i %n
	db "%i %*i %i %n", 0

section .data

@11114string_3C25i3E203C25i3E203C25i3E0A#:
	; Initializer String <%i> <%i> <%i>\n
	db "<%i> <%i> <%i>", 10, 0

section .data

@11118string_Please20write20the20patterns205Babc5D3A20#:
	; Initializer String Please write the patterns [abc]: 
	db "Please write the patterns [abc]: ", 0

section .data

@11119string_abcdef#:
	; Initializer String abcdef
	db "abcdef", 0

section .data

@11120string_255Babc5D#:
	; Initializer String %[abc]
	db "%[abc]", 0

section .data

@11121string_3C25s3E0A#:
	; Initializer String <%s>\n
	db "<%s>", 10, 0

section .data

@11122string_Please20write20the20patterns205B5Eabc5D3A20#:
	; Initializer String Please write the patterns [^abc]: 
	db "Please write the patterns [^abc]: ", 0

section .data

@11123string_defabc#:
	; Initializer String defabc
	db "defabc", 0

section .data

@11124string_255B5Eabc5D#:
	; Initializer String %[^abc]
	db "%[^abc]", 0

section .data

@11125string_3C25s3E0A0A#:
	; Initializer String <%s>\n\n
	db "<%s>", 10, 10, 0

section .data

@11034floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11035floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11036floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11037floating8$123456.1#:
	; Initializer Double 123456.1
	dq 123456.1

section .data

@11038floating8$123456.1#:
	; Initializer Double 123456.1
	dq 123456.1

section .data

@11040floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11041floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11042floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11043floating8$123456.1#:
	; Initializer LongDouble 123456.1
	dq 123456.1

section .data

@11044floating8$123456.1#:
	; Initializer LongDouble 123456.1
	dq 123456.1

section .data

@11046floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11047floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11048floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11049floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11050floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11052floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11053floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11054floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11055floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11056floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11058floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11059floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11060floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11061floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11062floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11064floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11065floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11066floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11067floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11068floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11070floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11071floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11072floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11073floating8$minus0.000000123456#:
	; Initializer Double -0.000000123456
	dq -0.000000123456

section .data

@11074floating8$minus0.000000123456#:
	; Initializer Double -0.000000123456
	dq -0.000000123456

section .data

@11076floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11077floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11078floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11079floating8$minus0.000000123456#:
	; Initializer LongDouble -0.000000123456
	dq -0.000000123456

section .data

@11080floating8$minus0.000000123456#:
	; Initializer LongDouble -0.000000123456
	dq -0.000000123456

section .data

@11082floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11083floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11084floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11085floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11086floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11088floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11089floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11090floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11091floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11092floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11094floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11095floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11096floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11097floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11098floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11100floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11101floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11102floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11103floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11104floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .text

 stdio_test:
	; 0 Assign n integral4$0#
	mov dword [rbp + 24], 0

 stdio_test$1:
	; 1 Address £temporary4595 n
	mov rsi, rbp
	add rsi, 24

 stdio_test$2:
	; 2 Assign p £temporary4595
	mov [rbp + 28], rsi

 stdio_test$3:
	; 3 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$4:
	; 4 Parameter 60 string string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#
	mov qword [rbp + 60], @10920string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#

 stdio_test$5:
	; 5 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$6:
	; 6 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$7:
	; 7 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$8:
	; 8 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$9:
	; 9 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$10:
	; 10 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$11:
	; 11 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$12
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$12:
	; 12 PostCall 36

 stdio_test$13:
	; 13 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$14:
	; 14 Parameter 60 string string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#
	mov qword [rbp + 60], @10927string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#

 stdio_test$15:
	; 15 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$16:
	; 16 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$17:
	; 17 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$18:
	; 18 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$19:
	; 19 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$20:
	; 20 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$21:
	; 21 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$22
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$22:
	; 22 PostCall 36

 stdio_test$23:
	; 23 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$24:
	; 24 Parameter 60 string string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#
	mov qword [rbp + 60], @10934string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#

 stdio_test$25:
	; 25 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$26:
	; 26 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$27:
	; 27 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$28:
	; 28 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$29:
	; 29 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$30:
	; 30 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$31:
	; 31 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$32
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$32:
	; 32 PostCall 36

 stdio_test$33:
	; 33 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$34:
	; 34 Parameter 60 string string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#
	mov qword [rbp + 60], @10941string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#

 stdio_test$35:
	; 35 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$36:
	; 36 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$37:
	; 37 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$38:
	; 38 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$39:
	; 39 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$40:
	; 40 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$41:
	; 41 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$42
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$42:
	; 42 PostCall 36

 stdio_test$43:
	; 43 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$44:
	; 44 Parameter 60 string string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#
	mov qword [rbp + 60], @10948string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#

 stdio_test$45:
	; 45 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$46:
	; 46 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$47:
	; 47 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$48:
	; 48 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$49:
	; 49 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$50:
	; 50 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$51:
	; 51 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$52
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$52:
	; 52 PostCall 36

 stdio_test$53:
	; 53 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$54:
	; 54 Parameter 60 string string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#
	mov qword [rbp + 60], @10959string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#

 stdio_test$55:
	; 55 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$56:
	; 56 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$57:
	; 57 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$58:
	; 58 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$59:
	; 59 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$60:
	; 60 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$61:
	; 61 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$62
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$62:
	; 62 PostCall 36

 stdio_test$63:
	; 63 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$64:
	; 64 Parameter 60 string string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#
	mov qword [rbp + 60], @10966string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#

 stdio_test$65:
	; 65 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$66:
	; 66 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$67:
	; 67 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$68:
	; 68 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$69:
	; 69 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$70:
	; 70 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$71:
	; 71 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$72
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$72:
	; 72 PostCall 36

 stdio_test$73:
	; 73 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$74:
	; 74 Parameter 60 string string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#
	mov qword [rbp + 60], @10973string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#

 stdio_test$75:
	; 75 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$76:
	; 76 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$77:
	; 77 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$78:
	; 78 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$79:
	; 79 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$80:
	; 80 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$81:
	; 81 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$82
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$82:
	; 82 PostCall 36

 stdio_test$83:
	; 83 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$84:
	; 84 Parameter 60 string string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#
	mov qword [rbp + 60], @10980string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#

 stdio_test$85:
	; 85 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$86:
	; 86 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$87:
	; 87 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$88:
	; 88 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$89:
	; 89 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$90:
	; 90 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$91:
	; 91 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$92
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$92:
	; 92 PostCall 36

 stdio_test$93:
	; 93 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$94:
	; 94 Parameter 60 string string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#
	mov qword [rbp + 60], @10987string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#

 stdio_test$95:
	; 95 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$96:
	; 96 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$97:
	; 97 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$98:
	; 98 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$99:
	; 99 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$100:
	; 100 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$101:
	; 101 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$102
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$102:
	; 102 PostCall 36

 stdio_test$103:
	; 103 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$104:
	; 104 Parameter 60 string string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#
	mov qword [rbp + 60], @10994string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#

 stdio_test$105:
	; 105 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$106:
	; 106 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$107:
	; 107 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$108:
	; 108 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$109:
	; 109 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$110:
	; 110 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$111:
	; 111 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$112
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$112:
	; 112 PostCall 36

 stdio_test$113:
	; 113 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$114:
	; 114 Parameter 60 string string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#
	mov qword [rbp + 60], @11001string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#

 stdio_test$115:
	; 115 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$116:
	; 116 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$117:
	; 117 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$118:
	; 118 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$119:
	; 119 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$120:
	; 120 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$121:
	; 121 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$122
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$122:
	; 122 PostCall 36

 stdio_test$123:
	; 123 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$124:
	; 124 Parameter 60 string string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#
	mov qword [rbp + 60], @11008string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#

 stdio_test$125:
	; 125 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$126:
	; 126 Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$127:
	; 127 Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$128:
	; 128 Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$129:
	; 129 Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$130:
	; 130 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$131:
	; 131 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$132
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$132:
	; 132 PostCall 36

 stdio_test$133:
	; 133 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$134:
	; 134 Parameter 60 string string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#
	mov qword [rbp + 60], @11015string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#

 stdio_test$135:
	; 135 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$136:
	; 136 Parameter 72 signed int integral4$123#
	mov dword [rbp + 72], 123

 stdio_test$137:
	; 137 Parameter 76 signed int integral4$123#
	mov dword [rbp + 76], 123

 stdio_test$138:
	; 138 Parameter 80 signed long int integral8$123#
	mov qword [rbp + 80], 123

 stdio_test$139:
	; 139 Parameter 88 signed long int integral8$123#
	mov qword [rbp + 88], 123

 stdio_test$140:
	; 140 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$141:
	; 141 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$142
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$142:
	; 142 PostCall 36

 stdio_test$143:
	; 143 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$144:
	; 144 Parameter 60 string string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#
	mov qword [rbp + 60], @11022string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#

 stdio_test$145:
	; 145 Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$146:
	; 146 Parameter 72 signed int integral4$123#
	mov dword [rbp + 72], 123

 stdio_test$147:
	; 147 Parameter 76 signed int integral4$123#
	mov dword [rbp + 76], 123

 stdio_test$148:
	; 148 Parameter 80 signed long int integral8$123#
	mov qword [rbp + 80], 123

 stdio_test$149:
	; 149 Parameter 88 signed long int integral8$123#
	mov qword [rbp + 88], 123

 stdio_test$150:
	; 150 Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$151:
	; 151 Call 36 printf 36
	mov qword [rbp + 36], stdio_test$152
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$152:
	; 152 PostCall 36

 stdio_test$153:
	; 153 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$154:
	; 154 Parameter 60 string string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#
	mov qword [rbp + 60], @11029string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#

 stdio_test$155:
	; 155 Parameter 68 string string_Hello2C20World21#
	mov qword [rbp + 68], @11030string_Hello2C20World21#

 stdio_test$156:
	; 156 Parameter 76 signed int integral4$88#
	mov dword [rbp + 76], 88

 stdio_test$157:
	; 157 Parameter 80 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 80], rax

 stdio_test$158:
	; 158 Call 36 printf 20
	mov qword [rbp + 36], stdio_test$159
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp printf

 stdio_test$159:
	; 159 PostCall 36

 stdio_test$160:
	; 160 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$161:
	; 161 Parameter 60 string string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#
	mov qword [rbp + 60], @11033string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#

 stdio_test$162:
	; 162 PushFloat floating8$123.456#
	fld qword [@11034floating8$123.456#]

 stdio_test$163:
	; 163 Parameter 68 double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$164:
	; 164 PushFloat floating8$123.456#
	fld qword [@11035floating8$123.456#]

 stdio_test$165:
	; 165 Parameter 76 double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$166:
	; 166 PushFloat floating8$123.456#
	fld qword [@11036floating8$123.456#]

 stdio_test$167:
	; 167 Parameter 84 double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$168:
	; 168 PushFloat floating8$123456.1#
	fld qword [@11037floating8$123456.1#]

 stdio_test$169:
	; 169 Parameter 92 double floating8$123456.1#
	fstp qword [rbp + 92]

 stdio_test$170:
	; 170 PushFloat floating8$123456.1#
	fld qword [@11038floating8$123456.1#]

 stdio_test$171:
	; 171 Parameter 100 double floating8$123456.1#
	fstp qword [rbp + 100]

 stdio_test$172:
	; 172 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$173
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$173:
	; 173 PostCall 36

 stdio_test$174:
	; 174 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$175:
	; 175 Parameter 60 string string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#
	mov qword [rbp + 60], @11039string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#

 stdio_test$176:
	; 176 PushFloat floating8$123.456#
	fld qword [@11040floating8$123.456#]

 stdio_test$177:
	; 177 Parameter 68 long double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$178:
	; 178 PushFloat floating8$123.456#
	fld qword [@11041floating8$123.456#]

 stdio_test$179:
	; 179 Parameter 76 long double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$180:
	; 180 PushFloat floating8$123.456#
	fld qword [@11042floating8$123.456#]

 stdio_test$181:
	; 181 Parameter 84 long double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$182:
	; 182 PushFloat floating8$123456.1#
	fld qword [@11043floating8$123456.1#]

 stdio_test$183:
	; 183 Parameter 92 long double floating8$123456.1#
	fstp qword [rbp + 92]

 stdio_test$184:
	; 184 PushFloat floating8$123456.1#
	fld qword [@11044floating8$123456.1#]

 stdio_test$185:
	; 185 Parameter 100 long double floating8$123456.1#
	fstp qword [rbp + 100]

 stdio_test$186:
	; 186 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$187
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$187:
	; 187 PostCall 36

 stdio_test$188:
	; 188 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$189:
	; 189 Parameter 60 string string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#
	mov qword [rbp + 60], @11045string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#

 stdio_test$190:
	; 190 PushFloat floating8$123.456#
	fld qword [@11046floating8$123.456#]

 stdio_test$191:
	; 191 Parameter 68 double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$192:
	; 192 PushFloat floating8$123.456#
	fld qword [@11047floating8$123.456#]

 stdio_test$193:
	; 193 Parameter 76 double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$194:
	; 194 PushFloat floating8$123.456#
	fld qword [@11048floating8$123.456#]

 stdio_test$195:
	; 195 Parameter 84 double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$196:
	; 196 PushFloat floating8$123.456#
	fld qword [@11049floating8$123.456#]

 stdio_test$197:
	; 197 Parameter 92 double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$198:
	; 198 PushFloat floating8$123.456#
	fld qword [@11050floating8$123.456#]

 stdio_test$199:
	; 199 Parameter 100 double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$200:
	; 200 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$201
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$201:
	; 201 PostCall 36

 stdio_test$202:
	; 202 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$203:
	; 203 Parameter 60 string string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#
	mov qword [rbp + 60], @11051string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#

 stdio_test$204:
	; 204 PushFloat floating8$123.456#
	fld qword [@11052floating8$123.456#]

 stdio_test$205:
	; 205 Parameter 68 long double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$206:
	; 206 PushFloat floating8$123.456#
	fld qword [@11053floating8$123.456#]

 stdio_test$207:
	; 207 Parameter 76 long double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$208:
	; 208 PushFloat floating8$123.456#
	fld qword [@11054floating8$123.456#]

 stdio_test$209:
	; 209 Parameter 84 long double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$210:
	; 210 PushFloat floating8$123.456#
	fld qword [@11055floating8$123.456#]

 stdio_test$211:
	; 211 Parameter 92 long double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$212:
	; 212 PushFloat floating8$123.456#
	fld qword [@11056floating8$123.456#]

 stdio_test$213:
	; 213 Parameter 100 long double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$214:
	; 214 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$215
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$215:
	; 215 PostCall 36

 stdio_test$216:
	; 216 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$217:
	; 217 Parameter 60 string string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#
	mov qword [rbp + 60], @11057string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#

 stdio_test$218:
	; 218 PushFloat floating8$123.456#
	fld qword [@11058floating8$123.456#]

 stdio_test$219:
	; 219 Parameter 68 double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$220:
	; 220 PushFloat floating8$123.456#
	fld qword [@11059floating8$123.456#]

 stdio_test$221:
	; 221 Parameter 76 double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$222:
	; 222 PushFloat floating8$123.456#
	fld qword [@11060floating8$123.456#]

 stdio_test$223:
	; 223 Parameter 84 double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$224:
	; 224 PushFloat floating8$123.456#
	fld qword [@11061floating8$123.456#]

 stdio_test$225:
	; 225 Parameter 92 double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$226:
	; 226 PushFloat floating8$123.456#
	fld qword [@11062floating8$123.456#]

 stdio_test$227:
	; 227 Parameter 100 double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$228:
	; 228 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$229
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$229:
	; 229 PostCall 36

 stdio_test$230:
	; 230 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$231:
	; 231 Parameter 60 string string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#
	mov qword [rbp + 60], @11063string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#

 stdio_test$232:
	; 232 PushFloat floating8$123.456#
	fld qword [@11064floating8$123.456#]

 stdio_test$233:
	; 233 Parameter 68 long double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$234:
	; 234 PushFloat floating8$123.456#
	fld qword [@11065floating8$123.456#]

 stdio_test$235:
	; 235 Parameter 76 long double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$236:
	; 236 PushFloat floating8$123.456#
	fld qword [@11066floating8$123.456#]

 stdio_test$237:
	; 237 Parameter 84 long double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$238:
	; 238 PushFloat floating8$123.456#
	fld qword [@11067floating8$123.456#]

 stdio_test$239:
	; 239 Parameter 92 long double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$240:
	; 240 PushFloat floating8$123.456#
	fld qword [@11068floating8$123.456#]

 stdio_test$241:
	; 241 Parameter 100 long double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$242:
	; 242 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$243
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$243:
	; 243 PostCall 36

 stdio_test$244:
	; 244 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$245:
	; 245 Parameter 60 string string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#
	mov qword [rbp + 60], @11069string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#

 stdio_test$246:
	; 246 PushFloat floating8$minus123.456#
	fld qword [@11070floating8$minus123.456#]

 stdio_test$247:
	; 247 Parameter 68 double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$248:
	; 248 PushFloat floating8$minus123.456#
	fld qword [@11071floating8$minus123.456#]

 stdio_test$249:
	; 249 Parameter 76 double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$250:
	; 250 PushFloat floating8$minus123.456#
	fld qword [@11072floating8$minus123.456#]

 stdio_test$251:
	; 251 Parameter 84 double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$252:
	; 252 PushFloat floating8$minus0.000000123456#
	fld qword [@11073floating8$minus0.000000123456#]

 stdio_test$253:
	; 253 Parameter 92 double floating8$minus0.000000123456#
	fstp qword [rbp + 92]

 stdio_test$254:
	; 254 PushFloat floating8$minus0.000000123456#
	fld qword [@11074floating8$minus0.000000123456#]

 stdio_test$255:
	; 255 Parameter 100 double floating8$minus0.000000123456#
	fstp qword [rbp + 100]

 stdio_test$256:
	; 256 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$257
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$257:
	; 257 PostCall 36

 stdio_test$258:
	; 258 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$259:
	; 259 Parameter 60 string string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#
	mov qword [rbp + 60], @11075string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#

 stdio_test$260:
	; 260 PushFloat floating8$minus123.456#
	fld qword [@11076floating8$minus123.456#]

 stdio_test$261:
	; 261 Parameter 68 long double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$262:
	; 262 PushFloat floating8$minus123.456#
	fld qword [@11077floating8$minus123.456#]

 stdio_test$263:
	; 263 Parameter 76 long double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$264:
	; 264 PushFloat floating8$minus123.456#
	fld qword [@11078floating8$minus123.456#]

 stdio_test$265:
	; 265 Parameter 84 long double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$266:
	; 266 PushFloat floating8$minus0.000000123456#
	fld qword [@11079floating8$minus0.000000123456#]

 stdio_test$267:
	; 267 Parameter 92 long double floating8$minus0.000000123456#
	fstp qword [rbp + 92]

 stdio_test$268:
	; 268 PushFloat floating8$minus0.000000123456#
	fld qword [@11080floating8$minus0.000000123456#]

 stdio_test$269:
	; 269 Parameter 100 long double floating8$minus0.000000123456#
	fstp qword [rbp + 100]

 stdio_test$270:
	; 270 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$271
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$271:
	; 271 PostCall 36

 stdio_test$272:
	; 272 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$273:
	; 273 Parameter 60 string string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#
	mov qword [rbp + 60], @11081string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#

 stdio_test$274:
	; 274 PushFloat floating8$minus123.456#
	fld qword [@11082floating8$minus123.456#]

 stdio_test$275:
	; 275 Parameter 68 double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$276:
	; 276 PushFloat floating8$minus123.456#
	fld qword [@11083floating8$minus123.456#]

 stdio_test$277:
	; 277 Parameter 76 double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$278:
	; 278 PushFloat floating8$minus123.456#
	fld qword [@11084floating8$minus123.456#]

 stdio_test$279:
	; 279 Parameter 84 double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$280:
	; 280 PushFloat floating8$minus123.456#
	fld qword [@11085floating8$minus123.456#]

 stdio_test$281:
	; 281 Parameter 92 double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$282:
	; 282 PushFloat floating8$minus123.456#
	fld qword [@11086floating8$minus123.456#]

 stdio_test$283:
	; 283 Parameter 100 double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$284:
	; 284 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$285
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$285:
	; 285 PostCall 36

 stdio_test$286:
	; 286 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$287:
	; 287 Parameter 60 string string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#
	mov qword [rbp + 60], @11087string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#

 stdio_test$288:
	; 288 PushFloat floating8$minus123.456#
	fld qword [@11088floating8$minus123.456#]

 stdio_test$289:
	; 289 Parameter 68 long double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$290:
	; 290 PushFloat floating8$minus123.456#
	fld qword [@11089floating8$minus123.456#]

 stdio_test$291:
	; 291 Parameter 76 long double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$292:
	; 292 PushFloat floating8$minus123.456#
	fld qword [@11090floating8$minus123.456#]

 stdio_test$293:
	; 293 Parameter 84 long double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$294:
	; 294 PushFloat floating8$minus123.456#
	fld qword [@11091floating8$minus123.456#]

 stdio_test$295:
	; 295 Parameter 92 long double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$296:
	; 296 PushFloat floating8$minus123.456#
	fld qword [@11092floating8$minus123.456#]

 stdio_test$297:
	; 297 Parameter 100 long double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$298:
	; 298 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$299
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$299:
	; 299 PostCall 36

 stdio_test$300:
	; 300 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$301:
	; 301 Parameter 60 string string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#
	mov qword [rbp + 60], @11093string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#

 stdio_test$302:
	; 302 PushFloat floating8$minus123.456#
	fld qword [@11094floating8$minus123.456#]

 stdio_test$303:
	; 303 Parameter 68 double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$304:
	; 304 PushFloat floating8$minus123.456#
	fld qword [@11095floating8$minus123.456#]

 stdio_test$305:
	; 305 Parameter 76 double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$306:
	; 306 PushFloat floating8$minus123.456#
	fld qword [@11096floating8$minus123.456#]

 stdio_test$307:
	; 307 Parameter 84 double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$308:
	; 308 PushFloat floating8$minus123.456#
	fld qword [@11097floating8$minus123.456#]

 stdio_test$309:
	; 309 Parameter 92 double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$310:
	; 310 PushFloat floating8$minus123.456#
	fld qword [@11098floating8$minus123.456#]

 stdio_test$311:
	; 311 Parameter 100 double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$312:
	; 312 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$313
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$313:
	; 313 PostCall 36

 stdio_test$314:
	; 314 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$315:
	; 315 Parameter 60 string string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#
	mov qword [rbp + 60], @11099string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#

 stdio_test$316:
	; 316 PushFloat floating8$minus123.456#
	fld qword [@11100floating8$minus123.456#]

 stdio_test$317:
	; 317 Parameter 68 long double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$318:
	; 318 PushFloat floating8$minus123.456#
	fld qword [@11101floating8$minus123.456#]

 stdio_test$319:
	; 319 Parameter 76 long double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$320:
	; 320 PushFloat floating8$minus123.456#
	fld qword [@11102floating8$minus123.456#]

 stdio_test$321:
	; 321 Parameter 84 long double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$322:
	; 322 PushFloat floating8$minus123.456#
	fld qword [@11103floating8$minus123.456#]

 stdio_test$323:
	; 323 Parameter 92 long double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$324:
	; 324 PushFloat floating8$minus123.456#
	fld qword [@11104floating8$minus123.456#]

 stdio_test$325:
	; 325 Parameter 100 long double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$326:
	; 326 Call 36 printf 40
	mov qword [rbp + 36], stdio_test$327
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$327:
	; 327 PostCall 36

 stdio_test$328:
	; 328 Assign a integral4$0#
	mov dword [rbp + 24], 0

 stdio_test$329:
	; 329 Assign b integral4$0#
	mov dword [rbp + 28], 0

 stdio_test$330:
	; 330 Assign n integral4$0#
	mov dword [rbp + 32], 0

 stdio_test$331:
	; 331 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$332:
	; 332 Parameter 60 string string_Please20write20three20integers3A20#
	mov qword [rbp + 60], @11111string_Please20write20three20integers3A20#

 stdio_test$333:
	; 333 Call 36 printf 0
	mov qword [rbp + 36], stdio_test$334
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 stdio_test$334:
	; 334 PostCall 36

 stdio_test$335:
	; 335 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$336:
	; 336 Parameter 60 string string_1232045620789#
	mov qword [rbp + 60], @11112string_1232045620789#

 stdio_test$337:
	; 337 Parameter 68 string string_25i20252Ai2025i2025n#
	mov qword [rbp + 68], @11113string_25i20252Ai2025i2025n#

 stdio_test$338:
	; 338 Address £temporary4625 a
	mov rsi, rbp
	add rsi, 24

 stdio_test$339:
	; 339 Parameter 76 pointer £temporary4625
	mov [rbp + 76], rsi

 stdio_test$340:
	; 340 Address £temporary4626 b
	mov rsi, rbp
	add rsi, 28

 stdio_test$341:
	; 341 Parameter 84 pointer £temporary4626
	mov [rbp + 84], rsi

 stdio_test$342:
	; 342 Address £temporary4627 n
	mov rsi, rbp
	add rsi, 32

 stdio_test$343:
	; 343 Parameter 92 pointer £temporary4627
	mov [rbp + 92], rsi

 stdio_test$344:
	; 344 Call 36 sscanf 24
	mov qword [rbp + 36], stdio_test$345
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 24
	jmp sscanf

 stdio_test$345:
	; 345 PostCall 36

 stdio_test$346:
	; 346 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$347:
	; 347 Parameter 60 string string_3C25i3E203C25i3E203C25i3E0A#
	mov qword [rbp + 60], @11114string_3C25i3E203C25i3E203C25i3E0A#

 stdio_test$348:
	; 348 Parameter 68 signed int a
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 stdio_test$349:
	; 349 Parameter 72 signed int b
	mov eax, [rbp + 28]
	mov [rbp + 72], eax

 stdio_test$350:
	; 350 Parameter 76 signed int n
	mov eax, [rbp + 32]
	mov [rbp + 76], eax

 stdio_test$351:
	; 351 Call 36 printf 12
	mov qword [rbp + 36], stdio_test$352
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 stdio_test$352:
	; 352 PostCall 36

 stdio_test$353:
	; 353 PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$354:
	; 354 Parameter 148 string string_Please20write20the20patterns205Babc5D3A20#
	mov qword [rbp + 148], @11118string_Please20write20the20patterns205Babc5D3A20#

 stdio_test$355:
	; 355 Call 124 printf 0
	mov qword [rbp + 124], stdio_test$356
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 stdio_test$356:
	; 356 PostCall 124

 stdio_test$357:
	; 357 PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$358:
	; 358 Parameter 148 string string_abcdef#
	mov qword [rbp + 148], @11119string_abcdef#

 stdio_test$359:
	; 359 Parameter 156 string string_255Babc5D#
	mov qword [rbp + 156], @11120string_255Babc5D#

 stdio_test$360:
	; 360 Parameter 164 array s
	mov [rbp + 164], rbp
	add qword [rbp + 164], 24

 stdio_test$361:
	; 361 Call 124 sscanf 8
	mov qword [rbp + 124], stdio_test$362
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sscanf

 stdio_test$362:
	; 362 PostCall 124

 stdio_test$363:
	; 363 PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$364:
	; 364 Parameter 148 string string_3C25s3E0A#
	mov qword [rbp + 148], @11121string_3C25s3E0A#

 stdio_test$365:
	; 365 Parameter 156 array s
	mov [rbp + 156], rbp
	add qword [rbp + 156], 24

 stdio_test$366:
	; 366 Call 124 printf 8
	mov qword [rbp + 124], stdio_test$367
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdio_test$367:
	; 367 PostCall 124

 stdio_test$368:
	; 368 PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$369:
	; 369 Parameter 148 string string_Please20write20the20patterns205B5Eabc5D3A20#
	mov qword [rbp + 148], @11122string_Please20write20the20patterns205B5Eabc5D3A20#

 stdio_test$370:
	; 370 Call 124 printf 0
	mov qword [rbp + 124], stdio_test$371
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 stdio_test$371:
	; 371 PostCall 124

 stdio_test$372:
	; 372 PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$373:
	; 373 Parameter 148 string string_defabc#
	mov qword [rbp + 148], @11123string_defabc#

 stdio_test$374:
	; 374 Parameter 156 string string_255B5Eabc5D#
	mov qword [rbp + 156], @11124string_255B5Eabc5D#

 stdio_test$375:
	; 375 Parameter 164 array s
	mov [rbp + 164], rbp
	add qword [rbp + 164], 24

 stdio_test$376:
	; 376 Call 124 sscanf 8
	mov qword [rbp + 124], stdio_test$377
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sscanf

 stdio_test$377:
	; 377 PostCall 124

 stdio_test$378:
	; 378 PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$379:
	; 379 Parameter 148 string string_3C25s3E0A0A#
	mov qword [rbp + 148], @11125string_3C25s3E0A0A#

 stdio_test$380:
	; 380 Parameter 156 array s
	mov [rbp + 156], rbp
	add qword [rbp + 156], 24

 stdio_test$381:
	; 381 Call 124 printf 8
	mov qword [rbp + 124], stdio_test$382
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdio_test$382:
	; 382 PostCall 124

 stdio_test$383:
	; 384 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdio_test$384:
	; 385 FunctionEnd stdio_test
