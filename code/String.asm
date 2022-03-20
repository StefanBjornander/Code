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
	; IntegralToIntegral £temporary3421 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$2:
	; Add £temporary3422 source £temporary3421
	mov rsi, [rbp + 32]
	add rsi, rax

 strcpy$3:
	; Dereference £temporary3423 £temporary3422 0

 strcpy$4:
	; Equal 14 £temporary3423 integral1$0#
	cmp byte [rsi], 0
	je strcpy$14

 strcpy$5:
	; IntegralToIntegral £temporary3427 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$6:
	; Add £temporary3428 target £temporary3427
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$7:
	; Dereference £temporary3429 £temporary3428 0

 strcpy$8:
	; IntegralToIntegral £temporary3431 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$9:
	; Add £temporary3432 source £temporary3431
	mov rdi, [rbp + 32]
	add rdi, rax

 strcpy$10:
	; Dereference £temporary3433 £temporary3432 0

 strcpy$11:
	; Assign £temporary3429 £temporary3433
	mov al, [rdi]
	mov [rsi], al

 strcpy$12:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcpy$13:
	; Jump 1
	jmp strcpy$1

 strcpy$14:
	; IntegralToIntegral £temporary3435 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcpy$15:
	; Add £temporary3436 target £temporary3435
	mov rsi, [rbp + 24]
	add rsi, rax

 strcpy$16:
	; Dereference £temporary3437 £temporary3436 0

 strcpy$17:
	; Assign £temporary3437 integral1$0#
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
	; IntegralToIntegral £temporary3440 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$3:
	; Add £temporary3441 source £temporary3440
	mov rsi, [rbp + 32]
	add rsi, rax

 strncpy$4:
	; Dereference £temporary3442 £temporary3441 0

 strncpy$5:
	; Equal 15 £temporary3442 integral1$0#
	cmp byte [rsi], 0
	je strncpy$15

 strncpy$6:
	; IntegralToIntegral £temporary3447 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$7:
	; Add £temporary3448 target £temporary3447
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$8:
	; Dereference £temporary3449 £temporary3448 0

 strncpy$9:
	; IntegralToIntegral £temporary3451 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$10:
	; Add £temporary3452 source £temporary3451
	mov rdi, [rbp + 32]
	add rdi, rax

 strncpy$11:
	; Dereference £temporary3453 £temporary3452 0

 strncpy$12:
	; Assign £temporary3449 £temporary3453
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
	; IntegralToIntegral £temporary3457 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncpy$17:
	; Add £temporary3458 target £temporary3457
	mov rsi, [rbp + 24]
	add rsi, rax

 strncpy$18:
	; Dereference £temporary3459 £temporary3458 0

 strncpy$19:
	; Assign £temporary3459 integral1$0#
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
	; PreCall 44

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
	; GetReturnValue £temporary3460

 strcat$5:
	; Assign targetLength £temporary3460
	mov [rbp + 44], ebx

 strcat$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strcat$7:
	; IntegralToIntegral £temporary3462 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$8:
	; Add £temporary3463 source £temporary3462
	mov rsi, [rbp + 32]
	add rsi, rax

 strcat$9:
	; Dereference £temporary3464 £temporary3463 0

 strcat$10:
	; Equal 21 £temporary3464 integral1$0#
	cmp byte [rsi], 0
	je strcat$21

 strcat$11:
	; Add £temporary3468 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$12:
	; IntegralToIntegral £temporary3469 £temporary3468
	mov rbx, 4294967295
	and rax, rbx

 strcat$13:
	; Add £temporary3470 target £temporary3469
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$14:
	; Dereference £temporary3471 £temporary3470 0

 strcat$15:
	; IntegralToIntegral £temporary3473 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcat$16:
	; Add £temporary3474 source £temporary3473
	mov rdi, [rbp + 32]
	add rdi, rax

 strcat$17:
	; Dereference £temporary3475 £temporary3474 0

 strcat$18:
	; Assign £temporary3471 £temporary3475
	mov al, [rdi]
	mov [rsi], al

 strcat$19:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 strcat$20:
	; Jump 7
	jmp strcat$7

 strcat$21:
	; Add £temporary3477 targetLength index
	mov eax, [rbp + 44]
	add eax, [rbp + 40]

 strcat$22:
	; IntegralToIntegral £temporary3478 £temporary3477
	mov rbx, 4294967295
	and rax, rbx

 strcat$23:
	; Add £temporary3479 target £temporary3478
	mov rsi, [rbp + 24]
	add rsi, rax

 strcat$24:
	; Dereference £temporary3480 £temporary3479 0

 strcat$25:
	; Assign £temporary3480 integral1$0#
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
	; PreCall 48

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
	; GetReturnValue £temporary3481

 strncat$5:
	; Assign targetLength £temporary3481
	mov [rbp + 48], ebx

 strncat$6:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 strncat$7:
	; Subtract £temporary3482 size integral4$1#
	mov eax, [rbp + 40]
	dec eax

 strncat$8:
	; GreaterThanEqual 23 index £temporary3482
	cmp [rbp + 44], eax
	jge strncat$23

 strncat$9:
	; IntegralToIntegral £temporary3485 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$10:
	; Add £temporary3486 source £temporary3485
	mov rsi, [rbp + 32]
	add rsi, rax

 strncat$11:
	; Dereference £temporary3487 £temporary3486 0

 strncat$12:
	; Equal 23 £temporary3487 integral1$0#
	cmp byte [rsi], 0
	je strncat$23

 strncat$13:
	; Add £temporary3492 targetLength index
	mov eax, [rbp + 48]
	add eax, [rbp + 44]

 strncat$14:
	; IntegralToIntegral £temporary3493 £temporary3492
	mov rbx, 4294967295
	and rax, rbx

 strncat$15:
	; Add £temporary3494 target £temporary3493
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$16:
	; Dereference £temporary3495 £temporary3494 0

 strncat$17:
	; IntegralToIntegral £temporary3497 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncat$18:
	; Add £temporary3498 source £temporary3497
	mov rdi, [rbp + 32]
	add rdi, rax

 strncat$19:
	; Dereference £temporary3499 £temporary3498 0

 strncat$20:
	; Assign £temporary3495 £temporary3499
	mov al, [rdi]
	mov [rsi], al

 strncat$21:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 strncat$22:
	; Jump 7
	jmp strncat$7

 strncat$23:
	; Add £temporary3500 targetLength size
	mov eax, [rbp + 48]
	add eax, [rbp + 40]

 strncat$24:
	; Subtract £temporary3502 £temporary3500 integral4$1#
	dec eax

 strncat$25:
	; IntegralToIntegral £temporary3503 £temporary3502
	mov rbx, 4294967295
	and rax, rbx

 strncat$26:
	; Add £temporary3504 target £temporary3503
	mov rsi, [rbp + 24]
	add rsi, rax

 strncat$27:
	; Dereference £temporary3505 £temporary3504 0

 strncat$28:
	; Assign £temporary3505 integral1$0#
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
	; IntegralToIntegral £temporary3508 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$2:
	; Add £temporary3509 left £temporary3508
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$3:
	; Dereference £temporary3510 £temporary3509 0

 strcmp$4:
	; NotEqual 10 £temporary3510 integral1$0#
	cmp byte [rsi], 0
	jne strcmp$10

 strcmp$5:
	; IntegralToIntegral £temporary3513 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$6:
	; Add £temporary3514 right £temporary3513
	mov rsi, [rbp + 32]
	add rsi, rax

 strcmp$7:
	; Dereference £temporary3515 £temporary3514 0

 strcmp$8:
	; NotEqual 10 £temporary3515 integral1$0#
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
	; IntegralToIntegral £temporary3519 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$11:
	; Add £temporary3520 left £temporary3519
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$12:
	; Dereference £temporary3521 £temporary3520 0

 strcmp$13:
	; IntegralToIntegral £temporary3523 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$14:
	; Add £temporary3524 right £temporary3523
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$15:
	; Dereference £temporary3525 £temporary3524 0

 strcmp$16:
	; GreaterThanEqual 18 £temporary3521 £temporary3525
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
	; IntegralToIntegral £temporary3528 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$19:
	; Add £temporary3529 left £temporary3528
	mov rsi, [rbp + 24]
	add rsi, rax

 strcmp$20:
	; Dereference £temporary3530 £temporary3529 0

 strcmp$21:
	; IntegralToIntegral £temporary3532 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcmp$22:
	; Add £temporary3533 right £temporary3532
	mov rdi, [rbp + 32]
	add rdi, rax

 strcmp$23:
	; Dereference £temporary3534 £temporary3533 0

 strcmp$24:
	; LessThanEqual 26 £temporary3530 £temporary3534
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
	; IntegralToIntegral £temporary3546 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$3:
	; Add £temporary3547 left £temporary3546
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$4:
	; Dereference £temporary3548 £temporary3547 0

 strncmp$5:
	; NotEqual 11 £temporary3548 integral1$0#
	cmp byte [rsi], 0
	jne strncmp$11

 strncmp$6:
	; IntegralToIntegral £temporary3551 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$7:
	; Add £temporary3552 right £temporary3551
	mov rsi, [rbp + 32]
	add rsi, rax

 strncmp$8:
	; Dereference £temporary3553 £temporary3552 0

 strncmp$9:
	; NotEqual 11 £temporary3553 integral1$0#
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
	; IntegralToIntegral £temporary3557 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$12:
	; Add £temporary3558 left £temporary3557
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$13:
	; Dereference £temporary3559 £temporary3558 0

 strncmp$14:
	; IntegralToIntegral £temporary3561 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$15:
	; Add £temporary3562 right £temporary3561
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$16:
	; Dereference £temporary3563 £temporary3562 0

 strncmp$17:
	; GreaterThanEqual 19 £temporary3559 £temporary3563
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
	; IntegralToIntegral £temporary3566 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$20:
	; Add £temporary3567 left £temporary3566
	mov rsi, [rbp + 24]
	add rsi, rax

 strncmp$21:
	; Dereference £temporary3568 £temporary3567 0

 strncmp$22:
	; IntegralToIntegral £temporary3570 index
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 strncmp$23:
	; Add £temporary3571 right £temporary3570
	mov rdi, [rbp + 32]
	add rdi, rax

 strncmp$24:
	; Dereference £temporary3572 £temporary3571 0

 strncmp$25:
	; LessThanEqual 27 £temporary3568 £temporary3572
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
	; IntegralToIntegral £temporary3580 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strchr$1
	neg eax
	neg al

 strchr$1:
	; Assign c £temporary3580
	mov [rbp + 40], al

 strchr$2:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strchr$3:
	; IntegralToIntegral £temporary3582 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$4:
	; Add £temporary3583 text £temporary3582
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$5:
	; Dereference £temporary3584 £temporary3583 0

 strchr$6:
	; Equal 18 £temporary3584 integral1$0#
	cmp byte [rsi], 0
	je strchr$18

 strchr$7:
	; IntegralToIntegral £temporary3588 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$8:
	; Add £temporary3589 text £temporary3588
	mov rsi, [rbp + 24]
	add rsi, rax

 strchr$9:
	; Dereference £temporary3590 £temporary3589 0

 strchr$10:
	; NotEqual 16 £temporary3590 c
	mov al, [rbp + 40]
	cmp [rsi], al
	jne strchr$16

 strchr$11:
	; IntegralToIntegral £temporary3593 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strchr$12:
	; Add £temporary3594 text £temporary3593
	mov rbx, [rbp + 24]
	add rbx, rax

 strchr$13:
	; Dereference £temporary3595 £temporary3594 0

 strchr$14:
	; Address £temporary3596 £temporary3595

 strchr$15:
	; Return £temporary3596
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
	; IntegralToIntegral £temporary3599 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge strrchr$2
	neg eax
	neg al

 strrchr$2:
	; Assign c £temporary3599
	mov [rbp + 48], al

 strrchr$3:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 strrchr$4:
	; IntegralToIntegral £temporary3601 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$5:
	; Add £temporary3602 text £temporary3601
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$6:
	; Dereference £temporary3603 £temporary3602 0

 strrchr$7:
	; Equal 19 £temporary3603 integral1$0#
	cmp byte [rsi], 0
	je strrchr$19

 strrchr$8:
	; IntegralToIntegral £temporary3607 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$9:
	; Add £temporary3608 text £temporary3607
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$10:
	; Dereference £temporary3609 £temporary3608 0

 strrchr$11:
	; NotEqual 17 £temporary3609 c
	mov al, [rbp + 48]
	cmp [rsi], al
	jne strrchr$17

 strrchr$12:
	; IntegralToIntegral £temporary3612 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 strrchr$13:
	; Add £temporary3613 text £temporary3612
	mov rsi, [rbp + 24]
	add rsi, rax

 strrchr$14:
	; Dereference £temporary3614 £temporary3613 0

 strrchr$15:
	; Address £temporary3615 £temporary3614

 strrchr$16:
	; Assign result £temporary3615
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
	; IntegralToIntegral £temporary3619 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$2:
	; Add £temporary3620 mainString £temporary3619
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$3:
	; Dereference £temporary3621 £temporary3620 0

 strspn$4:
	; Equal 19 £temporary3621 integral1$0#
	cmp byte [rsi], 0
	je strspn$19

 strspn$5:
	; PreCall 44

 strspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strspn$7:
	; IntegralToIntegral £temporary3625 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strspn$8:
	; Add £temporary3626 mainString £temporary3625
	mov rsi, [rbp + 24]
	add rsi, rax

 strspn$9:
	; Dereference £temporary3627 £temporary3626 0

 strspn$10:
	; IntegralToIntegral £temporary3628 £temporary3627
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strspn$11
	neg al
	neg eax

 strspn$11:
	; Parameter 76 signed int £temporary3628
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
	; GetReturnValue £temporary3629

 strspn$15:
	; NotEqual 17 £temporary3629 integral8$0#
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
	; IntegralToIntegral £temporary3634 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$2:
	; Add £temporary3635 mainString £temporary3634
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$3:
	; Dereference £temporary3636 £temporary3635 0

 strcspn$4:
	; Equal 19 £temporary3636 integral1$0#
	cmp byte [rsi], 0
	je strcspn$19

 strcspn$5:
	; PreCall 44

 strcspn$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strcspn$7:
	; IntegralToIntegral £temporary3640 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strcspn$8:
	; Add £temporary3641 mainString £temporary3640
	mov rsi, [rbp + 24]
	add rsi, rax

 strcspn$9:
	; Dereference £temporary3642 £temporary3641 0

 strcspn$10:
	; IntegralToIntegral £temporary3643 £temporary3642
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strcspn$11
	neg al
	neg eax

 strcspn$11:
	; Parameter 76 signed int £temporary3643
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
	; GetReturnValue £temporary3644

 strcspn$15:
	; Equal 17 £temporary3644 integral8$0#
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
	; IntegralToIntegral £temporary3649 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$2:
	; Add £temporary3650 mainString £temporary3649
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$3:
	; Dereference £temporary3651 £temporary3650 0

 strpbrk$4:
	; Equal 23 £temporary3651 integral1$0#
	cmp byte [rsi], 0
	je strpbrk$23

 strpbrk$5:
	; PreCall 44

 strpbrk$6:
	; Parameter 68 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 68], rax

 strpbrk$7:
	; IntegralToIntegral £temporary3655 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$8:
	; Add £temporary3656 mainString £temporary3655
	mov rsi, [rbp + 24]
	add rsi, rax

 strpbrk$9:
	; Dereference £temporary3657 £temporary3656 0

 strpbrk$10:
	; IntegralToIntegral £temporary3658 £temporary3657
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strpbrk$11
	neg al
	neg eax

 strpbrk$11:
	; Parameter 76 signed int £temporary3658
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
	; GetReturnValue £temporary3659

 strpbrk$15:
	; Equal 21 £temporary3659 integral8$0#
	cmp rbx, 0
	je strpbrk$21

 strpbrk$16:
	; IntegralToIntegral £temporary3662 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strpbrk$17:
	; Add £temporary3663 mainString £temporary3662
	mov rbx, [rbp + 24]
	add rbx, rax

 strpbrk$18:
	; Dereference £temporary3664 £temporary3663 0

 strpbrk$19:
	; Address £temporary3665 £temporary3664

 strpbrk$20:
	; Return £temporary3665
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
	; PreCall 44

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
	; GetReturnValue £temporary3668

 strstr$5:
	; Assign subStringSize £temporary3668
	mov [rbp + 44], ebx

 strstr$6:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 strstr$7:
	; IntegralToIntegral £temporary3670 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$8:
	; Add £temporary3671 mainString £temporary3670
	mov rsi, [rbp + 24]
	add rsi, rax

 strstr$9:
	; Dereference £temporary3672 £temporary3671 0

 strstr$10:
	; Equal 28 £temporary3672 integral1$0#
	cmp byte [rsi], 0
	je strstr$28

 strstr$11:
	; PreCall 48

 strstr$12:
	; IntegralToIntegral £temporary3676 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$13:
	; Add £temporary3677 mainString £temporary3676
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$14:
	; Parameter 72 pointer £temporary3677
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
	; GetReturnValue £temporary3678

 strstr$20:
	; NotEqual 26 £temporary3678 integral4$0#
	cmp ebx, 0
	jne strstr$26

 strstr$21:
	; IntegralToIntegral £temporary3681 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strstr$22:
	; Add £temporary3682 mainString £temporary3681
	mov rbx, [rbp + 24]
	add rbx, rax

 strstr$23:
	; Dereference £temporary3683 £temporary3682 0

 strstr$24:
	; Address £temporary3684 £temporary3683

 strstr$25:
	; Return £temporary3684
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
	; IntegralToIntegral £temporary3688 index
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 strlen$2:
	; Add £temporary3689 string £temporary3688
	mov rsi, [rbp + 24]
	add rsi, rax

 strlen$3:
	; Dereference £temporary3690 £temporary3689 0

 strlen$4:
	; Equal 7 £temporary3690 integral1$0#
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

@7515integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 strerror:
	; PreCall 28

 strerror$1:
	; Call 28 localeconv 0
	mov qword [rbp + 28], strerror$2
	mov [rbp + 36], rbp
	add rbp, 28
	jmp localeconv

 strerror$2:
	; PostCall 28

 strerror$3:
	; GetReturnValue £temporary3693

 strerror$4:
	; Assign localeConvPtr £temporary3693
	mov [rbp + 28], rbx

 strerror$5:
	; Equal 14 localeConvPtr integral8$0#
	cmp qword [rbp + 28], 0
	je strerror$14

 strerror$6:
	; Dereference £temporary3695 localeConvPtr 0
	mov rsi, [rbp + 28]

 strerror$7:
	; Assign messageList £temporary3695.messageList
	mov rax, [rsi + 56]
	mov [rbp + 36], rax

 strerror$8:
	; Equal 14 messageList integral8$0#
	cmp qword [rbp + 36], 0
	je strerror$14

 strerror$9:
	; Multiply £temporary3697 errno integral4$8#
	mov eax, [rbp + 24]
	xor edx, edx
	imul dword [@7515integral4$8#]

 strerror$10:
	; IntegralToIntegral £temporary3698 £temporary3697
	mov rbx, 4294967295
	and rax, rbx

 strerror$11:
	; Add £temporary3699 messageList £temporary3698
	mov rsi, [rbp + 36]
	add rsi, rax

 strerror$12:
	; Dereference £temporary3700 £temporary3699 0

 strerror$13:
	; Return £temporary3700
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

@7520$token:
	; Initializer Pointer 0
	dq 0

section .text

 strtok:
	; Equal 39 string integral8$0#
	cmp qword [rbp + 24], 0
	je strtok$39

 strtok$1:
	; Dereference £temporary3707 £temporary3706 0
	mov rsi, [rbp + 24]

 strtok$2:
	; NotEqual 4 £temporary3707 integral1$0#
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
	; IntegralToIntegral £temporary3712 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$6:
	; Add £temporary3713 string £temporary3712
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$7:
	; Dereference £temporary3714 £temporary3713 0

 strtok$8:
	; Equal 33 £temporary3714 integral1$0#
	cmp byte [rsi], 0
	je strtok$33

 strtok$9:
	; PreCall 52

 strtok$10:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$11:
	; IntegralToIntegral £temporary3718 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$12:
	; Add £temporary3719 string £temporary3718
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$13:
	; Dereference £temporary3720 £temporary3719 0

 strtok$14:
	; IntegralToIntegral £temporary3721 £temporary3720
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$15
	neg al
	neg eax

 strtok$15:
	; Parameter 84 signed int £temporary3721
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
	; GetReturnValue £temporary3722

 strtok$19:
	; Equal 31 £temporary3722 integral8$0#
	cmp rbx, 0
	je strtok$31

 strtok$20:
	; IntegralToIntegral £temporary3725 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$21:
	; Add £temporary3726 string £temporary3725
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$22:
	; Dereference £temporary3727 £temporary3726 0

 strtok$23:
	; Assign £temporary3727 integral1$0#
	mov byte [rsi], 0

 strtok$24:
	; Add £temporary3729 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$25:
	; IntegralToIntegral £temporary3730 £temporary3729
	mov rbx, 4294967295
	and rax, rbx

 strtok$26:
	; Add £temporary3731 string £temporary3730
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$27:
	; Dereference £temporary3732 £temporary3731 0

 strtok$28:
	; Address £temporary3733 £temporary3732

 strtok$29:
	; Assign token £temporary3733
	mov [@7520$token], rsi

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
	; IntegralToIntegral £temporary3737 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$34:
	; Add £temporary3738 string £temporary3737
	mov rsi, [rbp + 24]
	add rsi, rax

 strtok$35:
	; Dereference £temporary3739 £temporary3738 0

 strtok$36:
	; Address £temporary3740 £temporary3739

 strtok$37:
	; Assign token £temporary3740
	mov [@7520$token], rsi

 strtok$38:
	; Return string
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$39:
	; NotEqual 41 token integral8$0#
	cmp qword [@7520$token], 0
	jne strtok$41

 strtok$40:
	; Return integral8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 strtok$41:
	; Dereference £temporary3743 £temporary3742 0
	mov rsi, [@7520$token]

 strtok$42:
	; NotEqual 44 £temporary3743 integral1$0#
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
	; IntegralToIntegral £temporary3748 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$46:
	; Add £temporary3749 token £temporary3748
	mov rsi, [@7520$token]
	add rsi, rax

 strtok$47:
	; Dereference £temporary3750 £temporary3749 0

 strtok$48:
	; Equal 74 £temporary3750 integral1$0#
	cmp byte [rsi], 0
	je strtok$74

 strtok$49:
	; PreCall 52

 strtok$50:
	; Parameter 76 pointer charSet
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 strtok$51:
	; IntegralToIntegral £temporary3754 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$52:
	; Add £temporary3755 token £temporary3754
	mov rsi, [@7520$token]
	add rsi, rax

 strtok$53:
	; Dereference £temporary3756 £temporary3755 0

 strtok$54:
	; IntegralToIntegral £temporary3757 £temporary3756
	mov al, [rsi]
	and eax, 255
	cmp al, 0
	jge strtok$55
	neg al
	neg eax

 strtok$55:
	; Parameter 84 signed int £temporary3757
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
	; GetReturnValue £temporary3758

 strtok$59:
	; Equal 72 £temporary3758 integral8$0#
	cmp rbx, 0
	je strtok$72

 strtok$60:
	; Assign tokenStart2 token
	mov rax, [@7520$token]
	mov [rbp + 52], rax

 strtok$61:
	; IntegralToIntegral £temporary3761 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$62:
	; Add £temporary3762 token £temporary3761
	mov rsi, [@7520$token]
	add rsi, rax

 strtok$63:
	; Dereference £temporary3763 £temporary3762 0

 strtok$64:
	; Assign £temporary3763 integral1$0#
	mov byte [rsi], 0

 strtok$65:
	; Add £temporary3765 index integral4$1#
	mov eax, [rbp + 40]
	inc eax

 strtok$66:
	; IntegralToIntegral £temporary3766 £temporary3765
	mov rbx, 4294967295
	and rax, rbx

 strtok$67:
	; Add £temporary3767 token £temporary3766
	mov rsi, [@7520$token]
	add rsi, rax

 strtok$68:
	; Dereference £temporary3768 £temporary3767 0

 strtok$69:
	; Address £temporary3769 £temporary3768

 strtok$70:
	; Assign token £temporary3769
	mov [@7520$token], rsi

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
	mov rax, [@7520$token]
	mov [rbp + 44], rax

 strtok$75:
	; IntegralToIntegral £temporary3773 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 strtok$76:
	; Add £temporary3774 token £temporary3773
	mov rsi, [@7520$token]
	add rsi, rax

 strtok$77:
	; Dereference £temporary3775 £temporary3774 0

 strtok$78:
	; Address £temporary3776 £temporary3775

 strtok$79:
	; Assign token £temporary3776
	mov [@7520$token], rsi

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
	; IntegralToIntegral £temporary3781 target
	mov rax, [rbp + 24]

 memcpy$1:
	; Assign charTarget £temporary3781
	mov [rbp + 44], rax

 memcpy$2:
	; IntegralToIntegral £temporary3782 source
	mov rax, [rbp + 32]

 memcpy$3:
	; Assign charSource £temporary3782
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
	; IntegralToIntegral £temporary3786 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$7:
	; Add £temporary3787 charTarget £temporary3786
	mov rsi, [rbp + 44]
	add rsi, rax

 memcpy$8:
	; Dereference £temporary3788 £temporary3787 0

 memcpy$9:
	; IntegralToIntegral £temporary3790 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcpy$10:
	; Add £temporary3791 charSource £temporary3790
	mov rdi, [rbp + 52]
	add rdi, rax

 memcpy$11:
	; Dereference £temporary3792 £temporary3791 0

 memcpy$12:
	; Assign £temporary3788 £temporary3792
	mov al, [rdi]
	mov [rsi], al

 memcpy$13:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memcpy$14:
	; Jump 5
	jmp memcpy$5

 memcpy$15:
	; IntegralToIntegral £temporary3793 target
	mov rbx, [rbp + 24]

 memcpy$16:
	; Return £temporary3793
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memcpy$17:
	; FunctionEnd memcpy

section .text

 memmove:
	; IntegralToIntegral £temporary3794 target
	mov rax, [rbp + 24]

 memmove$1:
	; Assign charTarget £temporary3794
	mov [rbp + 44], rax

 memmove$2:
	; IntegralToIntegral £temporary3795 source
	mov rax, [rbp + 32]

 memmove$3:
	; Assign charSource £temporary3795
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
	; IntegralToIntegral £temporary3801 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$8:
	; Add £temporary3802 charTarget £temporary3801
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$9:
	; Dereference £temporary3803 £temporary3802 0

 memmove$10:
	; IntegralToIntegral £temporary3805 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$11:
	; Add £temporary3806 charSource £temporary3805
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$12:
	; Dereference £temporary3807 £temporary3806 0

 memmove$13:
	; Assign £temporary3803 £temporary3807
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
	; IntegralToIntegral £temporary3811 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$19:
	; Add £temporary3812 charTarget £temporary3811
	mov rsi, [rbp + 44]
	add rsi, rax

 memmove$20:
	; Dereference £temporary3813 £temporary3812 0

 memmove$21:
	; IntegralToIntegral £temporary3815 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memmove$22:
	; Add £temporary3816 charSource £temporary3815
	mov rdi, [rbp + 52]
	add rdi, rax

 memmove$23:
	; Dereference £temporary3817 £temporary3816 0

 memmove$24:
	; Assign £temporary3813 £temporary3817
	mov al, [rdi]
	mov [rsi], al

 memmove$25:
	; Add index index integral4$1#
	inc dword [rbp + 60]

 memmove$26:
	; Jump 17
	jmp memmove$17

 memmove$27:
	; IntegralToIntegral £temporary3820 target
	mov rbx, [rbp + 24]

 memmove$28:
	; Return £temporary3820
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 memmove$29:
	; FunctionEnd memmove

section .text

 memcmp:
	; IntegralToIntegral £temporary3821 left
	mov rax, [rbp + 24]

 memcmp$1:
	; Assign charLeft £temporary3821
	mov [rbp + 44], rax

 memcmp$2:
	; IntegralToIntegral £temporary3822 right
	mov rax, [rbp + 32]

 memcmp$3:
	; Assign charRight £temporary3822
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
	; IntegralToIntegral £temporary3826 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$7:
	; Add £temporary3827 charLeft £temporary3826
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$8:
	; Dereference £temporary3828 £temporary3827 0

 memcmp$9:
	; IntegralToIntegral £temporary3830 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$10:
	; Add £temporary3831 charRight £temporary3830
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$11:
	; Dereference £temporary3832 £temporary3831 0

 memcmp$12:
	; GreaterThanEqual 14 £temporary3828 £temporary3832
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
	; IntegralToIntegral £temporary3835 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$15:
	; Add £temporary3836 charLeft £temporary3835
	mov rsi, [rbp + 44]
	add rsi, rax

 memcmp$16:
	; Dereference £temporary3837 £temporary3836 0

 memcmp$17:
	; IntegralToIntegral £temporary3839 index
	mov eax, [rbp + 60]
	mov rbx, 4294967295
	and rax, rbx

 memcmp$18:
	; Add £temporary3840 charRight £temporary3839
	mov rdi, [rbp + 52]
	add rdi, rax

 memcmp$19:
	; Dereference £temporary3841 £temporary3840 0

 memcmp$20:
	; LessThanEqual 22 £temporary3837 £temporary3841
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
	; IntegralToIntegral £temporary3847 block
	mov rax, [rbp + 24]

 memchr$1:
	; Assign charBlock £temporary3847
	mov [rbp + 44], rax

 memchr$2:
	; IntegralToIntegral £temporary3848 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memchr$3
	neg eax
	neg al

 memchr$3:
	; Assign c £temporary3848
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
	; IntegralToIntegral £temporary3852 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$7:
	; Add £temporary3853 charBlock £temporary3852
	mov rsi, [rbp + 44]
	add rsi, rax

 memchr$8:
	; Dereference £temporary3854 £temporary3853 0

 memchr$9:
	; NotEqual 16 £temporary3854 c
	mov al, [rbp + 52]
	cmp [rsi], al
	jne memchr$16

 memchr$10:
	; IntegralToIntegral £temporary3857 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 memchr$11:
	; Add £temporary3858 charBlock £temporary3857
	mov rbx, [rbp + 44]
	add rbx, rax

 memchr$12:
	; Dereference £temporary3859 £temporary3858 0

 memchr$13:
	; Address £temporary3860 £temporary3859

 memchr$14:
	; IntegralToIntegral £temporary3861 £temporary3860

 memchr$15:
	; Return £temporary3861
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
	; IntegralToIntegral £temporary3864 block
	mov rax, [rbp + 24]

 memset$1:
	; Assign charBlock £temporary3864
	mov [rbp + 40], rax

 memset$2:
	; IntegralToIntegral £temporary3865 i
	mov eax, [rbp + 32]
	cmp eax, 0
	jge memset$3
	neg eax
	neg al

 memset$3:
	; Assign c £temporary3865
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
	; IntegralToIntegral £temporary3869 index
	mov eax, [rbp + 49]
	mov rbx, 4294967295
	and rax, rbx

 memset$7:
	; Add £temporary3870 charBlock £temporary3869
	mov rsi, [rbp + 40]
	add rsi, rax

 memset$8:
	; Dereference £temporary3871 £temporary3870 0

 memset$9:
	; Assign £temporary3871 c
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
