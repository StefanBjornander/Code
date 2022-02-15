	global strcpy
	global strncpy
	global strcat
	global strncat
	global strcmp
	global strncmp
	global strchr
	global strrchr
	global strspn
	global strcspn
	global strpbrk
	global strstr
	global strlen
	global strerror
	global strtok
	global memcpy
	global memmove
	global memcmp
	global memchr
	global memset

	extern localeconv
	extern $StackTop


section .text

 strcpy:
	; 0 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcpy$1:
	; 2 IntegralToIntegral £temporary3267 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; 3 Add £temporary3268 source £temporary3267
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; 4 Dereference £temporary3269 £temporary3268 0

 strcpy$4:
	; 5 Equal 14 £temporary3269 integral1$0#
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; 7 IntegralToIntegral £temporary3272 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; 8 Add £temporary3273 target £temporary3272
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; 9 Dereference £temporary3274 £temporary3273 0

 strcpy$8:
	; 10 IntegralToIntegral £temporary3275 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; 11 Add £temporary3276 source £temporary3275
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; 12 Dereference £temporary3277 £temporary3276 0

 strcpy$11:
	; 13 Assign £temporary3274 £temporary3277
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; 15 Add index index integral4$1#
	inc dword [rbp + 40]

 strcpy$13:
	; 17 Jump 1
	jmp strcpy$1

 strcpy$14:
	; 18 IntegralToIntegral £temporary3278 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; 19 Add £temporary3279 target £temporary3278
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; 20 Dereference £temporary3280 £temporary3279 0

 strcpy$17:
	; 21 Assign £temporary3280 integral1$0#
	mov byte [rsi], 0

 strcpy$18:
	; 22 SetReturnValue

 strcpy$19:
	; 23 Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcpy$20:
	; 25 FunctionEnd strcpy

section .text

 strncpy:
	; 0 Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncpy$1:
	; 2 GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$15

 strncpy$2:
	; 4 IntegralToIntegral £temporary3282 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; 5 Add £temporary3283 source £temporary3282
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; 6 Dereference £temporary3284 £temporary3283 0

 strncpy$5:
	; 7 Equal 15 £temporary3284 integral1$0#
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; 9 IntegralToIntegral £temporary3288 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; 10 Add £temporary3289 target £temporary3288
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; 11 Dereference £temporary3290 £temporary3289 0

 strncpy$9:
	; 12 IntegralToIntegral £temporary3291 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; 13 Add £temporary3292 source £temporary3291
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; 14 Dereference £temporary3293 £temporary3292 0

 strncpy$12:
	; 15 Assign £temporary3290 £temporary3293
	mov al, [rdi]
	mov [rsi], al

 strncpy$13:
	; 17 Add index index integral4$1#
	inc dword [rbp + 44]

 strncpy$14:
	; 19 Jump 1
	jmp strncpy$1

 strncpy$15:
	; 21 GreaterThanEqual 22 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$22

 strncpy$16:
	; 23 IntegralToIntegral £temporary3296 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; 24 Add £temporary3297 target £temporary3296
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; 25 Dereference £temporary3298 £temporary3297 0

 strncpy$19:
	; 26 Assign £temporary3298 integral1$0#
	mov byte [rsi], 0

 strncpy$20:
	; 28 Add index index integral4$1#
	inc dword [rbp + 44]

 strncpy$21:
	; 30 Jump 15
	jmp strncpy$15

 strncpy$22:
	; 31 SetReturnValue

 strncpy$23:
	; 32 Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncpy$24:
	; 34 FunctionEnd strncpy

section .text

 strcat:
	; 0 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcat$1:
	; 1 Parameter 68 pointer target
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 strcat$2:
	; 2 Call 44 strlen 0
	mov qword [rbp + 44], strcat$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strcat$3:
	; 3 PostCall 44

 strcat$4:
	; 4 GetReturnValue £temporary3299

 strcat$5:
	; 5 Assign targetLength £temporary3299
	mov [rbp + 44], ebx

 strcat$6:
	; 6 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcat$7:
	; 8 IntegralToIntegral £temporary3300 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; 9 Add £temporary3301 source £temporary3300
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; 10 Dereference £temporary3302 £temporary3301 0

 strcat$10:
	; 11 Equal 21 £temporary3302 integral1$0#
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; 13 Add £temporary3305 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; 14 IntegralToIntegral £temporary3306 £temporary3305
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; 15 Add £temporary3307 target £temporary3306
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; 16 Dereference £temporary3308 £temporary3307 0

 strcat$15:
	; 17 IntegralToIntegral £temporary3309 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; 18 Add £temporary3310 source £temporary3309
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; 19 Dereference £temporary3311 £temporary3310 0

 strcat$18:
	; 20 Assign £temporary3308 £temporary3311
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; 22 Add index index integral4$1#
	inc dword [rbp + 40]

 strcat$20:
	; 24 Jump 7
	jmp strcat$7

 strcat$21:
	; 25 Add £temporary3312 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; 26 IntegralToIntegral £temporary3313 £temporary3312
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; 27 Add £temporary3314 target £temporary3313
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; 28 Dereference £temporary3315 £temporary3314 0

 strcat$25:
	; 29 Assign £temporary3315 integral1$0#
	mov byte [rsi], 0

 strcat$26:
	; 30 SetReturnValue

 strcat$27:
	; 31 Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcat$28:
	; 33 FunctionEnd strcat

section .text

 strncat:
	; 0 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strncat$1:
	; 1 Parameter 72 pointer target
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 strncat$2:
	; 2 Call 48 strlen 0
	mov qword [rbp + 48], strncat$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

 strncat$3:
	; 3 PostCall 48

 strncat$4:
	; 4 GetReturnValue £temporary3316

 strncat$5:
	; 5 Assign targetLength £temporary3316
	mov [rbp + 48], ebx

 strncat$6:
	; 6 Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncat$7:
	; 8 Subtract £temporary3317 size integral4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; 9 GreaterThanEqual 23 index £temporary3317
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; 11 IntegralToIntegral £temporary3319 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; 12 Add £temporary3320 source £temporary3319
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; 13 Dereference £temporary3321 £temporary3320 0

 strncat$12:
	; 14 Equal 23 £temporary3321 integral1$0#
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; 16 Add £temporary3325 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; 17 IntegralToIntegral £temporary3326 £temporary3325
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; 18 Add £temporary3327 target £temporary3326
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; 19 Dereference £temporary3328 £temporary3327 0

 strncat$17:
	; 20 IntegralToIntegral £temporary3329 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; 21 Add £temporary3330 source £temporary3329
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; 22 Dereference £temporary3331 £temporary3330 0

 strncat$20:
	; 23 Assign £temporary3328 £temporary3331
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; 25 Add index index integral4$1#
	inc dword [rbp + 44]

 strncat$22:
	; 27 Jump 7
	jmp strncat$7

 strncat$23:
	; 28 Add £temporary3332 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; 29 Subtract £temporary3333 £temporary3332 integral4$1#
	dec eax

 strncat$25:
	; 30 IntegralToIntegral £temporary3334 £temporary3333
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; 31 Add £temporary3335 target £temporary3334
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; 32 Dereference £temporary3336 £temporary3335 0

 strncat$28:
	; 33 Assign £temporary3336 integral1$0#
	mov byte [rsi], 0

 strncat$29:
	; 34 SetReturnValue

 strncat$30:
	; 35 Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncat$31:
	; 37 FunctionEnd strncat

section .text

 strcmp:
	; 0 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcmp$1:
	; 3 IntegralToIntegral £temporary3338 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; 4 Add £temporary3339 left £temporary3338
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; 5 Dereference £temporary3340 £temporary3339 0

 strcmp$4:
	; 6 NotEqual 11 £temporary3340 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$5:
	; 8 IntegralToIntegral £temporary3342 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; 9 Add £temporary3343 right £temporary3342
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; 10 Dereference £temporary3344 £temporary3343 0

 strcmp$8:
	; 11 NotEqual 11 £temporary3344 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$11

 strcmp$9:
	; 14 SetReturnValue

 strcmp$10:
	; 15 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$11:
	; 18 IntegralToIntegral £temporary3347 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$12:
	; 19 Add £temporary3348 left £temporary3347
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$13:
	; 20 Dereference £temporary3349 £temporary3348 0

 strcmp$14:
	; 21 IntegralToIntegral £temporary3350 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$15:
	; 22 Add £temporary3351 right £temporary3350
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$16:
	; 23 Dereference £temporary3352 £temporary3351 0

 strcmp$17:
	; 24 GreaterThanEqual 20 £temporary3349 £temporary3352
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$20

 strcmp$18:
	; 27 SetReturnValue

 strcmp$19:
	; 28 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$20:
	; 31 IntegralToIntegral £temporary3354 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$21:
	; 32 Add £temporary3355 left £temporary3354
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$22:
	; 33 Dereference £temporary3356 £temporary3355 0

 strcmp$23:
	; 34 IntegralToIntegral £temporary3357 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$24:
	; 35 Add £temporary3358 right £temporary3357
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$25:
	; 36 Dereference £temporary3359 £temporary3358 0

 strcmp$26:
	; 37 LessThanEqual 29 £temporary3356 £temporary3359
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$29

 strcmp$27:
	; 40 SetReturnValue

 strcmp$28:
	; 41 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$29:
	; 48 Add index index integral4$1#
	inc dword [rbp + 40]

 strcmp$30:
	; 50 Jump 1
	jmp strcmp$1

 strcmp$31:
	; 52 FunctionEnd strcmp

section .text

 strncmp:
	; 0 Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncmp$1:
	; 2 GreaterThanEqual 32 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$32

 strncmp$2:
	; 4 IntegralToIntegral £temporary3370 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; 5 Add £temporary3371 left £temporary3370
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; 6 Dereference £temporary3372 £temporary3371 0

 strncmp$5:
	; 7 NotEqual 12 £temporary3372 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$6:
	; 9 IntegralToIntegral £temporary3374 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; 10 Add £temporary3375 right £temporary3374
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; 11 Dereference £temporary3376 £temporary3375 0

 strncmp$9:
	; 12 NotEqual 12 £temporary3376 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$12

 strncmp$10:
	; 15 SetReturnValue

 strncmp$11:
	; 16 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$12:
	; 19 IntegralToIntegral £temporary3379 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$13:
	; 20 Add £temporary3380 left £temporary3379
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$14:
	; 21 Dereference £temporary3381 £temporary3380 0

 strncmp$15:
	; 22 IntegralToIntegral £temporary3382 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$16:
	; 23 Add £temporary3383 right £temporary3382
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$17:
	; 24 Dereference £temporary3384 £temporary3383 0

 strncmp$18:
	; 25 GreaterThanEqual 21 £temporary3381 £temporary3384
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$21

 strncmp$19:
	; 28 SetReturnValue

 strncmp$20:
	; 29 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$21:
	; 32 IntegralToIntegral £temporary3386 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$22:
	; 33 Add £temporary3387 left £temporary3386
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$23:
	; 34 Dereference £temporary3388 £temporary3387 0

 strncmp$24:
	; 35 IntegralToIntegral £temporary3389 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$25:
	; 36 Add £temporary3390 right £temporary3389
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$26:
	; 37 Dereference £temporary3391 £temporary3390 0

 strncmp$27:
	; 38 LessThanEqual 30 £temporary3388 £temporary3391
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$30

 strncmp$28:
	; 41 SetReturnValue

 strncmp$29:
	; 42 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$30:
	; 49 Add index index integral4$1#
	inc dword [rbp + 44]

 strncmp$31:
	; 51 Jump 1
	jmp strncmp$1

 strncmp$32:
	; 52 SetReturnValue

 strncmp$33:
	; 53 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$34:
	; 55 FunctionEnd strncmp

section .text

 strchr:
	; 0 IntegralToIntegral £temporary3399 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; 1 Assign c £temporary3399
	mov [rbp + 40], al

 strchr$2:
	; 2 Assign index integral4$0#
	mov dword [rbp + 36], 0

 strchr$3:
	; 4 IntegralToIntegral £temporary3400 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; 5 Add £temporary3401 text £temporary3400
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; 6 Dereference £temporary3402 £temporary3401 0

 strchr$6:
	; 7 Equal 19 £temporary3402 integral1$0#
	cmp byte [rsi], 0
	je strchr$19

 strchr$7:
	; 9 IntegralToIntegral £temporary3405 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; 10 Add £temporary3406 text £temporary3405
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; 11 Dereference £temporary3407 £temporary3406 0

 strchr$10:
	; 12 NotEqual 17 £temporary3407 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$17

 strchr$11:
	; 15 IntegralToIntegral £temporary3409 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; 16 Add £temporary3410 text £temporary3409
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; 17 Dereference £temporary3411 £temporary3410 0

 strchr$14:
	; 18 Address £temporary3412 £temporary3411

 strchr$15:
	; 19 SetReturnValue

 strchr$16:
	; 20 Return £temporary3412
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$17:
	; 25 Add index index integral4$1#
	inc dword [rbp + 36]

 strchr$18:
	; 27 Jump 3
	jmp strchr$3

 strchr$19:
	; 28 SetReturnValue

 strchr$20:
	; 29 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$21:
	; 31 FunctionEnd strchr

section .text

 strrchr:
	; 0 Assign result integral8$0#
	mov qword [rbp + 40], 0

 strrchr$1:
	; 1 IntegralToIntegral £temporary3415 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; 2 Assign c £temporary3415
	mov [rbp + 48], al

 strrchr$3:
	; 3 Assign index integral4$0#
	mov dword [rbp + 36], 0

 strrchr$4:
	; 5 IntegralToIntegral £temporary3416 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; 6 Add £temporary3417 text £temporary3416
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; 7 Dereference £temporary3418 £temporary3417 0

 strrchr$7:
	; 8 Equal 19 £temporary3418 integral1$0#
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; 10 IntegralToIntegral £temporary3421 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; 11 Add £temporary3422 text £temporary3421
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; 12 Dereference £temporary3423 £temporary3422 0

 strrchr$11:
	; 13 NotEqual 17 £temporary3423 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; 16 IntegralToIntegral £temporary3425 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; 17 Add £temporary3426 text £temporary3425
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; 18 Dereference £temporary3427 £temporary3426 0

 strrchr$15:
	; 19 Address £temporary3428 £temporary3427

 strrchr$16:
	; 20 Assign result £temporary3428
	mov [rbp + 40], rsi

 strrchr$17:
	; 25 Add index index integral4$1#
	inc dword [rbp + 36]

 strrchr$18:
	; 27 Jump 4
	jmp strrchr$4

 strrchr$19:
	; 28 SetReturnValue

 strrchr$20:
	; 29 Return result
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strrchr$21:
	; 31 FunctionEnd strrchr

section .text

 strspn:
	; 0 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strspn$1:
	; 2 IntegralToIntegral £temporary3431 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; 3 Add £temporary3432 mainString £temporary3431
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; 4 Dereference £temporary3433 £temporary3432 0

 strspn$4:
	; 5 Equal 20 £temporary3433 integral1$0#
	cmp byte [rsi], 0
	je strspn$20

 strspn$5:
	; 7 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; 8 Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; 9 IntegralToIntegral £temporary3436 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; 10 Add £temporary3437 mainString £temporary3436
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; 11 Dereference £temporary3438 £temporary3437 0

 strspn$10:
	; 12 IntegralToIntegral £temporary3439 £temporary3438
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; 13 Parameter 76 signed int £temporary3439
	mov [rbp + 76], eax

 strspn$12:
	; 14 Call 44 strchr 0
	mov qword [rbp + 44], strspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strspn$13:
	; 15 PostCall 44

 strspn$14:
	; 16 GetReturnValue £temporary3440

 strspn$15:
	; 17 NotEqual 18 £temporary3440 integral8$0#
	cmp rbx, 0
	jne strspn$18

 strspn$16:
	; 20 SetReturnValue

 strspn$17:
	; 21 Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$18:
	; 26 Add index index integral4$1#
	inc dword [rbp + 40]

 strspn$19:
	; 28 Jump 1
	jmp strspn$1

 strspn$20:
	; 29 SetReturnValue

 strspn$21:
	; 30 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$22:
	; 32 FunctionEnd strspn

section .text

 strcspn:
	; 0 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcspn$1:
	; 2 IntegralToIntegral £temporary3444 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; 3 Add £temporary3445 mainString £temporary3444
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; 4 Dereference £temporary3446 £temporary3445 0

 strcspn$4:
	; 5 Equal 20 £temporary3446 integral1$0#
	cmp byte [rsi], 0
	je strcspn$20

 strcspn$5:
	; 7 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; 8 Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; 9 IntegralToIntegral £temporary3449 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; 10 Add £temporary3450 mainString £temporary3449
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; 11 Dereference £temporary3451 £temporary3450 0

 strcspn$10:
	; 12 IntegralToIntegral £temporary3452 £temporary3451
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; 13 Parameter 76 signed int £temporary3452
	mov [rbp + 76], eax

 strcspn$12:
	; 14 Call 44 strchr 0
	mov qword [rbp + 44], strcspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strcspn$13:
	; 15 PostCall 44

 strcspn$14:
	; 16 GetReturnValue £temporary3453

 strcspn$15:
	; 17 Equal 18 £temporary3453 integral8$0#
	cmp rbx, 0
	je strcspn$18

 strcspn$16:
	; 20 SetReturnValue

 strcspn$17:
	; 21 Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$18:
	; 26 Add index index integral4$1#
	inc dword [rbp + 40]

 strcspn$19:
	; 28 Jump 1
	jmp strcspn$1

 strcspn$20:
	; 29 SetReturnValue

 strcspn$21:
	; 30 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$22:
	; 32 FunctionEnd strcspn

section .text

 strpbrk:
	; 0 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strpbrk$1:
	; 2 IntegralToIntegral £temporary3457 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; 3 Add £temporary3458 mainString £temporary3457
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; 4 Dereference £temporary3459 £temporary3458 0

 strpbrk$4:
	; 5 Equal 24 £temporary3459 integral1$0#
	cmp byte [rsi], 0
	je strpbrk$24

 strpbrk$5:
	; 7 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; 8 Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; 9 IntegralToIntegral £temporary3462 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; 10 Add £temporary3463 mainString £temporary3462
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; 11 Dereference £temporary3464 £temporary3463 0

 strpbrk$10:
	; 12 IntegralToIntegral £temporary3465 £temporary3464
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; 13 Parameter 76 signed int £temporary3465
	mov [rbp + 76], eax

 strpbrk$12:
	; 14 Call 44 strchr 0
	mov qword [rbp + 44], strpbrk$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strpbrk$13:
	; 15 PostCall 44

 strpbrk$14:
	; 16 GetReturnValue £temporary3466

 strpbrk$15:
	; 17 Equal 22 £temporary3466 integral8$0#
	cmp rbx, 0
	je strpbrk$22

 strpbrk$16:
	; 20 IntegralToIntegral £temporary3468 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; 21 Add £temporary3469 mainString £temporary3468
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; 22 Dereference £temporary3470 £temporary3469 0

 strpbrk$19:
	; 23 Address £temporary3471 £temporary3470

 strpbrk$20:
	; 24 SetReturnValue

 strpbrk$21:
	; 25 Return £temporary3471
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$22:
	; 30 Add index index integral4$1#
	inc dword [rbp + 40]

 strpbrk$23:
	; 32 Jump 1
	jmp strpbrk$1

 strpbrk$24:
	; 33 SetReturnValue

 strpbrk$25:
	; 34 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$26:
	; 36 FunctionEnd strpbrk

section .text

 strstr:
	; 0 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$1:
	; 1 Parameter 68 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strstr$2:
	; 2 Call 44 strlen 0
	mov qword [rbp + 44], strstr$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strstr$3:
	; 3 PostCall 44

 strstr$4:
	; 4 GetReturnValue £temporary3474

 strstr$5:
	; 5 Assign subStringSize £temporary3474
	mov [rbp + 44], ebx

 strstr$6:
	; 6 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strstr$7:
	; 8 IntegralToIntegral £temporary3475 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; 9 Add £temporary3476 mainString £temporary3475
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; 10 Dereference £temporary3477 £temporary3476 0

 strstr$10:
	; 11 Equal 29 £temporary3477 integral1$0#
	cmp byte [rsi], 0
	je strstr$29

 strstr$11:
	; 13 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; 14 IntegralToIntegral £temporary3480 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; 15 Add £temporary3481 mainString £temporary3480
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; 16 Parameter 72 pointer £temporary3481
	mov [rbp + 72], rbx

 strstr$15:
	; 17 Parameter 80 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 strstr$16:
	; 18 Parameter 88 signed int subStringSize
	mov eax, [rbp + 44]
	mov [rbp + 88], eax

 strstr$17:
	; 19 Call 48 strncmp 0
	mov qword [rbp + 48], strstr$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strncmp

 strstr$18:
	; 20 PostCall 48

 strstr$19:
	; 21 GetReturnValue £temporary3482

 strstr$20:
	; 22 NotEqual 27 £temporary3482 integral4$0#
	cmp ebx, 0
	jne strstr$27

 strstr$21:
	; 25 IntegralToIntegral £temporary3484 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; 26 Add £temporary3485 mainString £temporary3484
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; 27 Dereference £temporary3486 £temporary3485 0

 strstr$24:
	; 28 Address £temporary3487 £temporary3486

 strstr$25:
	; 29 SetReturnValue

 strstr$26:
	; 30 Return £temporary3487
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$27:
	; 35 Add index index integral4$1#
	inc dword [rbp + 40]

 strstr$28:
	; 37 Jump 7
	jmp strstr$7

 strstr$29:
	; 38 SetReturnValue

 strstr$30:
	; 39 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$31:
	; 41 FunctionEnd strstr

section .text

 strlen:
	; 0 Assign index integral4$0#
	mov dword [rbp + 32], 0

 strlen$1:
	; 2 IntegralToIntegral £temporary3490 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; 3 Add £temporary3491 string £temporary3490
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; 4 Dereference £temporary3492 £temporary3491 0

 strlen$4:
	; 5 Equal 7 £temporary3492 integral1$0#
	cmp byte [rsi], 0
	je strlen$7

 strlen$5:
	; 9 Add index index integral4$1#
	inc dword [rbp + 32]

 strlen$6:
	; 11 Jump 1
	jmp strlen$1

 strlen$7:
	; 12 SetReturnValue

 strlen$8:
	; 13 Return index
	mov ebx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strlen$9:
	; 15 FunctionEnd strlen

section .data

@7425integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 strerror:
	; 0 PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strerror$1:
	; 1 Call 28 localeconv 0
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; 2 PostCall 28

 strerror$3:
	; 3 GetReturnValue £temporary3495

 strerror$4:
	; 4 Assign localeConvPtr £temporary3495
	mov [rbp + 28], rbx

 strerror$5:
	; 5 Equal 15 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je strerror$15

 strerror$6:
	; 8 Dereference £temporary3497 localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; 9 Assign messageList £temporary3497.messageList
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; 10 Equal 15 messageList integral8$0#
	cmp qword [rbp + 36], 0
	je strerror$15

 strerror$9:
	; 13 Multiply £temporary3499 errno integral4$8#
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@7425integral4$8#]

 strerror$10:
	; 14 IntegralToIntegral £temporary3500 £temporary3499
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; 15 Add £temporary3501 messageList £temporary3500
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; 16 Dereference £temporary3502 £temporary3501 0

 strerror$13:
	; 17 SetReturnValue

 strerror$14:
	; 18 Return £temporary3502
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$15:
	; 25 SetReturnValue

 strerror$16:
	; 26 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$17:
	; 28 FunctionEnd strerror

section .data

@7430$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; 0 Equal 42 string integral8$0#
	cmp qword [rbp + 24], 0
	je strtok$42

 strtok$1:
	; 4 Dereference £temporary3509 £temporary3508 0
	mov rsi, [rbp + 24]

 strtok$2:
	; 5 NotEqual 5 £temporary3509 integral1$0#
	cmp byte [rsi], 0
	jne strtok$5

 strtok$3:
	; 8 SetReturnValue

 strtok$4:
	; 9 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$5:
	; 13 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strtok$6:
	; 15 IntegralToIntegral £temporary3513 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$7:
	; 16 Add £temporary3514 string £temporary3513
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$8:
	; 17 Dereference £temporary3515 £temporary3514 0

 strtok$9:
	; 18 Equal 35 £temporary3515 integral1$0#
	cmp byte [rsi], 0
	je strtok$35

 strtok$10:
	; 20 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$11:
	; 21 Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$12:
	; 22 IntegralToIntegral £temporary3518 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$13:
	; 23 Add £temporary3519 string £temporary3518
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$14:
	; 24 Dereference £temporary3520 £temporary3519 0

 strtok$15:
	; 25 IntegralToIntegral £temporary3521 £temporary3520
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$16
	neg al
	neg eax

 strtok$16:
	; 26 Parameter 84 signed int £temporary3521
	mov [rbp + 84], eax

 strtok$17:
	; 27 Call 52 strchr 0
	mov qword [rbp + 52], strtok$18
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$18:
	; 28 PostCall 52

 strtok$19:
	; 29 GetReturnValue £temporary3522

 strtok$20:
	; 30 Equal 33 £temporary3522 integral8$0#
	cmp rbx, 0
	je strtok$33

 strtok$21:
	; 33 IntegralToIntegral £temporary3524 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$22:
	; 34 Add £temporary3525 string £temporary3524
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$23:
	; 35 Dereference £temporary3526 £temporary3525 0

 strtok$24:
	; 36 Assign £temporary3526 integral1$0#
	mov byte [rsi], 0

 strtok$25:
	; 37 Add £temporary3527 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$26:
	; 38 IntegralToIntegral £temporary3528 £temporary3527
	mov rbx, 4294967295
	and rax, rbx

 strtok$27:
	; 39 Add £temporary3529 string £temporary3528
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$28:
	; 40 Dereference £temporary3530 £temporary3529 0

 strtok$29:
	; 41 Address £temporary3531 £temporary3530

 strtok$30:
	; 42 Assign token £temporary3531
	mov [@7430$token], rsi

 strtok$31:
	; 43 SetReturnValue

 strtok$32:
	; 44 Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$33:
	; 49 Add index index integral4$1#
	inc dword [rbp + 40]

 strtok$34:
	; 51 Jump 6
	jmp strtok$6

 strtok$35:
	; 52 IntegralToIntegral £temporary3534 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$36:
	; 53 Add £temporary3535 string £temporary3534
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$37:
	; 54 Dereference £temporary3536 £temporary3535 0

 strtok$38:
	; 55 Address £temporary3537 £temporary3536

 strtok$39:
	; 56 Assign token £temporary3537
	mov [@7430$token], rsi

 strtok$40:
	; 57 SetReturnValue

 strtok$41:
	; 58 Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$42:
	; 61 NotEqual 45 token integral8$0#
	cmp qword [@7430$token], 0
	jne strtok$45

 strtok$43:
	; 64 SetReturnValue

 strtok$44:
	; 65 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$45:
	; 69 Dereference £temporary3540 £temporary3539 0
	mov rsi, [@7430$token]

 strtok$46:
	; 70 NotEqual 49 £temporary3540 integral1$0#
	cmp byte [rsi], 0
	jne strtok$49

 strtok$47:
	; 73 SetReturnValue

 strtok$48:
	; 74 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$49:
	; 78 Assign index integral4$0#
	mov dword [rbp + 40], 0

 strtok$50:
	; 80 IntegralToIntegral £temporary3544 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$51:
	; 81 Add £temporary3545 token £temporary3544
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$52:
	; 82 Dereference £temporary3546 £temporary3545 0

 strtok$53:
	; 83 Equal 80 £temporary3546 integral1$0#
	cmp byte [rsi], 0
	je strtok$80

 strtok$54:
	; 85 PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$55:
	; 86 Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$56:
	; 87 IntegralToIntegral £temporary3549 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$57:
	; 88 Add £temporary3550 token £temporary3549
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$58:
	; 89 Dereference £temporary3551 £temporary3550 0

 strtok$59:
	; 90 IntegralToIntegral £temporary3552 £temporary3551
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$60
	neg al
	neg eax

 strtok$60:
	; 91 Parameter 84 signed int £temporary3552
	mov [rbp + 84], eax

 strtok$61:
	; 92 Call 52 strchr 0
	mov qword [rbp + 52], strtok$62
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$62:
	; 93 PostCall 52

 strtok$63:
	; 94 GetReturnValue £temporary3553

 strtok$64:
	; 95 Equal 78 £temporary3553 integral8$0#
	cmp rbx, 0
	je strtok$78

 strtok$65:
	; 98 Assign tokenStart2 token
	mov rax, [@7430$token]
	mov [rbp + 52], rax

 strtok$66:
	; 99 IntegralToIntegral £temporary3555 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; 100 Add £temporary3556 token £temporary3555
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$68:
	; 101 Dereference £temporary3557 £temporary3556 0

 strtok$69:
	; 102 Assign £temporary3557 integral1$0#
	mov byte [rsi], 0

 strtok$70:
	; 103 Add £temporary3558 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$71:
	; 104 IntegralToIntegral £temporary3559 £temporary3558
	mov rbx, 4294967295
	and rax, rbx

 strtok$72:
	; 105 Add £temporary3560 token £temporary3559
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$73:
	; 106 Dereference £temporary3561 £temporary3560 0

 strtok$74:
	; 107 Address £temporary3562 £temporary3561

 strtok$75:
	; 108 Assign token £temporary3562
	mov [@7430$token], rsi

 strtok$76:
	; 109 SetReturnValue

 strtok$77:
	; 110 Return tokenStart2
	mov rbx, [rbp + 52]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$78:
	; 115 Add index index integral4$1#
	inc dword [rbp + 40]

 strtok$79:
	; 117 Jump 50
	jmp strtok$50

 strtok$80:
	; 118 Assign tokenStart token
	mov rax, [@7430$token]
	mov [rbp + 44], rax

 strtok$81:
	; 119 IntegralToIntegral £temporary3565 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$82:
	; 120 Add £temporary3566 token £temporary3565
	mov rsi, [@7430$token]
	add rsi, rax

 strtok$83:
	; 121 Dereference £temporary3567 £temporary3566 0

 strtok$84:
	; 122 Address £temporary3568 £temporary3567

 strtok$85:
	; 123 Assign token £temporary3568
	mov [@7430$token], rsi

 strtok$86:
	; 124 SetReturnValue

 strtok$87:
	; 125 Return tokenStart
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$88:
	; 129 FunctionEnd strtok

section .text

 memcpy:
	; 0 IntegralToIntegral £temporary3573 target
	mov rax, [rbp + 24]

 memcpy$1:
	; 1 Assign charTarget £temporary3573
	mov [rbp + 44], rax

 memcpy$2:
	; 2 IntegralToIntegral £temporary3574 source
	mov rax, [rbp + 32]

 memcpy$3:
	; 3 Assign charSource £temporary3574
	mov [rbp + 52], rax

 memcpy$4:
	; 4 Assign index integral4$0#
	mov dword [rbp + 60], 0

 memcpy$5:
	; 6 GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

 memcpy$6:
	; 8 IntegralToIntegral £temporary3577 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; 9 Add £temporary3578 charTarget £temporary3577
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; 10 Dereference £temporary3579 £temporary3578 0

 memcpy$9:
	; 11 IntegralToIntegral £temporary3580 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; 12 Add £temporary3581 charSource £temporary3580
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; 13 Dereference £temporary3582 £temporary3581 0

 memcpy$12:
	; 14 Assign £temporary3579 £temporary3582
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; 16 Add index index integral4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; 18 Jump 5
	jmp memcpy$5

 memcpy$15:
	; 19 IntegralToIntegral £temporary3583 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; 20 SetReturnValue

 memcpy$17:
	; 21 Return £temporary3583
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$18:
	; 23 FunctionEnd memcpy

section .text

 memmove:
	; 0 IntegralToIntegral £temporary3584 target
	mov rax, [rbp + 24]

 memmove$1:
	; 1 Assign charTarget £temporary3584
	mov [rbp + 44], rax

 memmove$2:
	; 2 IntegralToIntegral £temporary3585 source
	mov rax, [rbp + 32]

 memmove$3:
	; 3 Assign charSource £temporary3585
	mov [rbp + 52], rax

 memmove$4:
	; 4 GreaterThanEqual 16 source target
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

 memmove$5:
	; 7 Subtract index size integral4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 memmove$6:
	; 10 LessThan 27 index integral4$0#
	cmp dword [rbp + 60], 0
	jl memmove$27

 memmove$7:
	; 12 IntegralToIntegral £temporary3590 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; 13 Add £temporary3591 charTarget £temporary3590
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; 14 Dereference £temporary3592 £temporary3591 0

 memmove$10:
	; 15 IntegralToIntegral £temporary3593 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; 16 Add £temporary3594 charSource £temporary3593
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; 17 Dereference £temporary3595 £temporary3594 0

 memmove$13:
	; 18 Assign £temporary3592 £temporary3595
	mov al, [rdi]
	mov [rsi], al

 memmove$14:
	; 20 Subtract index index integral4$1#
	dec dword [rbp + 60]

 memmove$15:
	; 22 Jump 6
	jmp memmove$6

 memmove$16:
	; 25 Assign index integral4$0#
	mov dword [rbp + 60], 0

 memmove$17:
	; 27 GreaterThanEqual 27 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; 29 IntegralToIntegral £temporary3598 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; 30 Add £temporary3599 charTarget £temporary3598
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; 31 Dereference £temporary3600 £temporary3599 0

 memmove$21:
	; 32 IntegralToIntegral £temporary3601 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; 33 Add £temporary3602 charSource £temporary3601
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; 34 Dereference £temporary3603 £temporary3602 0

 memmove$24:
	; 35 Assign £temporary3600 £temporary3603
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; 37 Add index index integral4$1#
	inc dword [rbp + 60]

 memmove$26:
	; 39 Jump 17
	jmp memmove$17

 memmove$27:
	; 41 IntegralToIntegral £temporary3606 target
	mov rbx, [rbp + 24]

 memmove$28:
	; 42 SetReturnValue

 memmove$29:
	; 43 Return £temporary3606
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$30:
	; 45 FunctionEnd memmove

section .text

 memcmp:
	; 0 IntegralToIntegral £temporary3607 left
	mov rax, [rbp + 24]

 memcmp$1:
	; 1 Assign charLeft £temporary3607
	mov [rbp + 44], rax

 memcmp$2:
	; 2 IntegralToIntegral £temporary3608 right
	mov rax, [rbp + 32]

 memcmp$3:
	; 3 Assign charRight £temporary3608
	mov [rbp + 52], rax

 memcmp$4:
	; 4 Assign index integral4$0#
	mov dword [rbp + 60], 0

 memcmp$5:
	; 6 GreaterThanEqual 26 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$26

 memcmp$6:
	; 8 IntegralToIntegral £temporary3611 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; 9 Add £temporary3612 charLeft £temporary3611
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; 10 Dereference £temporary3613 £temporary3612 0

 memcmp$9:
	; 11 IntegralToIntegral £temporary3614 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; 12 Add £temporary3615 charRight £temporary3614
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; 13 Dereference £temporary3616 £temporary3615 0

 memcmp$12:
	; 14 GreaterThanEqual 15 £temporary3613 £temporary3616
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$15

 memcmp$13:
	; 17 SetReturnValue

 memcmp$14:
	; 18 Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$15:
	; 21 IntegralToIntegral £temporary3618 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$16:
	; 22 Add £temporary3619 charLeft £temporary3618
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$17:
	; 23 Dereference £temporary3620 £temporary3619 0

 memcmp$18:
	; 24 IntegralToIntegral £temporary3621 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$19:
	; 25 Add £temporary3622 charRight £temporary3621
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$20:
	; 26 Dereference £temporary3623 £temporary3622 0

 memcmp$21:
	; 27 LessThanEqual 24 £temporary3620 £temporary3623
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$24

 memcmp$22:
	; 30 SetReturnValue

 memcmp$23:
	; 31 Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$24:
	; 37 Add index index integral4$1#
	inc dword [rbp + 60]

 memcmp$25:
	; 39 Jump 5
	jmp memcmp$5

 memcmp$26:
	; 40 SetReturnValue

 memcmp$27:
	; 41 Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$28:
	; 43 FunctionEnd memcmp

section .text

 memchr:
	; 0 IntegralToIntegral £temporary3629 block
	mov rax, [rbp + 24]

 memchr$1:
	; 1 Assign charBlock £temporary3629
	mov [rbp + 44], rax

 memchr$2:
	; 2 IntegralToIntegral £temporary3630 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; 3 Assign c £temporary3630
	mov [rbp + 52], al

 memchr$4:
	; 4 Assign index integral4$0#
	mov dword [rbp + 40], 0

 memchr$5:
	; 6 GreaterThanEqual 19 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$19

 memchr$6:
	; 8 IntegralToIntegral £temporary3633 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; 9 Add £temporary3634 charBlock £temporary3633
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; 10 Dereference £temporary3635 £temporary3634 0

 memchr$9:
	; 11 NotEqual 17 £temporary3635 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$17

 memchr$10:
	; 14 IntegralToIntegral £temporary3637 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; 15 Add £temporary3638 charBlock £temporary3637
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; 16 Dereference £temporary3639 £temporary3638 0

 memchr$13:
	; 17 Address £temporary3640 £temporary3639

 memchr$14:
	; 18 IntegralToIntegral £temporary3641 £temporary3640

 memchr$15:
	; 19 SetReturnValue

 memchr$16:
	; 20 Return £temporary3641
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$17:
	; 25 Add index index integral4$1#
	inc dword [rbp + 40]

 memchr$18:
	; 27 Jump 5
	jmp memchr$5

 memchr$19:
	; 28 SetReturnValue

 memchr$20:
	; 29 Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$21:
	; 31 FunctionEnd memchr

section .text

 memset:
	; 0 IntegralToIntegral £temporary3644 block
	mov rax, [rbp + 24]

 memset$1:
	; 1 Assign charBlock £temporary3644
	mov [rbp + 40], rax

 memset$2:
	; 2 IntegralToIntegral £temporary3645 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; 3 Assign c £temporary3645
	mov [rbp + 48], al

 memset$4:
	; 4 Assign index integral4$0#
	mov dword [rbp + 49], 0

 memset$5:
	; 6 GreaterThanEqual 12 index size
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

 memset$6:
	; 8 IntegralToIntegral £temporary3648 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; 9 Add £temporary3649 charBlock £temporary3648
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; 10 Dereference £temporary3650 £temporary3649 0

 memset$9:
	; 11 Assign £temporary3650 c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; 13 Add index index integral4$1#
	inc dword [rbp + 49]

 memset$11:
	; 15 Jump 5
	jmp memset$5

 memset$12:
	; 16 SetReturnValue

 memset$13:
	; 17 Return block
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memset$14:
	; 19 FunctionEnd memset
