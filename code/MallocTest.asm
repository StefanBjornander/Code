	global malloc_test2
	global malloc_test3
	global rec
	global malloc_test4
	global malloc_test
	global malloc_test6

	extern malloc
	extern print_heap
	extern realloc
	extern calloc
	extern free
	extern printf
	extern $StackTop


section .text

 malloc_test2:
	; 0 Assign p integral8$0#
	mov qword [rbp + 28], 0

 malloc_test2$1:
	; 1 Assign r integral8$0#
	mov qword [rbp + 36], 0

 malloc_test2$2:
	; 2 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$3:
	; 3 Parameter 68 signed int integral4$96#
	mov dword [rbp + 68], 96

 malloc_test2$4:
	; 4 Call 44 malloc 0
	mov qword [rbp + 44], malloc_test2$5
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 malloc_test2$5:
	; 5 PostCall 44

 malloc_test2$6:
	; 6 GetReturnValue £temporary4721

 malloc_test2$7:
	; 7 Assign q £temporary4721
	mov [rbp + 44], rbx

 malloc_test2$8:
	; 8 Assign index integral4$0#
	mov dword [rbp + 24], 0

 malloc_test2$9:
	; 10 GreaterThanEqual 20 index integral4$10#
	cmp dword [rbp + 24], 10
	jge malloc_test2$20

 malloc_test2$10:
	; 12 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$11:
	; 13 Parameter 76 signed int integral4$96#
	mov dword [rbp + 76], 96

 malloc_test2$12:
	; 14 Call 52 malloc 0
	mov qword [rbp + 52], malloc_test2$13
	mov [rbp + 60], rbp
	add rbp, 52
	jmp malloc

 malloc_test2$13:
	; 15 PostCall 52

 malloc_test2$14:
	; 16 GetReturnValue £temporary4724

 malloc_test2$15:
	; 17 Assign p £temporary4724
	mov [rbp + 28], rbx

 malloc_test2$16:
	; 18 NotEqual 18 index integral4$5#
	cmp dword [rbp + 24], 5
	jne malloc_test2$18

 malloc_test2$17:
	; 21 Assign r p
	mov rax, [rbp + 28]
	mov [rbp + 36], rax

 malloc_test2$18:
	; 26 Add index index integral4$1#
	inc dword [rbp + 24]

 malloc_test2$19:
	; 28 Jump 9
	jmp malloc_test2$9

 malloc_test2$20:
	; 29 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$21:
	; 30 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$22
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$22:
	; 31 PostCall 52

 malloc_test2$23:
	; 32 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$24:
	; 33 Parameter 76 pointer q
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 malloc_test2$25:
	; 34 Parameter 84 signed int integral4$50#
	mov dword [rbp + 84], 50

 malloc_test2$26:
	; 35 Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$27
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$27:
	; 36 PostCall 52

 malloc_test2$28:
	; 37 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$29:
	; 38 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$30
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$30:
	; 39 PostCall 52

 malloc_test2$31:
	; 40 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$32:
	; 41 Parameter 76 pointer r
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 malloc_test2$33:
	; 42 Parameter 84 signed int integral4$50#
	mov dword [rbp + 84], 50

 malloc_test2$34:
	; 43 Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$35
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$35:
	; 44 PostCall 52

 malloc_test2$36:
	; 45 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$37:
	; 46 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$38
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$38:
	; 47 PostCall 52

 malloc_test2$39:
	; 48 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$40:
	; 49 Parameter 76 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

 malloc_test2$41:
	; 50 Parameter 84 signed int integral4$50#
	mov dword [rbp + 84], 50

 malloc_test2$42:
	; 51 Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$43
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$43:
	; 52 PostCall 52

 malloc_test2$44:
	; 53 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$45:
	; 54 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$46
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$46:
	; 55 PostCall 52

 malloc_test2$47:
	; 56 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$48:
	; 57 Parameter 76 pointer q
	mov rax, [rbp + 44]
	mov [rbp + 76], rax

 malloc_test2$49:
	; 58 Parameter 84 signed int integral4$200#
	mov dword [rbp + 84], 200

 malloc_test2$50:
	; 59 Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$51
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$51:
	; 60 PostCall 52

 malloc_test2$52:
	; 61 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$53:
	; 62 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$54
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$54:
	; 63 PostCall 52

 malloc_test2$55:
	; 64 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$56:
	; 65 Parameter 76 pointer r
	mov rax, [rbp + 36]
	mov [rbp + 76], rax

 malloc_test2$57:
	; 66 Parameter 84 signed int integral4$200#
	mov dword [rbp + 84], 200

 malloc_test2$58:
	; 67 Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$59
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$59:
	; 68 PostCall 52

 malloc_test2$60:
	; 69 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$61:
	; 70 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$62
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$62:
	; 71 PostCall 52

 malloc_test2$63:
	; 72 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$64:
	; 73 Parameter 76 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 76], rax

 malloc_test2$65:
	; 74 Parameter 84 signed int integral4$200#
	mov dword [rbp + 84], 200

 malloc_test2$66:
	; 75 Call 52 realloc 0
	mov qword [rbp + 52], malloc_test2$67
	mov [rbp + 60], rbp
	add rbp, 52
	jmp realloc

 malloc_test2$67:
	; 76 PostCall 52

 malloc_test2$68:
	; 77 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test2$69:
	; 78 Call 52 print_heap 0
	mov qword [rbp + 52], malloc_test2$70
	mov [rbp + 60], rbp
	add rbp, 52
	jmp print_heap

 malloc_test2$70:
	; 79 PostCall 52

 malloc_test2$71:
	; 81 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test2$72:
	; 82 FunctionEnd malloc_test2

section .text

 malloc_test3:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$1:
	; 1 Parameter 48 signed int integral4$96#
	mov dword [rbp + 48], 96

 malloc_test3$2:
	; 2 Parameter 52 signed int integral4$1#
	mov dword [rbp + 52], 1

 malloc_test3$3:
	; 3 Call 24 calloc 0
	mov qword [rbp + 24], malloc_test3$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp calloc

 malloc_test3$4:
	; 4 PostCall 24

 malloc_test3$5:
	; 5 GetReturnValue £temporary4741

 malloc_test3$6:
	; 6 Assign a £temporary4741
	mov [rbp + 24], rbx

 malloc_test3$7:
	; 7 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$8:
	; 8 Parameter 56 signed int integral4$96#
	mov dword [rbp + 56], 96

 malloc_test3$9:
	; 9 Parameter 60 signed int integral4$1#
	mov dword [rbp + 60], 1

 malloc_test3$10:
	; 10 Call 32 calloc 0
	mov qword [rbp + 32], malloc_test3$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp calloc

 malloc_test3$11:
	; 11 PostCall 32

 malloc_test3$12:
	; 12 GetReturnValue £temporary4742

 malloc_test3$13:
	; 13 Assign b £temporary4742
	mov [rbp + 32], rbx

 malloc_test3$14:
	; 14 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$15:
	; 15 Parameter 64 signed int integral4$96#
	mov dword [rbp + 64], 96

 malloc_test3$16:
	; 16 Parameter 68 signed int integral4$1#
	mov dword [rbp + 68], 1

 malloc_test3$17:
	; 17 Call 40 calloc 0
	mov qword [rbp + 40], malloc_test3$18
	mov [rbp + 48], rbp
	add rbp, 40
	jmp calloc

 malloc_test3$18:
	; 18 PostCall 40

 malloc_test3$19:
	; 19 GetReturnValue £temporary4743

 malloc_test3$20:
	; 20 Assign c £temporary4743
	mov [rbp + 40], rbx

 malloc_test3$21:
	; 21 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$22:
	; 22 Parameter 72 signed int integral4$96#
	mov dword [rbp + 72], 96

 malloc_test3$23:
	; 23 Parameter 76 signed int integral4$1#
	mov dword [rbp + 76], 1

 malloc_test3$24:
	; 24 Call 48 calloc 0
	mov qword [rbp + 48], malloc_test3$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp calloc

 malloc_test3$25:
	; 25 PostCall 48

 malloc_test3$26:
	; 26 GetReturnValue £temporary4744

 malloc_test3$27:
	; 27 Assign d £temporary4744
	mov [rbp + 48], rbx

 malloc_test3$28:
	; 28 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$29:
	; 29 Parameter 80 signed int integral4$96#
	mov dword [rbp + 80], 96

 malloc_test3$30:
	; 30 Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 malloc_test3$31:
	; 31 Call 56 calloc 0
	mov qword [rbp + 56], malloc_test3$32
	mov [rbp + 64], rbp
	add rbp, 56
	jmp calloc

 malloc_test3$32:
	; 32 PostCall 56

 malloc_test3$33:
	; 33 GetReturnValue £temporary4745

 malloc_test3$34:
	; 34 Assign e £temporary4745
	mov [rbp + 56], rbx

 malloc_test3$35:
	; 35 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$36:
	; 36 Call 64 print_heap 0
	mov qword [rbp + 64], malloc_test3$37
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

 malloc_test3$37:
	; 37 PostCall 64

 malloc_test3$38:
	; 38 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$39:
	; 39 Parameter 88 pointer a
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 malloc_test3$40:
	; 40 Call 64 free 0
	mov qword [rbp + 64], malloc_test3$41
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$41:
	; 41 PostCall 64

 malloc_test3$42:
	; 42 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$43:
	; 43 Parameter 88 pointer b
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 malloc_test3$44:
	; 44 Call 64 free 0
	mov qword [rbp + 64], malloc_test3$45
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$45:
	; 45 PostCall 64

 malloc_test3$46:
	; 46 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$47:
	; 47 Parameter 88 pointer c
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 malloc_test3$48:
	; 48 Call 64 free 0
	mov qword [rbp + 64], malloc_test3$49
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$49:
	; 49 PostCall 64

 malloc_test3$50:
	; 50 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$51:
	; 51 Parameter 88 pointer d
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

 malloc_test3$52:
	; 52 Call 64 free 0
	mov qword [rbp + 64], malloc_test3$53
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$53:
	; 53 PostCall 64

 malloc_test3$54:
	; 54 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$55:
	; 55 Parameter 88 pointer e
	mov rax, [rbp + 56]
	mov [rbp + 88], rax

 malloc_test3$56:
	; 56 Call 64 free 0
	mov qword [rbp + 64], malloc_test3$57
	mov [rbp + 72], rbp
	add rbp, 64
	jmp free

 malloc_test3$57:
	; 57 PostCall 64

 malloc_test3$58:
	; 58 PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test3$59:
	; 59 Call 64 print_heap 0
	mov qword [rbp + 64], malloc_test3$60
	mov [rbp + 72], rbp
	add rbp, 64
	jmp print_heap

 malloc_test3$60:
	; 60 PostCall 64

 malloc_test3$61:
	; 62 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test3$62:
	; 63 FunctionEnd malloc_test3

section .data

@11998string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#:
	; Initializer String Stack Top: %u, Low Heap: %u\n
	db "Stack Top: %u, Low Heap: %u", 10, 0

section .text

 rec:
	; 0 Assign lowHeapPtr integral8$65534#
	mov qword [rbp + 28], 65534

 rec$1:
	; 1 InspectRegister £temporary4753 bp

 rec$2:
	; 2 IntegralToIntegral £temporary4754 £temporary4753
	and ebp, 65535

 rec$3:
	; 3 Assign stackTop £temporary4754
	mov [rbp + 24], ebp

 rec$4:
	; 4 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rec$5:
	; 5 Parameter 60 string string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#
	mov qword [rbp + 60], @11998string_Stack20Top3A2025u2C20Low20Heap3A2025u0A#

 rec$6:
	; 6 Parameter 68 unsigned int stackTop
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 rec$7:
	; 7 Dereference £temporary4755 lowHeapPtr 0
	mov rsi, [rbp + 28]

 rec$8:
	; 8 Parameter 72 unsigned int £temporary4755
	mov eax, [rsi]
	mov [rbp + 72], eax

 rec$9:
	; 9 Call 36 printf 8
	mov qword [rbp + 36], rec$10
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 rec$10:
	; 10 PostCall 36

 rec$11:
	; 11 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 rec$12:
	; 12 Call 36 rec 0
	mov qword [rbp + 36], rec$13
	mov [rbp + 44], rbp
	add rbp, 36
	jmp rec

 rec$13:
	; 13 PostCall 36

 rec$14:
	; 15 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rec$15:
	; 16 FunctionEnd rec

section .text

 malloc_test4:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test4$1:
	; 1 Call 24 rec 0
	mov qword [rbp + 24], malloc_test4$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp rec

 malloc_test4$2:
	; 2 PostCall 24

 malloc_test4$3:
	; 4 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test4$4:
	; 5 FunctionEnd malloc_test4

section .text

 malloc_test:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$1:
	; 1 Parameter 48 signed int integral4$96#
	mov dword [rbp + 48], 96

 malloc_test$2:
	; 2 Call 24 malloc 0
	mov qword [rbp + 24], malloc_test$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp malloc

 malloc_test$3:
	; 3 PostCall 24

 malloc_test$4:
	; 4 GetReturnValue £temporary4759

 malloc_test$5:
	; 5 Assign b £temporary4759
	mov [rbp + 24], rbx

 malloc_test$6:
	; 6 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$7:
	; 7 Parameter 56 signed int integral4$96#
	mov dword [rbp + 56], 96

 malloc_test$8:
	; 8 Call 32 malloc 0
	mov qword [rbp + 32], malloc_test$9
	mov [rbp + 40], rbp
	add rbp, 32
	jmp malloc

 malloc_test$9:
	; 9 PostCall 32

 malloc_test$10:
	; 10 GetReturnValue £temporary4760

 malloc_test$11:
	; 11 Assign c £temporary4760
	mov [rbp + 32], rbx

 malloc_test$12:
	; 12 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$13:
	; 13 Parameter 64 signed int integral4$96#
	mov dword [rbp + 64], 96

 malloc_test$14:
	; 14 Call 40 malloc 0
	mov qword [rbp + 40], malloc_test$15
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

 malloc_test$15:
	; 15 PostCall 40

 malloc_test$16:
	; 16 GetReturnValue £temporary4761

 malloc_test$17:
	; 17 Assign d £temporary4761
	mov [rbp + 40], rbx

 malloc_test$18:
	; 18 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$19:
	; 19 Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$20
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$20:
	; 20 PostCall 48

 malloc_test$21:
	; 21 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$22:
	; 22 Parameter 72 pointer c
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 malloc_test$23:
	; 23 Parameter 80 signed int integral4$40#
	mov dword [rbp + 80], 40

 malloc_test$24:
	; 24 Call 48 realloc 0
	mov qword [rbp + 48], malloc_test$25
	mov [rbp + 56], rbp
	add rbp, 48
	jmp realloc

 malloc_test$25:
	; 25 PostCall 48

 malloc_test$26:
	; 26 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$27:
	; 27 Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$28
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$28:
	; 28 PostCall 48

 malloc_test$29:
	; 29 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$30:
	; 30 Parameter 72 signed int integral4$40#
	mov dword [rbp + 72], 40

 malloc_test$31:
	; 31 Call 48 malloc 0
	mov qword [rbp + 48], malloc_test$32
	mov [rbp + 56], rbp
	add rbp, 48
	jmp malloc

 malloc_test$32:
	; 32 PostCall 48

 malloc_test$33:
	; 33 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$34:
	; 34 Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$35
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$35:
	; 35 PostCall 48

 malloc_test$36:
	; 36 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$37:
	; 37 Parameter 72 pointer b
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 malloc_test$38:
	; 38 Call 48 free 0
	mov qword [rbp + 48], malloc_test$39
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

 malloc_test$39:
	; 39 PostCall 48

 malloc_test$40:
	; 40 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$41:
	; 41 Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$42
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$42:
	; 42 PostCall 48

 malloc_test$43:
	; 43 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$44:
	; 44 Parameter 72 pointer d
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 malloc_test$45:
	; 45 Call 48 free 0
	mov qword [rbp + 48], malloc_test$46
	mov [rbp + 56], rbp
	add rbp, 48
	jmp free

 malloc_test$46:
	; 46 PostCall 48

 malloc_test$47:
	; 47 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test$48:
	; 48 Call 48 print_heap 0
	mov qword [rbp + 48], malloc_test$49
	mov [rbp + 56], rbp
	add rbp, 48
	jmp print_heap

 malloc_test$49:
	; 49 PostCall 48

 malloc_test$50:
	; 51 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test$51:
	; 52 FunctionEnd malloc_test

section .data

@12031string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#:
	; Initializer String Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u\n
	db "Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u", 10, 0

section .text

 malloc_test6:
	; 0 Assign lowHeapPtr integral8$65534#
	mov qword [rbp + 32], 65534

 malloc_test6$1:
	; 1 InspectRegister £temporary4771 bp

 malloc_test6$2:
	; 2 IntegralToIntegral £temporary4772 £temporary4771
	and ebp, 65535

 malloc_test6$3:
	; 3 Assign stackTop £temporary4772
	mov [rbp + 28], ebp

 malloc_test6$4:
	; 4 Assign i integral4$0#
	mov dword [rbp + 24], 0

 malloc_test6$5:
	; 6 GreaterThanEqual 23 i integral4$1000#
	cmp dword [rbp + 24], 1000
	jge malloc_test6$23

 malloc_test6$6:
	; 8 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test6$7:
	; 9 Parameter 64 signed int integral4$96#
	mov dword [rbp + 64], 96

 malloc_test6$8:
	; 10 Call 40 malloc 0
	mov qword [rbp + 40], malloc_test6$9
	mov [rbp + 48], rbp
	add rbp, 40
	jmp malloc

 malloc_test6$9:
	; 11 PostCall 40

 malloc_test6$10:
	; 12 GetReturnValue £temporary4775

 malloc_test6$11:
	; 13 Assign p £temporary4775
	mov [rbp + 40], rbx

 malloc_test6$12:
	; 14 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 malloc_test6$13:
	; 15 Parameter 72 string string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#
	mov qword [rbp + 72], @12031string_Index3A2025i2C20Pointer3A2025u2C20Stack20top3A2025u2C20Low20Heap3A2025u0A#

 malloc_test6$14:
	; 16 Parameter 80 signed int i
	mov eax, [rbp + 24]
	mov [rbp + 80], eax

 malloc_test6$15:
	; 17 Parameter 84 pointer p
	mov rax, [rbp + 40]
	mov [rbp + 84], rax

 malloc_test6$16:
	; 18 Parameter 92 unsigned int stackTop
	mov eax, [rbp + 28]
	mov [rbp + 92], eax

 malloc_test6$17:
	; 19 Dereference £temporary4776 lowHeapPtr 0
	mov rsi, [rbp + 32]

 malloc_test6$18:
	; 20 Parameter 96 unsigned int £temporary4776
	mov eax, [rsi]
	mov [rbp + 96], eax

 malloc_test6$19:
	; 21 Call 48 printf 20
	mov qword [rbp + 48], malloc_test6$20
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp printf

 malloc_test6$20:
	; 22 PostCall 48

 malloc_test6$21:
	; 24 Add i i integral4$1#
	inc dword [rbp + 24]

 malloc_test6$22:
	; 26 Jump 5
	jmp malloc_test6$5

 malloc_test6$23:
	; 28 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 malloc_test6$24:
	; 29 FunctionEnd malloc_test6
