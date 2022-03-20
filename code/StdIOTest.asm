	global stdio_test

	extern printf
	extern sscanf
	extern $StackTop


section .data

@11046string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#:
	; Initializer String <%i> <%i> <%li> <%li> <%u> <%lu>\n\n
	db "<%i> <%i> <%li> <%li> <%u> <%lu>", 10, 10, 0

section .data

@11053string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#:
	; Initializer String <%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n
	db "<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>", 10, 0

section .data

@11060string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#:
	; Initializer String <%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n
	db "<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>", 10, 0

section .data

@11067string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#:
	; Initializer String <%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n
	db "<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>", 10, 0

section .data

@11074string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#:
	; Initializer String <%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n\n
	db "<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>", 10, 10, 0

section .data

@11085string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#:
	; Initializer String <%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n
	db "<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>", 10, 0

section .data

@11092string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#:
	; Initializer String <%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n
	db "<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>", 10, 0

section .data

@11099string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#:
	; Initializer String <%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n
	db "<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>", 10, 0

section .data

@11106string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#:
	; Initializer String <%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n\n
	db "<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>", 10, 10, 0

section .data

@11113string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#:
	; Initializer String <% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n
	db "<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>", 10, 0

section .data

@11120string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#:
	; Initializer String <%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n
	db "<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>", 10, 0

section .data

@11127string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#:
	; Initializer String <%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n
	db "<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>", 10, 0

section .data

@11134string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#:
	; Initializer String <%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n
	db "<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>", 10, 10, 0

section .data

@11141string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#:
	; Initializer String <%x> <%X> <%o> <%lx> <%lX> <%lo>\n
	db "<%x> <%X> <%o> <%lx> <%lX> <%lo>", 10, 0

section .data

@11148string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#:
	; Initializer String <%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n
	db "<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>", 10, 0

section .data

@11155string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#:
	; Initializer String <%%> <%s> <%c> <%p>\n\n
	db "<%%> <%s> <%c> <%p>", 10, 10, 0

section .data

@11156string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@11159string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#:
	; Initializer String <%f> <%e> <%E> <%g> <%G>\n
	db "<%f> <%e> <%E> <%g> <%G>", 10, 0

section .data

@11165string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#:
	; Initializer String <%lf> <%le> <%lE> <%lg> <%lG>\n
	db "<%lf> <%le> <%lE> <%lg> <%lG>", 10, 0

section .data

@11171string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#:
	; Initializer String <%#f> <%#e> <%#E> <%#g> <%#G>\n
	db "<%#f> <%#e> <%#E> <%#g> <%#G>", 10, 0

section .data

@11177string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#:
	; Initializer String <%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n
	db "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>", 10, 0

section .data

@11183string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#:
	; Initializer String <%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n
	db "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>", 10, 0

section .data

@11189string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#:
	; Initializer String <%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n
	db "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>", 10, 10, 0

section .data

@11195string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#:
	; Initializer String <%f> <%e> <%E> <%g> <%G>\n
	db "<%f> <%e> <%E> <%g> <%G>", 10, 0

section .data

@11201string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#:
	; Initializer String <%lf> <%le> <%lE> <%lg> <%lG>\n
	db "<%lf> <%le> <%lE> <%lg> <%lG>", 10, 0

section .data

@11207string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#:
	; Initializer String <%#f> <%#e> <%#E> <%#g> <%#G>\n
	db "<%#f> <%#e> <%#E> <%#g> <%#G>", 10, 0

section .data

@11213string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#:
	; Initializer String <%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n
	db "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>", 10, 0

section .data

@11219string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#:
	; Initializer String <%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n
	db "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>", 10, 0

section .data

@11225string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#:
	; Initializer String <%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n
	db "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>", 10, 10, 0

section .data

@11237string_Please20write20three20integers3A20#:
	; Initializer String Please write three integers: 
	db "Please write three integers: ", 0

section .data

@11238string_1232045620789#:
	; Initializer String 123 456 789
	db "123 456 789", 0

section .data

@11239string_25i20252Ai2025i2025n#:
	; Initializer String %i %*i %i %n
	db "%i %*i %i %n", 0

section .data

@11240string_3C25i3E203C25i3E203C25i3E0A#:
	; Initializer String <%i> <%i> <%i>\n
	db "<%i> <%i> <%i>", 10, 0

section .data

@11244string_Please20write20the20patterns205Babc5D3A20#:
	; Initializer String Please write the patterns [abc]: 
	db "Please write the patterns [abc]: ", 0

section .data

@11245string_abcdef#:
	; Initializer String abcdef
	db "abcdef", 0

section .data

@11246string_255Babc5D#:
	; Initializer String %[abc]
	db "%[abc]", 0

section .data

@11247string_3C25s3E0A#:
	; Initializer String <%s>\n
	db "<%s>", 10, 0

section .data

@11248string_Please20write20the20patterns205B5Eabc5D3A20#:
	; Initializer String Please write the patterns [^abc]: 
	db "Please write the patterns [^abc]: ", 0

section .data

@11249string_defabc#:
	; Initializer String defabc
	db "defabc", 0

section .data

@11250string_255B5Eabc5D#:
	; Initializer String %[^abc]
	db "%[^abc]", 0

section .data

@11251string_3C25s3E0A0A#:
	; Initializer String <%s>\n\n
	db "<%s>", 10, 10, 0

section .data

@11160floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11161floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11162floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11163floating8$123456.1#:
	; Initializer Double 123456.1
	dq 123456.1

section .data

@11164floating8$123456.1#:
	; Initializer Double 123456.1
	dq 123456.1

section .data

@11166floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11167floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11168floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11169floating8$123456.1#:
	; Initializer LongDouble 123456.1
	dq 123456.1

section .data

@11170floating8$123456.1#:
	; Initializer LongDouble 123456.1
	dq 123456.1

section .data

@11172floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11173floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11174floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11175floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11176floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11178floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11179floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11180floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11181floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11182floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11184floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11185floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11186floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11187floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11188floating8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@11190floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11191floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11192floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11193floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11194floating8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@11196floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11197floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11198floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11199floating8$minus0.000000123456#:
	; Initializer Double -0.000000123456
	dq -0.000000123456

section .data

@11200floating8$minus0.000000123456#:
	; Initializer Double -0.000000123456
	dq -0.000000123456

section .data

@11202floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11203floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11204floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11205floating8$minus0.000000123456#:
	; Initializer LongDouble -0.000000123456
	dq -0.000000123456

section .data

@11206floating8$minus0.000000123456#:
	; Initializer LongDouble -0.000000123456
	dq -0.000000123456

section .data

@11208floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11209floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11210floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11211floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11212floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11214floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11215floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11216floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11217floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11218floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11220floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11221floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11222floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11223floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11224floating8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@11226floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11227floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11228floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11229floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@11230floating8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .text

 stdio_test:
	; Assign n integral4$0#
	mov dword [rbp + 24], 0

 stdio_test$1:
	; Address £temporary4821 n
	mov rsi, rbp
	add rsi, 24

 stdio_test$2:
	; Assign p £temporary4821
	mov [rbp + 28], rsi

 stdio_test$3:
	; PreCall 36

 stdio_test$4:
	; Parameter 60 string string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#
	mov qword [rbp + 60], @11046string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#

 stdio_test$5:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$6:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$7:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$8:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$9:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$10:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$11:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$12
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$12:
	; PostCall 36

 stdio_test$13:
	; PreCall 36

 stdio_test$14:
	; Parameter 60 string string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#
	mov qword [rbp + 60], @11053string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#

 stdio_test$15:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$16:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$17:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$18:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$19:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$20:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$21:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$22
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$22:
	; PostCall 36

 stdio_test$23:
	; PreCall 36

 stdio_test$24:
	; Parameter 60 string string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#
	mov qword [rbp + 60], @11060string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#

 stdio_test$25:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$26:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$27:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$28:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$29:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$30:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$31:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$32
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$32:
	; PostCall 36

 stdio_test$33:
	; PreCall 36

 stdio_test$34:
	; Parameter 60 string string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#
	mov qword [rbp + 60], @11067string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#

 stdio_test$35:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$36:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$37:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$38:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$39:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$40:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$41:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$42
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$42:
	; PostCall 36

 stdio_test$43:
	; PreCall 36

 stdio_test$44:
	; Parameter 60 string string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#
	mov qword [rbp + 60], @11074string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#

 stdio_test$45:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$46:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$47:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$48:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$49:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$50:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$51:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$52
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$52:
	; PostCall 36

 stdio_test$53:
	; PreCall 36

 stdio_test$54:
	; Parameter 60 string string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#
	mov qword [rbp + 60], @11085string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#

 stdio_test$55:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$56:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$57:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$58:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$59:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$60:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$61:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$62
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$62:
	; PostCall 36

 stdio_test$63:
	; PreCall 36

 stdio_test$64:
	; Parameter 60 string string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#
	mov qword [rbp + 60], @11092string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#

 stdio_test$65:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$66:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$67:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$68:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$69:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$70:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$71:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$72
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$72:
	; PostCall 36

 stdio_test$73:
	; PreCall 36

 stdio_test$74:
	; Parameter 60 string string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#
	mov qword [rbp + 60], @11099string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#

 stdio_test$75:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$76:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$77:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$78:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$79:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$80:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$81:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$82
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$82:
	; PostCall 36

 stdio_test$83:
	; PreCall 36

 stdio_test$84:
	; Parameter 60 string string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#
	mov qword [rbp + 60], @11106string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#

 stdio_test$85:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$86:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$87:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$88:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$89:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$90:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$91:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$92
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$92:
	; PostCall 36

 stdio_test$93:
	; PreCall 36

 stdio_test$94:
	; Parameter 60 string string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#
	mov qword [rbp + 60], @11113string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#

 stdio_test$95:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$96:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$97:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$98:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$99:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$100:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$101:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$102
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$102:
	; PostCall 36

 stdio_test$103:
	; PreCall 36

 stdio_test$104:
	; Parameter 60 string string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#
	mov qword [rbp + 60], @11120string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#

 stdio_test$105:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$106:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$107:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$108:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$109:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$110:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$111:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$112
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$112:
	; PostCall 36

 stdio_test$113:
	; PreCall 36

 stdio_test$114:
	; Parameter 60 string string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#
	mov qword [rbp + 60], @11127string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#

 stdio_test$115:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$116:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$117:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$118:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$119:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$120:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$121:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$122
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$122:
	; PostCall 36

 stdio_test$123:
	; PreCall 36

 stdio_test$124:
	; Parameter 60 string string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#
	mov qword [rbp + 60], @11134string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#

 stdio_test$125:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$126:
	; Parameter 72 signed int integral4$minus123#
	mov dword [rbp + 72], -123

 stdio_test$127:
	; Parameter 76 signed long int integral8$123#
	mov qword [rbp + 76], 123

 stdio_test$128:
	; Parameter 84 signed long int integral8$minus123#
	mov qword [rbp + 84], -123

 stdio_test$129:
	; Parameter 92 signed int integral4$123#
	mov dword [rbp + 92], 123

 stdio_test$130:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$131:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$132
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$132:
	; PostCall 36

 stdio_test$133:
	; PreCall 36

 stdio_test$134:
	; Parameter 60 string string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#
	mov qword [rbp + 60], @11141string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#

 stdio_test$135:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$136:
	; Parameter 72 signed int integral4$123#
	mov dword [rbp + 72], 123

 stdio_test$137:
	; Parameter 76 signed int integral4$123#
	mov dword [rbp + 76], 123

 stdio_test$138:
	; Parameter 80 signed long int integral8$123#
	mov qword [rbp + 80], 123

 stdio_test$139:
	; Parameter 88 signed long int integral8$123#
	mov qword [rbp + 88], 123

 stdio_test$140:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$141:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$142
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$142:
	; PostCall 36

 stdio_test$143:
	; PreCall 36

 stdio_test$144:
	; Parameter 60 string string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#
	mov qword [rbp + 60], @11148string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#

 stdio_test$145:
	; Parameter 68 signed int integral4$123#
	mov dword [rbp + 68], 123

 stdio_test$146:
	; Parameter 72 signed int integral4$123#
	mov dword [rbp + 72], 123

 stdio_test$147:
	; Parameter 76 signed int integral4$123#
	mov dword [rbp + 76], 123

 stdio_test$148:
	; Parameter 80 signed long int integral8$123#
	mov qword [rbp + 80], 123

 stdio_test$149:
	; Parameter 88 signed long int integral8$123#
	mov qword [rbp + 88], 123

 stdio_test$150:
	; Parameter 96 signed long int integral8$123#
	mov qword [rbp + 96], 123

 stdio_test$151:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$152
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$152:
	; PostCall 36

 stdio_test$153:
	; PreCall 36

 stdio_test$154:
	; Parameter 60 string string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#
	mov qword [rbp + 60], @11155string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#

 stdio_test$155:
	; Parameter 68 string string_Hello2C20World21#
	mov qword [rbp + 68], @11156string_Hello2C20World21#

 stdio_test$156:
	; Parameter 76 signed int integral4$88#
	mov dword [rbp + 76], 88

 stdio_test$157:
	; Parameter 80 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 80], rax

 stdio_test$158:
	; Call 36 printf 20
	mov qword [rbp + 36], stdio_test$159
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp printf

 stdio_test$159:
	; PostCall 36

 stdio_test$160:
	; PreCall 36

 stdio_test$161:
	; Parameter 60 string string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#
	mov qword [rbp + 60], @11159string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#

 stdio_test$162:
	; PushFloat floating8$123.456#
	fld qword [@11160floating8$123.456#]

 stdio_test$163:
	; Parameter 68 double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$164:
	; PushFloat floating8$123.456#
	fld qword [@11161floating8$123.456#]

 stdio_test$165:
	; Parameter 76 double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$166:
	; PushFloat floating8$123.456#
	fld qword [@11162floating8$123.456#]

 stdio_test$167:
	; Parameter 84 double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$168:
	; PushFloat floating8$123456.1#
	fld qword [@11163floating8$123456.1#]

 stdio_test$169:
	; Parameter 92 double floating8$123456.1#
	fstp qword [rbp + 92]

 stdio_test$170:
	; PushFloat floating8$123456.1#
	fld qword [@11164floating8$123456.1#]

 stdio_test$171:
	; Parameter 100 double floating8$123456.1#
	fstp qword [rbp + 100]

 stdio_test$172:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$173
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$173:
	; PostCall 36

 stdio_test$174:
	; PreCall 36

 stdio_test$175:
	; Parameter 60 string string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#
	mov qword [rbp + 60], @11165string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#

 stdio_test$176:
	; PushFloat floating8$123.456#
	fld qword [@11166floating8$123.456#]

 stdio_test$177:
	; Parameter 68 long double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$178:
	; PushFloat floating8$123.456#
	fld qword [@11167floating8$123.456#]

 stdio_test$179:
	; Parameter 76 long double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$180:
	; PushFloat floating8$123.456#
	fld qword [@11168floating8$123.456#]

 stdio_test$181:
	; Parameter 84 long double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$182:
	; PushFloat floating8$123456.1#
	fld qword [@11169floating8$123456.1#]

 stdio_test$183:
	; Parameter 92 long double floating8$123456.1#
	fstp qword [rbp + 92]

 stdio_test$184:
	; PushFloat floating8$123456.1#
	fld qword [@11170floating8$123456.1#]

 stdio_test$185:
	; Parameter 100 long double floating8$123456.1#
	fstp qword [rbp + 100]

 stdio_test$186:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$187
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$187:
	; PostCall 36

 stdio_test$188:
	; PreCall 36

 stdio_test$189:
	; Parameter 60 string string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#
	mov qword [rbp + 60], @11171string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#

 stdio_test$190:
	; PushFloat floating8$123.456#
	fld qword [@11172floating8$123.456#]

 stdio_test$191:
	; Parameter 68 double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$192:
	; PushFloat floating8$123.456#
	fld qword [@11173floating8$123.456#]

 stdio_test$193:
	; Parameter 76 double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$194:
	; PushFloat floating8$123.456#
	fld qword [@11174floating8$123.456#]

 stdio_test$195:
	; Parameter 84 double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$196:
	; PushFloat floating8$123.456#
	fld qword [@11175floating8$123.456#]

 stdio_test$197:
	; Parameter 92 double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$198:
	; PushFloat floating8$123.456#
	fld qword [@11176floating8$123.456#]

 stdio_test$199:
	; Parameter 100 double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$200:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$201
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$201:
	; PostCall 36

 stdio_test$202:
	; PreCall 36

 stdio_test$203:
	; Parameter 60 string string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#
	mov qword [rbp + 60], @11177string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#

 stdio_test$204:
	; PushFloat floating8$123.456#
	fld qword [@11178floating8$123.456#]

 stdio_test$205:
	; Parameter 68 long double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$206:
	; PushFloat floating8$123.456#
	fld qword [@11179floating8$123.456#]

 stdio_test$207:
	; Parameter 76 long double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$208:
	; PushFloat floating8$123.456#
	fld qword [@11180floating8$123.456#]

 stdio_test$209:
	; Parameter 84 long double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$210:
	; PushFloat floating8$123.456#
	fld qword [@11181floating8$123.456#]

 stdio_test$211:
	; Parameter 92 long double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$212:
	; PushFloat floating8$123.456#
	fld qword [@11182floating8$123.456#]

 stdio_test$213:
	; Parameter 100 long double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$214:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$215
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$215:
	; PostCall 36

 stdio_test$216:
	; PreCall 36

 stdio_test$217:
	; Parameter 60 string string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#
	mov qword [rbp + 60], @11183string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#

 stdio_test$218:
	; PushFloat floating8$123.456#
	fld qword [@11184floating8$123.456#]

 stdio_test$219:
	; Parameter 68 double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$220:
	; PushFloat floating8$123.456#
	fld qword [@11185floating8$123.456#]

 stdio_test$221:
	; Parameter 76 double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$222:
	; PushFloat floating8$123.456#
	fld qword [@11186floating8$123.456#]

 stdio_test$223:
	; Parameter 84 double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$224:
	; PushFloat floating8$123.456#
	fld qword [@11187floating8$123.456#]

 stdio_test$225:
	; Parameter 92 double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$226:
	; PushFloat floating8$123.456#
	fld qword [@11188floating8$123.456#]

 stdio_test$227:
	; Parameter 100 double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$228:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$229
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$229:
	; PostCall 36

 stdio_test$230:
	; PreCall 36

 stdio_test$231:
	; Parameter 60 string string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#
	mov qword [rbp + 60], @11189string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#

 stdio_test$232:
	; PushFloat floating8$123.456#
	fld qword [@11190floating8$123.456#]

 stdio_test$233:
	; Parameter 68 long double floating8$123.456#
	fstp qword [rbp + 68]

 stdio_test$234:
	; PushFloat floating8$123.456#
	fld qword [@11191floating8$123.456#]

 stdio_test$235:
	; Parameter 76 long double floating8$123.456#
	fstp qword [rbp + 76]

 stdio_test$236:
	; PushFloat floating8$123.456#
	fld qword [@11192floating8$123.456#]

 stdio_test$237:
	; Parameter 84 long double floating8$123.456#
	fstp qword [rbp + 84]

 stdio_test$238:
	; PushFloat floating8$123.456#
	fld qword [@11193floating8$123.456#]

 stdio_test$239:
	; Parameter 92 long double floating8$123.456#
	fstp qword [rbp + 92]

 stdio_test$240:
	; PushFloat floating8$123.456#
	fld qword [@11194floating8$123.456#]

 stdio_test$241:
	; Parameter 100 long double floating8$123.456#
	fstp qword [rbp + 100]

 stdio_test$242:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$243
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$243:
	; PostCall 36

 stdio_test$244:
	; PreCall 36

 stdio_test$245:
	; Parameter 60 string string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#
	mov qword [rbp + 60], @11195string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#

 stdio_test$246:
	; PushFloat floating8$minus123.456#
	fld qword [@11196floating8$minus123.456#]

 stdio_test$247:
	; Parameter 68 double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$248:
	; PushFloat floating8$minus123.456#
	fld qword [@11197floating8$minus123.456#]

 stdio_test$249:
	; Parameter 76 double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$250:
	; PushFloat floating8$minus123.456#
	fld qword [@11198floating8$minus123.456#]

 stdio_test$251:
	; Parameter 84 double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$252:
	; PushFloat floating8$minus0.000000123456#
	fld qword [@11199floating8$minus0.000000123456#]

 stdio_test$253:
	; Parameter 92 double floating8$minus0.000000123456#
	fstp qword [rbp + 92]

 stdio_test$254:
	; PushFloat floating8$minus0.000000123456#
	fld qword [@11200floating8$minus0.000000123456#]

 stdio_test$255:
	; Parameter 100 double floating8$minus0.000000123456#
	fstp qword [rbp + 100]

 stdio_test$256:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$257
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$257:
	; PostCall 36

 stdio_test$258:
	; PreCall 36

 stdio_test$259:
	; Parameter 60 string string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#
	mov qword [rbp + 60], @11201string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#

 stdio_test$260:
	; PushFloat floating8$minus123.456#
	fld qword [@11202floating8$minus123.456#]

 stdio_test$261:
	; Parameter 68 long double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$262:
	; PushFloat floating8$minus123.456#
	fld qword [@11203floating8$minus123.456#]

 stdio_test$263:
	; Parameter 76 long double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$264:
	; PushFloat floating8$minus123.456#
	fld qword [@11204floating8$minus123.456#]

 stdio_test$265:
	; Parameter 84 long double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$266:
	; PushFloat floating8$minus0.000000123456#
	fld qword [@11205floating8$minus0.000000123456#]

 stdio_test$267:
	; Parameter 92 long double floating8$minus0.000000123456#
	fstp qword [rbp + 92]

 stdio_test$268:
	; PushFloat floating8$minus0.000000123456#
	fld qword [@11206floating8$minus0.000000123456#]

 stdio_test$269:
	; Parameter 100 long double floating8$minus0.000000123456#
	fstp qword [rbp + 100]

 stdio_test$270:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$271
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$271:
	; PostCall 36

 stdio_test$272:
	; PreCall 36

 stdio_test$273:
	; Parameter 60 string string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#
	mov qword [rbp + 60], @11207string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#

 stdio_test$274:
	; PushFloat floating8$minus123.456#
	fld qword [@11208floating8$minus123.456#]

 stdio_test$275:
	; Parameter 68 double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$276:
	; PushFloat floating8$minus123.456#
	fld qword [@11209floating8$minus123.456#]

 stdio_test$277:
	; Parameter 76 double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$278:
	; PushFloat floating8$minus123.456#
	fld qword [@11210floating8$minus123.456#]

 stdio_test$279:
	; Parameter 84 double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$280:
	; PushFloat floating8$minus123.456#
	fld qword [@11211floating8$minus123.456#]

 stdio_test$281:
	; Parameter 92 double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$282:
	; PushFloat floating8$minus123.456#
	fld qword [@11212floating8$minus123.456#]

 stdio_test$283:
	; Parameter 100 double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$284:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$285
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$285:
	; PostCall 36

 stdio_test$286:
	; PreCall 36

 stdio_test$287:
	; Parameter 60 string string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#
	mov qword [rbp + 60], @11213string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#

 stdio_test$288:
	; PushFloat floating8$minus123.456#
	fld qword [@11214floating8$minus123.456#]

 stdio_test$289:
	; Parameter 68 long double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$290:
	; PushFloat floating8$minus123.456#
	fld qword [@11215floating8$minus123.456#]

 stdio_test$291:
	; Parameter 76 long double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$292:
	; PushFloat floating8$minus123.456#
	fld qword [@11216floating8$minus123.456#]

 stdio_test$293:
	; Parameter 84 long double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$294:
	; PushFloat floating8$minus123.456#
	fld qword [@11217floating8$minus123.456#]

 stdio_test$295:
	; Parameter 92 long double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$296:
	; PushFloat floating8$minus123.456#
	fld qword [@11218floating8$minus123.456#]

 stdio_test$297:
	; Parameter 100 long double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$298:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$299
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$299:
	; PostCall 36

 stdio_test$300:
	; PreCall 36

 stdio_test$301:
	; Parameter 60 string string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#
	mov qword [rbp + 60], @11219string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#

 stdio_test$302:
	; PushFloat floating8$minus123.456#
	fld qword [@11220floating8$minus123.456#]

 stdio_test$303:
	; Parameter 68 double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$304:
	; PushFloat floating8$minus123.456#
	fld qword [@11221floating8$minus123.456#]

 stdio_test$305:
	; Parameter 76 double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$306:
	; PushFloat floating8$minus123.456#
	fld qword [@11222floating8$minus123.456#]

 stdio_test$307:
	; Parameter 84 double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$308:
	; PushFloat floating8$minus123.456#
	fld qword [@11223floating8$minus123.456#]

 stdio_test$309:
	; Parameter 92 double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$310:
	; PushFloat floating8$minus123.456#
	fld qword [@11224floating8$minus123.456#]

 stdio_test$311:
	; Parameter 100 double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$312:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$313
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$313:
	; PostCall 36

 stdio_test$314:
	; PreCall 36

 stdio_test$315:
	; Parameter 60 string string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#
	mov qword [rbp + 60], @11225string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#

 stdio_test$316:
	; PushFloat floating8$minus123.456#
	fld qword [@11226floating8$minus123.456#]

 stdio_test$317:
	; Parameter 68 long double floating8$minus123.456#
	fstp qword [rbp + 68]

 stdio_test$318:
	; PushFloat floating8$minus123.456#
	fld qword [@11227floating8$minus123.456#]

 stdio_test$319:
	; Parameter 76 long double floating8$minus123.456#
	fstp qword [rbp + 76]

 stdio_test$320:
	; PushFloat floating8$minus123.456#
	fld qword [@11228floating8$minus123.456#]

 stdio_test$321:
	; Parameter 84 long double floating8$minus123.456#
	fstp qword [rbp + 84]

 stdio_test$322:
	; PushFloat floating8$minus123.456#
	fld qword [@11229floating8$minus123.456#]

 stdio_test$323:
	; Parameter 92 long double floating8$minus123.456#
	fstp qword [rbp + 92]

 stdio_test$324:
	; PushFloat floating8$minus123.456#
	fld qword [@11230floating8$minus123.456#]

 stdio_test$325:
	; Parameter 100 long double floating8$minus123.456#
	fstp qword [rbp + 100]

 stdio_test$326:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$327
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$327:
	; PostCall 36

 stdio_test$328:
	; Assign a integral4$0#
	mov dword [rbp + 24], 0

 stdio_test$329:
	; Assign b integral4$0#
	mov dword [rbp + 28], 0

 stdio_test$330:
	; Assign n integral4$0#
	mov dword [rbp + 32], 0

 stdio_test$331:
	; PreCall 36

 stdio_test$332:
	; Parameter 60 string string_Please20write20three20integers3A20#
	mov qword [rbp + 60], @11237string_Please20write20three20integers3A20#

 stdio_test$333:
	; Call 36 printf 0
	mov qword [rbp + 36], stdio_test$334
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 stdio_test$334:
	; PostCall 36

 stdio_test$335:
	; PreCall 36

 stdio_test$336:
	; Parameter 60 string string_1232045620789#
	mov qword [rbp + 60], @11238string_1232045620789#

 stdio_test$337:
	; Parameter 68 string string_25i20252Ai2025i2025n#
	mov qword [rbp + 68], @11239string_25i20252Ai2025i2025n#

 stdio_test$338:
	; Address £temporary4851 a
	mov rsi, rbp
	add rsi, 24

 stdio_test$339:
	; Parameter 76 pointer £temporary4851
	mov [rbp + 76], rsi

 stdio_test$340:
	; Address £temporary4852 b
	mov rsi, rbp
	add rsi, 28

 stdio_test$341:
	; Parameter 84 pointer £temporary4852
	mov [rbp + 84], rsi

 stdio_test$342:
	; Address £temporary4853 n
	mov rsi, rbp
	add rsi, 32

 stdio_test$343:
	; Parameter 92 pointer £temporary4853
	mov [rbp + 92], rsi

 stdio_test$344:
	; Call 36 sscanf 24
	mov qword [rbp + 36], stdio_test$345
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 24
	jmp sscanf

 stdio_test$345:
	; PostCall 36

 stdio_test$346:
	; PreCall 36

 stdio_test$347:
	; Parameter 60 string string_3C25i3E203C25i3E203C25i3E0A#
	mov qword [rbp + 60], @11240string_3C25i3E203C25i3E203C25i3E0A#

 stdio_test$348:
	; Parameter 68 signed int a
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 stdio_test$349:
	; Parameter 72 signed int b
	mov eax, [rbp + 28]
	mov [rbp + 72], eax

 stdio_test$350:
	; Parameter 76 signed int n
	mov eax, [rbp + 32]
	mov [rbp + 76], eax

 stdio_test$351:
	; Call 36 printf 12
	mov qword [rbp + 36], stdio_test$352
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 stdio_test$352:
	; PostCall 36

 stdio_test$353:
	; PreCall 124

 stdio_test$354:
	; Parameter 148 string string_Please20write20the20patterns205Babc5D3A20#
	mov qword [rbp + 148], @11244string_Please20write20the20patterns205Babc5D3A20#

 stdio_test$355:
	; Call 124 printf 0
	mov qword [rbp + 124], stdio_test$356
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 stdio_test$356:
	; PostCall 124

 stdio_test$357:
	; PreCall 124

 stdio_test$358:
	; Parameter 148 string string_abcdef#
	mov qword [rbp + 148], @11245string_abcdef#

 stdio_test$359:
	; Parameter 156 string string_255Babc5D#
	mov qword [rbp + 156], @11246string_255Babc5D#

 stdio_test$360:
	; Parameter 164 array s
	mov [rbp + 164], rbp
	add qword [rbp + 164], 24

 stdio_test$361:
	; Call 124 sscanf 8
	mov qword [rbp + 124], stdio_test$362
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sscanf

 stdio_test$362:
	; PostCall 124

 stdio_test$363:
	; PreCall 124

 stdio_test$364:
	; Parameter 148 string string_3C25s3E0A#
	mov qword [rbp + 148], @11247string_3C25s3E0A#

 stdio_test$365:
	; Parameter 156 array s
	mov [rbp + 156], rbp
	add qword [rbp + 156], 24

 stdio_test$366:
	; Call 124 printf 8
	mov qword [rbp + 124], stdio_test$367
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdio_test$367:
	; PostCall 124

 stdio_test$368:
	; PreCall 124

 stdio_test$369:
	; Parameter 148 string string_Please20write20the20patterns205B5Eabc5D3A20#
	mov qword [rbp + 148], @11248string_Please20write20the20patterns205B5Eabc5D3A20#

 stdio_test$370:
	; Call 124 printf 0
	mov qword [rbp + 124], stdio_test$371
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 stdio_test$371:
	; PostCall 124

 stdio_test$372:
	; PreCall 124

 stdio_test$373:
	; Parameter 148 string string_defabc#
	mov qword [rbp + 148], @11249string_defabc#

 stdio_test$374:
	; Parameter 156 string string_255B5Eabc5D#
	mov qword [rbp + 156], @11250string_255B5Eabc5D#

 stdio_test$375:
	; Parameter 164 array s
	mov [rbp + 164], rbp
	add qword [rbp + 164], 24

 stdio_test$376:
	; Call 124 sscanf 8
	mov qword [rbp + 124], stdio_test$377
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sscanf

 stdio_test$377:
	; PostCall 124

 stdio_test$378:
	; PreCall 124

 stdio_test$379:
	; Parameter 148 string string_3C25s3E0A0A#
	mov qword [rbp + 148], @11251string_3C25s3E0A0A#

 stdio_test$380:
	; Parameter 156 array s
	mov [rbp + 156], rbp
	add qword [rbp + 156], 24

 stdio_test$381:
	; Call 124 printf 8
	mov qword [rbp + 124], stdio_test$382
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdio_test$382:
	; PostCall 124

 stdio_test$383:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdio_test$384:
	; FunctionEnd stdio_test
