	global errno

	extern $StackTop


section .data

@977$NO_ERROR:
	; Initializer SignedInt 0
	dd 0

section .data

@978$NO_FUNCTION:
	; Initializer SignedInt 1
	dd 1

section .data

@979$NO_FILE:
	; Initializer SignedInt 2
	dd 2

section .data

@980$NO_PATH:
	; Initializer SignedInt 3
	dd 3

section .data

@981$NO_HANDLE:
	; Initializer SignedInt 4
	dd 4

section .data

@982$NO_ACCESS:
	; Initializer SignedInt 5
	dd 5

section .data

@983$EDOM:
	; Initializer SignedInt 6
	dd 6

section .data

@984$ERANGE:
	; Initializer SignedInt 7
	dd 7

section .data

@985$EILSEQ:
	; Initializer SignedInt 8
	dd 8

section .data

@986$FOPEN:
	; Initializer SignedInt 9
	dd 9

section .data

@987$FFLUSH:
	; Initializer SignedInt 10
	dd 10

section .data

@988$FCLOSE:
	; Initializer SignedInt 11
	dd 11

section .data

@989$NO_MODE:
	; Initializer SignedInt 12
	dd 12

section .data

@990$FWRITE:
	; Initializer SignedInt 13
	dd 13

section .data

@991$FREAD:
	; Initializer SignedInt 14
	dd 14

section .data

@992$FSEEK:
	; Initializer SignedInt 15
	dd 15

section .data

@993$FTELL:
	; Initializer SignedInt 16
	dd 16

section .data

@994$FSIZE:
	; Initializer SignedInt 17
	dd 17

section .data

@995$FREMOVE:
	; Initializer SignedInt 18
	dd 18

section .data

@996$FRENAME:
	; Initializer SignedInt 19
	dd 19

section .data

@997$FTEMPNAME:
	; Initializer SignedInt 20
	dd 20

section .data

@998$FTEMPFILE:
	; Initializer SignedInt 21
	dd 21

section .data

errno:
	; Initializer SignedInt 0
	dd 0
