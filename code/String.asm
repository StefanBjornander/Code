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
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcpy$1:
	; IntegralToIntegral £temporary3434 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; Add £temporary3435 source £temporary3434
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary3436 £temporary3435 0

 strcpy$4:
	; Equal 14 £temporary3436 integral1$0#
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary3440 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; Add £temporary3441 target £temporary3440
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary3442 £temporary3441 0

 strcpy$8:
	; IntegralToIntegral £temporary3444 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; Add £temporary3445 source £temporary3444
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary3446 £temporary3445 0

 strcpy$11:
	; Assign £temporary3442 £temporary3446
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary3448 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; Add £temporary3449 target £temporary3448
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary3450 £temporary3449 0

 strcpy$17:
	; Assign £temporary3450 integral1$0#
	mov byte [rsi], 0

 strcpy$18:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcpy$19:
	; FunctionEnd strcpy

section .text

 strncpy:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncpy$1:
	; GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$15

 strncpy$2:
	; IntegralToIntegral £temporary3453 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; Add £temporary3454 source £temporary3453
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3455 £temporary3454 0

 strncpy$5:
	; Equal 15 £temporary3455 integral1$0#
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3460 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; Add £temporary3461 target £temporary3460
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3462 £temporary3461 0

 strncpy$9:
	; IntegralToIntegral £temporary3464 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; Add £temporary3465 source £temporary3464
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3466 £temporary3465 0

 strncpy$12:
	; Assign £temporary3462 £temporary3466
	mov al, [rdi]
	mov [rsi], al

 strncpy$13:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncpy$14:
	; Jump 1
	jmp strncpy$1

 strncpy$15:
	; GreaterThanEqual 22 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncpy$22

 strncpy$16:
	; IntegralToIntegral £temporary3470 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; Add £temporary3471 target £temporary3470
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3472 £temporary3471 0

 strncpy$19:
	; Assign £temporary3472 integral1$0#
	mov byte [rsi], 0

 strncpy$20:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncpy$21:
	; Jump 15
	jmp strncpy$15

 strncpy$22:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncpy$23:
	; FunctionEnd strncpy

section .text

 strcat:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcat$1:
	; Parameter 68 pointer target
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 strcat$2:
	; Call 44 strlen 0
	mov qword [rbp + 44], strcat$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strcat$3:
	; PostCall 44

 strcat$4:
	; GetReturnValue £temporary3473

 strcat$5:
	; Assign targetLength £temporary3473
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3475 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; Add £temporary3476 source £temporary3475
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3477 £temporary3476 0

 strcat$10:
	; Equal 21 £temporary3477 integral1$0#
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; Add £temporary3481 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3482 £temporary3481
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; Add £temporary3483 target £temporary3482
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3484 £temporary3483 0

 strcat$15:
	; IntegralToIntegral £temporary3486 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; Add £temporary3487 source £temporary3486
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3488 £temporary3487 0

 strcat$18:
	; Assign £temporary3484 £temporary3488
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; Add £temporary3490 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3491 £temporary3490
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; Add £temporary3492 target £temporary3491
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3493 £temporary3492 0

 strcat$25:
	; Assign £temporary3493 integral1$0#
	mov byte [rsi], 0

 strcat$26:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcat$27:
	; FunctionEnd strcat

section .text

 strncat:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strncat$1:
	; Parameter 72 pointer target
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 strncat$2:
	; Call 48 strlen 0
	mov qword [rbp + 48], strncat$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strlen

 strncat$3:
	; PostCall 48

 strncat$4:
	; GetReturnValue £temporary3494

 strncat$5:
	; Assign targetLength £temporary3494
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncat$7:
	; Subtract £temporary3495 size integral4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary3495
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3498 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; Add £temporary3499 source £temporary3498
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3500 £temporary3499 0

 strncat$12:
	; Equal 23 £temporary3500 integral1$0#
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; Add £temporary3505 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3506 £temporary3505
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; Add £temporary3507 target £temporary3506
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3508 £temporary3507 0

 strncat$17:
	; IntegralToIntegral £temporary3510 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; Add £temporary3511 source £temporary3510
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3512 £temporary3511 0

 strncat$20:
	; Assign £temporary3508 £temporary3512
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; Add £temporary3513 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; Subtract £temporary3515 £temporary3513 integral4$1#
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3516 £temporary3515
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; Add £temporary3517 target £temporary3516
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3518 £temporary3517 0

 strncat$28:
	; Assign £temporary3518 integral1$0#
	mov byte [rsi], 0

 strncat$29:
	; Return target
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncat$30:
	; FunctionEnd strncat

section .text

 strcmp:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcmp$1:
	; IntegralToIntegral £temporary3521 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; Add £temporary3522 left £temporary3521
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3523 £temporary3522 0

 strcmp$4:
	; NotEqual 10 £temporary3523 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$5:
	; IntegralToIntegral £temporary3526 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; Add £temporary3527 right £temporary3526
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3528 £temporary3527 0

 strcmp$8:
	; NotEqual 10 £temporary3528 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$9:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$10:
	; IntegralToIntegral £temporary3532 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$11:
	; Add £temporary3533 left £temporary3532
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$12:
	; Dereference £temporary3534 £temporary3533 0

 strcmp$13:
	; IntegralToIntegral £temporary3536 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$14:
	; Add £temporary3537 right £temporary3536
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$15:
	; Dereference £temporary3538 £temporary3537 0

 strcmp$16:
	; GreaterThanEqual 18 £temporary3534 £temporary3538
	mov al, [rdi]
	cmp [rsi], al
	jge strcmp$18

 strcmp$17:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$18:
	; IntegralToIntegral £temporary3541 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$19:
	; Add £temporary3542 left £temporary3541
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$20:
	; Dereference £temporary3543 £temporary3542 0

 strcmp$21:
	; IntegralToIntegral £temporary3545 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; Add £temporary3546 right £temporary3545
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$23:
	; Dereference £temporary3547 £temporary3546 0

 strcmp$24:
	; LessThanEqual 26 £temporary3543 £temporary3547
	mov al, [rdi]
	cmp [rsi], al
	jle strcmp$26

 strcmp$25:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcmp$26:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcmp$27:
	; Jump 1
	jmp strcmp$1

 strcmp$28:
	; FunctionEnd strcmp

section .text

 strncmp:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncmp$1:
	; GreaterThanEqual 29 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge strncmp$29

 strncmp$2:
	; IntegralToIntegral £temporary3559 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; Add £temporary3560 left £temporary3559
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3561 £temporary3560 0

 strncmp$5:
	; NotEqual 11 £temporary3561 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$6:
	; IntegralToIntegral £temporary3564 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; Add £temporary3565 right £temporary3564
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3566 £temporary3565 0

 strncmp$9:
	; NotEqual 11 £temporary3566 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$10:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$11:
	; IntegralToIntegral £temporary3570 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$12:
	; Add £temporary3571 left £temporary3570
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$13:
	; Dereference £temporary3572 £temporary3571 0

 strncmp$14:
	; IntegralToIntegral £temporary3574 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$15:
	; Add £temporary3575 right £temporary3574
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$16:
	; Dereference £temporary3576 £temporary3575 0

 strncmp$17:
	; GreaterThanEqual 19 £temporary3572 £temporary3576
	mov al, [rdi]
	cmp [rsi], al
	jge strncmp$19

 strncmp$18:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$19:
	; IntegralToIntegral £temporary3579 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$20:
	; Add £temporary3580 left £temporary3579
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$21:
	; Dereference £temporary3581 £temporary3580 0

 strncmp$22:
	; IntegralToIntegral £temporary3583 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; Add £temporary3584 right £temporary3583
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$24:
	; Dereference £temporary3585 £temporary3584 0

 strncmp$25:
	; LessThanEqual 27 £temporary3581 £temporary3585
	mov al, [rdi]
	cmp [rsi], al
	jle strncmp$27

 strncmp$26:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$27:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncmp$28:
	; Jump 1
	jmp strncmp$1

 strncmp$29:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strncmp$30:
	; FunctionEnd strncmp

section .text

 strchr:
	; IntegralToIntegral £temporary3593 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3593
	mov [rbp + 40], al

 strchr$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3595 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; Add £temporary3596 text £temporary3595
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3597 £temporary3596 0

 strchr$6:
	; Equal 18 £temporary3597 integral1$0#
	cmp byte [rsi], 0
	je strchr$18

 strchr$7:
	; IntegralToIntegral £temporary3601 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; Add £temporary3602 text £temporary3601
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3603 £temporary3602 0

 strchr$10:
	; NotEqual 16 £temporary3603 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$16

 strchr$11:
	; IntegralToIntegral £temporary3606 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; Add £temporary3607 text £temporary3606
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3608 £temporary3607 0

 strchr$14:
	; Address £temporary3609 £temporary3608

 strchr$15:
	; Return £temporary3609
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$16:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 strchr$17:
	; Jump 3
	jmp strchr$3

 strchr$18:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strchr$19:
	; FunctionEnd strchr

section .text

 strrchr:
	; Assign result integral8$0#
	mov qword [rbp + 40], 0

 strrchr$1:
	; IntegralToIntegral £temporary3612 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3612
	mov [rbp + 48], al

 strrchr$3:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3614 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; Add £temporary3615 text £temporary3614
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3616 £temporary3615 0

 strrchr$7:
	; Equal 19 £temporary3616 integral1$0#
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3620 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; Add £temporary3621 text £temporary3620
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3622 £temporary3621 0

 strrchr$11:
	; NotEqual 17 £temporary3622 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3625 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; Add £temporary3626 text £temporary3625
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3627 £temporary3626 0

 strrchr$15:
	; Address £temporary3628 £temporary3627

 strrchr$16:
	; Assign result £temporary3628
	mov [rbp + 40], rsi

 strrchr$17:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 strrchr$18:
	; Jump 4
	jmp strrchr$4

 strrchr$19:
	; Return result
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strrchr$20:
	; FunctionEnd strrchr

section .text

 strspn:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strspn$1:
	; IntegralToIntegral £temporary3632 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; Add £temporary3633 mainString £temporary3632
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3634 £temporary3633 0

 strspn$4:
	; Equal 19 £temporary3634 integral1$0#
	cmp byte [rsi], 0
	je strspn$19

 strspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3638 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; Add £temporary3639 mainString £temporary3638
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3640 £temporary3639 0

 strspn$10:
	; IntegralToIntegral £temporary3641 £temporary3640
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signed int £temporary3641
	mov [rbp + 76], eax

 strspn$12:
	; Call 44 strchr 0
	mov qword [rbp + 44], strspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strspn$13:
	; PostCall 44

 strspn$14:
	; GetReturnValue £temporary3642

 strspn$15:
	; NotEqual 17 £temporary3642 integral8$0#
	cmp rbx, 0
	jne strspn$17

 strspn$16:
	; Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$17:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strspn$18:
	; Jump 1
	jmp strspn$1

 strspn$19:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strspn$20:
	; FunctionEnd strspn

section .text

 strcspn:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcspn$1:
	; IntegralToIntegral £temporary3647 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; Add £temporary3648 mainString £temporary3647
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3649 £temporary3648 0

 strcspn$4:
	; Equal 19 £temporary3649 integral1$0#
	cmp byte [rsi], 0
	je strcspn$19

 strcspn$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3653 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; Add £temporary3654 mainString £temporary3653
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3655 £temporary3654 0

 strcspn$10:
	; IntegralToIntegral £temporary3656 £temporary3655
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signed int £temporary3656
	mov [rbp + 76], eax

 strcspn$12:
	; Call 44 strchr 0
	mov qword [rbp + 44], strcspn$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strcspn$13:
	; PostCall 44

 strcspn$14:
	; GetReturnValue £temporary3657

 strcspn$15:
	; Equal 17 £temporary3657 integral8$0#
	cmp rbx, 0
	je strcspn$17

 strcspn$16:
	; Return index
	mov ebx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$17:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcspn$18:
	; Jump 1
	jmp strcspn$1

 strcspn$19:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strcspn$20:
	; FunctionEnd strcspn

section .text

 strpbrk:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strpbrk$1:
	; IntegralToIntegral £temporary3662 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; Add £temporary3663 mainString £temporary3662
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3664 £temporary3663 0

 strpbrk$4:
	; Equal 23 £temporary3664 integral1$0#
	cmp byte [rsi], 0
	je strpbrk$23

 strpbrk$5:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3668 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; Add £temporary3669 mainString £temporary3668
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3670 £temporary3669 0

 strpbrk$10:
	; IntegralToIntegral £temporary3671 £temporary3670
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signed int £temporary3671
	mov [rbp + 76], eax

 strpbrk$12:
	; Call 44 strchr 0
	mov qword [rbp + 44], strpbrk$13
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strchr

 strpbrk$13:
	; PostCall 44

 strpbrk$14:
	; GetReturnValue £temporary3672

 strpbrk$15:
	; Equal 21 £temporary3672 integral8$0#
	cmp rbx, 0
	je strpbrk$21

 strpbrk$16:
	; IntegralToIntegral £temporary3675 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; Add £temporary3676 mainString £temporary3675
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3677 £temporary3676 0

 strpbrk$19:
	; Address £temporary3678 £temporary3677

 strpbrk$20:
	; Return £temporary3678
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$21:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strpbrk$22:
	; Jump 1
	jmp strpbrk$1

 strpbrk$23:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strpbrk$24:
	; FunctionEnd strpbrk

section .text

 strstr:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$1:
	; Parameter 68 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strstr$2:
	; Call 44 strlen 0
	mov qword [rbp + 44], strstr$3
	mov [rbp + 52], rbp
	add rbp, 44
	jmp strlen

 strstr$3:
	; PostCall 44

 strstr$4:
	; GetReturnValue £temporary3681

 strstr$5:
	; Assign subStringSize £temporary3681
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary3683 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; Add £temporary3684 mainString £temporary3683
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary3685 £temporary3684 0

 strstr$10:
	; Equal 28 £temporary3685 integral1$0#
	cmp byte [rsi], 0
	je strstr$28

 strstr$11:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strstr$12:
	; IntegralToIntegral £temporary3689 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; Add £temporary3690 mainString £temporary3689
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary3690
	mov [rbp + 72], rbx

 strstr$15:
	; Parameter 80 pointer subString
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 strstr$16:
	; Parameter 88 signed int subStringSize
	mov eax, [rbp + 44]
	mov [rbp + 88], eax

 strstr$17:
	; Call 48 strncmp 0
	mov qword [rbp + 48], strstr$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strncmp

 strstr$18:
	; PostCall 48

 strstr$19:
	; GetReturnValue £temporary3691

 strstr$20:
	; NotEqual 26 £temporary3691 integral4$0#
	cmp ebx, 0
	jne strstr$26

 strstr$21:
	; IntegralToIntegral £temporary3694 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; Add £temporary3695 mainString £temporary3694
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary3696 £temporary3695 0

 strstr$24:
	; Address £temporary3697 £temporary3696

 strstr$25:
	; Return £temporary3697
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$26:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strstr$27:
	; Jump 7
	jmp strstr$7

 strstr$28:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strstr$29:
	; FunctionEnd strstr

section .text

 strlen:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 strlen$1:
	; IntegralToIntegral £temporary3701 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; Add £temporary3702 string £temporary3701
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3703 £temporary3702 0

 strlen$4:
	; Equal 7 £temporary3703 integral1$0#
	cmp byte [rsi], 0
	je strlen$7

 strlen$5:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 strlen$6:
	; Jump 1
	jmp strlen$1

 strlen$7:
	; Return index
	mov ebx, [rbp + 32]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strlen$8:
	; FunctionEnd strlen

section .data

@7670integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 strerror:
	; PreCall 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strerror$1:
	; Call 28 localeconv 0
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; PostCall 28

 strerror$3:
	; GetReturnValue £temporary3706

 strerror$4:
	; Assign localeConvPtr £temporary3706
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 14 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je strerror$14

 strerror$6:
	; Dereference £temporary3708 localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary3708.messageList
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 14 messageList integral8$0#
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$9:
	; Multiply £temporary3710 errno integral4$8#
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@7670integral4$8#]

 strerror$10:
	; IntegralToIntegral £temporary3711 £temporary3710
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; Add £temporary3712 messageList £temporary3711
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary3713 £temporary3712 0

 strerror$13:
	; Return £temporary3713
	mov rbx, [rsi]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$14:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strerror$15:
	; FunctionEnd strerror

section .data

@7675$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 39 string integral8$0#
	cmp qword [rbp + 24], 0
	je strtok$39

 strtok$1:
	; Dereference £temporary3720 £temporary3719 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 4 £temporary3720 integral1$0#
	cmp byte [rsi], 0
	jne strtok$4

 strtok$3:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$4:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strtok$5:
	; IntegralToIntegral £temporary3725 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$6:
	; Add £temporary3726 string £temporary3725
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$7:
	; Dereference £temporary3727 £temporary3726 0

 strtok$8:
	; Equal 33 £temporary3727 integral1$0#
	cmp byte [rsi], 0
	je strtok$33

 strtok$9:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$10:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$11:
	; IntegralToIntegral £temporary3731 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$12:
	; Add £temporary3732 string £temporary3731
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$13:
	; Dereference £temporary3733 £temporary3732 0

 strtok$14:
	; IntegralToIntegral £temporary3734 £temporary3733
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$15
	neg al
	neg eax

 strtok$15:
	; Parameter 84 signed int £temporary3734
	mov [rbp + 84], eax

 strtok$16:
	; Call 52 strchr 0
	mov qword [rbp + 52], strtok$17
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$17:
	; PostCall 52

 strtok$18:
	; GetReturnValue £temporary3735

 strtok$19:
	; Equal 31 £temporary3735 integral8$0#
	cmp rbx, 0
	je strtok$31

 strtok$20:
	; IntegralToIntegral £temporary3738 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$21:
	; Add £temporary3739 string £temporary3738
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$22:
	; Dereference £temporary3740 £temporary3739 0

 strtok$23:
	; Assign £temporary3740 integral1$0#
	mov byte [rsi], 0

 strtok$24:
	; Add £temporary3742 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$25:
	; IntegralToIntegral £temporary3743 £temporary3742
	mov rbx, 4294967295
	and rax, rbx

 strtok$26:
	; Add £temporary3744 string £temporary3743
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$27:
	; Dereference £temporary3745 £temporary3744 0

 strtok$28:
	; Address £temporary3746 £temporary3745

 strtok$29:
	; Assign token £temporary3746
	mov [@7675$token], rsi

 strtok$30:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$31:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strtok$32:
	; Jump 5
	jmp strtok$5

 strtok$33:
	; IntegralToIntegral £temporary3750 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$34:
	; Add £temporary3751 string £temporary3750
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$35:
	; Dereference £temporary3752 £temporary3751 0

 strtok$36:
	; Address £temporary3753 £temporary3752

 strtok$37:
	; Assign token £temporary3753
	mov [@7675$token], rsi

 strtok$38:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$39:
	; NotEqual 41 token integral8$0#
	cmp qword [@7675$token], 0
	jne strtok$41

 strtok$40:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$41:
	; Dereference £temporary3756 £temporary3755 0
	mov rsi, [@7675$token]

 strtok$42:
	; NotEqual 44 £temporary3756 integral1$0#
	cmp byte [rsi], 0
	jne strtok$44

 strtok$43:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$44:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strtok$45:
	; IntegralToIntegral £temporary3761 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$46:
	; Add £temporary3762 token £temporary3761
	mov rsi, [@7675$token]
	add rsi, rax

 strtok$47:
	; Dereference £temporary3763 £temporary3762 0

 strtok$48:
	; Equal 74 £temporary3763 integral1$0#
	cmp byte [rsi], 0
	je strtok$74

 strtok$49:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 strtok$50:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$51:
	; IntegralToIntegral £temporary3767 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$52:
	; Add £temporary3768 token £temporary3767
	mov rsi, [@7675$token]
	add rsi, rax

 strtok$53:
	; Dereference £temporary3769 £temporary3768 0

 strtok$54:
	; IntegralToIntegral £temporary3770 £temporary3769
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$55
	neg al
	neg eax

 strtok$55:
	; Parameter 84 signed int £temporary3770
	mov [rbp + 84], eax

 strtok$56:
	; Call 52 strchr 0
	mov qword [rbp + 52], strtok$57
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strchr

 strtok$57:
	; PostCall 52

 strtok$58:
	; GetReturnValue £temporary3771

 strtok$59:
	; Equal 72 £temporary3771 integral8$0#
	cmp rbx, 0
	je strtok$72

 strtok$60:
	; Assign tokenStart2 token
	mov rax, [@7675$token]
	mov [rbp + 52], rax

 strtok$61:
	; IntegralToIntegral £temporary3774 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$62:
	; Add £temporary3775 token £temporary3774
	mov rsi, [@7675$token]
	add rsi, rax

 strtok$63:
	; Dereference £temporary3776 £temporary3775 0

 strtok$64:
	; Assign £temporary3776 integral1$0#
	mov byte [rsi], 0

 strtok$65:
	; Add £temporary3778 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$66:
	; IntegralToIntegral £temporary3779 £temporary3778
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; Add £temporary3780 token £temporary3779
	mov rsi, [@7675$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3781 £temporary3780 0

 strtok$69:
	; Address £temporary3782 £temporary3781

 strtok$70:
	; Assign token £temporary3782
	mov [@7675$token], rsi

 strtok$71:
	; Return tokenStart2
	mov rbx, [rbp + 52]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$72:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strtok$73:
	; Jump 45
	jmp strtok$45

 strtok$74:
	; Assign tokenStart token
	mov rax, [@7675$token]
	mov [rbp + 44], rax

 strtok$75:
	; IntegralToIntegral £temporary3786 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$76:
	; Add £temporary3787 token £temporary3786
	mov rsi, [@7675$token]
	add rsi, rax

 strtok$77:
	; Dereference £temporary3788 £temporary3787 0

 strtok$78:
	; Address £temporary3789 £temporary3788

 strtok$79:
	; Assign token £temporary3789
	mov [@7675$token], rsi

 strtok$80:
	; Return tokenStart
	mov rbx, [rbp + 44]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$81:
	; FunctionEnd strtok

section .text

 memcpy:
	; IntegralToIntegral £temporary3794 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3794
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3795 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3795
	mov [rbp + 52], rax

 memcpy$4:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 memcpy$5:
	; GreaterThanEqual 15 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcpy$15

 memcpy$6:
	; IntegralToIntegral £temporary3799 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; Add £temporary3800 charTarget £temporary3799
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3801 £temporary3800 0

 memcpy$9:
	; IntegralToIntegral £temporary3803 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; Add £temporary3804 charSource £temporary3803
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3805 £temporary3804 0

 memcpy$12:
	; Assign £temporary3801 £temporary3805
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3806 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary3806
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3807 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3807
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3808 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3808
	mov [rbp + 52], rax

 memmove$4:
	; GreaterThanEqual 16 source target
	mov rax, [rbp + 24]
	cmp [rbp + 32], rax
	jge memmove$16

 memmove$5:
	; Subtract index size integral4$1#
	mov eax, [rbp + 40]
	dec eax
	mov [rbp + 60], eax

 memmove$6:
	; LessThan 27 index integral4$0#
	cmp dword [rbp + 60], 0
	jl memmove$27

 memmove$7:
	; IntegralToIntegral £temporary3814 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; Add £temporary3815 charTarget £temporary3814
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3816 £temporary3815 0

 memmove$10:
	; IntegralToIntegral £temporary3818 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; Add £temporary3819 charSource £temporary3818
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3820 £temporary3819 0

 memmove$13:
	; Assign £temporary3816 £temporary3820
	mov al, [rdi]
	mov [rsi], al

 memmove$14:
	; Subtract index index integral4$1#
	dec dword [rbp + 60]

 memmove$15:
	; Jump 6
	jmp memmove$6

 memmove$16:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 memmove$17:
	; GreaterThanEqual 27 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memmove$27

 memmove$18:
	; IntegralToIntegral £temporary3824 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; Add £temporary3825 charTarget £temporary3824
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3826 £temporary3825 0

 memmove$21:
	; IntegralToIntegral £temporary3828 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; Add £temporary3829 charSource £temporary3828
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3830 £temporary3829 0

 memmove$24:
	; Assign £temporary3826 £temporary3830
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3833 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary3833
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3834 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3834
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3835 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3835
	mov [rbp + 52], rax

 memcmp$4:
	; Assign index integral4$0#
	mov dword [rbp + 60], 0

 memcmp$5:
	; GreaterThanEqual 24 index size
	mov eax, [rbp + 40]
	cmp [rbp + 60], eax
	jge memcmp$24

 memcmp$6:
	; IntegralToIntegral £temporary3839 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; Add £temporary3840 charLeft £temporary3839
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3841 £temporary3840 0

 memcmp$9:
	; IntegralToIntegral £temporary3843 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; Add £temporary3844 charRight £temporary3843
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3845 £temporary3844 0

 memcmp$12:
	; GreaterThanEqual 14 £temporary3841 £temporary3845
	mov al, [rdi]
	cmp [rsi], al
	jge memcmp$14

 memcmp$13:
	; Return integral4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$14:
	; IntegralToIntegral £temporary3848 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; Add £temporary3849 charLeft £temporary3848
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary3850 £temporary3849 0

 memcmp$17:
	; IntegralToIntegral £temporary3852 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; Add £temporary3853 charRight £temporary3852
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary3854 £temporary3853 0

 memcmp$20:
	; LessThanEqual 22 £temporary3850 £temporary3854
	mov al, [rdi]
	cmp [rsi], al
	jle memcmp$22

 memcmp$21:
	; Return integral4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$22:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memcmp$23:
	; Jump 5
	jmp memcmp$5

 memcmp$24:
	; Return integral4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcmp$25:
	; FunctionEnd memcmp

section .text

 memchr:
	; IntegralToIntegral £temporary3860 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3860
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3861 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3861
	mov [rbp + 52], al

 memchr$4:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 memchr$5:
	; GreaterThanEqual 18 index size
	mov eax, [rbp + 36]
	cmp [rbp + 40], eax
	jge memchr$18

 memchr$6:
	; IntegralToIntegral £temporary3865 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; Add £temporary3866 charBlock £temporary3865
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3867 £temporary3866 0

 memchr$9:
	; NotEqual 16 £temporary3867 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$16

 memchr$10:
	; IntegralToIntegral £temporary3870 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; Add £temporary3871 charBlock £temporary3870
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3872 £temporary3871 0

 memchr$13:
	; Address £temporary3873 £temporary3872

 memchr$14:
	; IntegralToIntegral £temporary3874 £temporary3873

 memchr$15:
	; Return £temporary3874
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$16:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 memchr$17:
	; Jump 5
	jmp memchr$5

 memchr$18:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memchr$19:
	; FunctionEnd memchr

section .text

 memset:
	; IntegralToIntegral £temporary3877 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3877
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3878 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3878
	mov [rbp + 48], al

 memset$4:
	; Assign index integral4$0#
	mov dword [rbp + 49], 0

 memset$5:
	; GreaterThanEqual 12 index size
	mov eax, [rbp + 36]
	cmp [rbp + 49], eax
	jge memset$12

 memset$6:
	; IntegralToIntegral £temporary3882 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; Add £temporary3883 charBlock £temporary3882
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3884 £temporary3883 0

 memset$9:
	; Assign £temporary3884 c
	mov al, [rbp + 48]
	mov [rsi], al

 memset$10:
	; Add index index integral4$1#
	inc dword [rbp + 49]

 memset$11:
	; Jump 5
	jmp memset$5

 memset$12:
	; Return block
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memset$13:
	; FunctionEnd memset
