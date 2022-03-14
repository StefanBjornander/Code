	global file_test
	global temp_file

	extern fopen
	extern stderr
	extern fprintf
	extern abort
	extern feof
	extern fscanf
	extern sqrt
	extern printf
	extern fclose
	extern remove
	extern errno
	extern strerror
	extern rename
	extern fwrite
	extern fread
	extern malloc
	extern free
	extern fseek
	extern ftell
	extern fgetc
	extern putchar
	extern fileexists
	extern tmpfile
	extern toupper
	extern putc
	extern rewind
	extern $StackTop


section .data

@10254string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@10255string_r#:
	; Initializer String r
	db "r", 0

section .data

@10257string_outX2Etxt#:
	; Initializer String outX.txt
	db "outX.txt", 0

section .data

@10258string_w#:
	; Initializer String w
	db "w", 0

section .data

@10262string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10263string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10264string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10268string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10269string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10270string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10274string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@10275string_X12025f0A#:
	; Initializer String X1 %f\n
	db "X1 %f", 10, 0

section .data

@10276string_X22025f0A#:
	; Initializer String X2 %f\n
	db "X2 %f", 10, 0

section .data

@10277string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10278string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@10279string_r#:
	; Initializer String r
	db "r", 0

section .data

@10281string_outY2Etxt#:
	; Initializer String outY.txt
	db "outY.txt", 0

section .data

@10282string_w#:
	; Initializer String w
	db "w", 0

section .data

@10286string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10287string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10288string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10292string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10293string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10294string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10299string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@10300string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@10301string_Y20size2025i0A#:
	; Initializer String Y size %i\n
	db "Y size %i", 10, 0

section .data

@10305string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@10306string_Y12025f0A#:
	; Initializer String Y1 %f\n
	db "Y1 %f", 10, 0

section .data

@10307string_Y22025f0A#:
	; Initializer String Y2 %f\n
	db "Y2 %f", 10, 0

section .data

@10308string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10309string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@10312string_2225s2220has20been20removed0A#:
	; Initializer String "%s" has been removed\n
	db 34, "%s", 34, " has been removed", 10, 0

section .data

@10313string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10314string_X#:
	; Initializer String X
	db "X", 0

section .data

@10316string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@10318string_w#:
	; Initializer String w
	db "w", 0

section .data

@10320string_Hello20X#:
	; Initializer String Hello X
	db "Hello X", 0

section .data

@10322string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@10323string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10324string_X2#:
	; Initializer String X2
	db "X2", 0

section .data

@10326string_Y2#:
	; Initializer String Y2
	db "Y2", 0

section .data

@10329string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@10330string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10331string_Z#:
	; Initializer String Z
	db "Z", 0

section .data

@10333string_w#:
	; Initializer String w
	db "w", 0

section .data

@10335string_Hello20Z#:
	; Initializer String Hello Z
	db "Hello Z", 0

section .data

@10337string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@10338string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10339string_Z2#:
	; Initializer String Z2
	db "Z2", 0

section .data

@10342string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@10343string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10344string_PBook2Etxt#:
	; Initializer String PBook.txt
	db "PBook.txt", 0

section .data

@10345string_r#:
	; Initializer String r
	db "r", 0

section .data

@10349string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10350string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10351string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10353string_0A252D24s20252D24s0A#:
	; Initializer String \n%-24s %-24s\n
	db 10, "%-24s %-24s", 10, 0

section .data

@10354string_Name#:
	; Initializer String Name
	db "Name", 0

section .data

@10355string_Phone#:
	; Initializer String Phone
	db "Phone", 0

section .data

@10356string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@10357string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@10358string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@10361string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@10362string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@10371string_25s25s#:
	; Initializer String %s%s
	db "%s%s", 0

section .data

@10372string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@10373string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10374string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@10375string_w#:
	; Initializer String w
	db "w", 0

section .data

@10379string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10380string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10381string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10393string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@10394string_r#:
	; Initializer String r
	db "r", 0

section .data

@10400string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10401string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10402string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10406string_size13A2025i0A#:
	; Initializer String size1: %i\n
	db "size1: %i", 10, 0

section .data

@10412string_index13A2025i3A20value2025f0A#:
	; Initializer String index1: %i: value %f\n
	db "index1: %i: value %f", 10, 0

section .data

@10413string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10414string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@10415string_w#:
	; Initializer String w
	db "w", 0

section .data

@10419string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10420string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10421string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10431string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@10432string_r#:
	; Initializer String r
	db "r", 0

section .data

@10436string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10437string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10438string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10446string_index23A2025i3A20value2025f0A#:
	; Initializer String index2: %i: value %f\n
	db "index2: %i: value %f", 10, 0

section .data

@10448string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10449string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@10450string_r#:
	; Initializer String r
	db "r", 0

section .data

@10454string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10455string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10456string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10464string_index33A2025i3A20value2025f0A#:
	; Initializer String index3: %i: value %f\n
	db "index3: %i: value %f", 10, 0

section .data

@10466string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10467string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@10468string_r#:
	; Initializer String r
	db "r", 0

section .data

@10473string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10474string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10475string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10479string_size43A2025i20total2025i0A#:
	; Initializer String size4: %i total %i\n
	db "size4: %i total %i", 10, 0

section .data

@10489string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10490string_p20213D20NULL#:
	; Initializer String p != NULL
	db "p != NULL", 0

section .data

@10491string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10493string_malloc43A2025u2025u2025u0A#:
	; Initializer String malloc4: %u %u %u\n
	db "malloc4: %u %u %u", 10, 0

section .data

@10497string_index43A2025i3A20value2025f0A#:
	; Initializer String index4: %i: value %f\n
	db "index4: %i: value %f", 10, 0

section .data

@10499string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10504string_Adam20Bertilsson#:
	; Initializer String Adam Bertilsson
	db "Adam Bertilsson", 0

section .data

@10506string_Bertil20Ceasarsson#:
	; Initializer String Bertil Ceasarsson
	db "Bertil Ceasarsson", 0

section .data

@10508string_Ceasar20Davidsson#:
	; Initializer String Ceasar Davidsson
	db "Ceasar Davidsson", 0

section .data

@10563string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@10564string_w#:
	; Initializer String w
	db "w", 0

section .data

@10566string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@10567string_r#:
	; Initializer String r
	db "r", 0

section .data

@10571string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10572string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10573string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10577string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10578string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10579string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10586string_Name20203A2025s0A#:
	; Initializer String Name  : %s\n
	db "Name  : %s", 10, 0

section .data

@10588string_Phone203A2025d0A#:
	; Initializer String Phone : %d\n
	db "Phone : %d", 10, 0

section .data

@10590string_outx2Etxt#:
	; Initializer String outx.txt
	db "outx.txt", 0

section .data

@10591string_r#:
	; Initializer String r
	db "r", 0

section .data

@10595string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10596string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10597string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10603string_fileexists2022X223A2025s0A#:
	; Initializer String fileexists "X": %s\n
	db "fileexists ", 34, "X", 34, ": %s", 10, 0

section .data

@10604string_X#:
	; Initializer String X
	db "X", 0

section .data

@10605string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10606string_No#:
	; Initializer String No
	db "No", 0

section .data

@10608string_fileexists2022Y223A2025s0A#:
	; Initializer String fileexists "Y": %s\n
	db "fileexists ", 34, "Y", 34, ": %s", 10, 0

section .data

@10609string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@10610string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10611string_No#:
	; Initializer String No
	db "No", 0

section .data

@10613string_fileexists2022Main2Easm223A2025s0A#:
	; Initializer String fileexists "Main.asm": %s\n
	db "fileexists ", 34, "Main.asm", 34, ": %s", 10, 0

section .data

@10614string_Main2Easm#:
	; Initializer String Main.asm
	db "Main.asm", 0

section .data

@10615string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10616string_No#:
	; Initializer String No
	db "No", 0

section .data

@10618string_fileexists2022MainX2Easm223A2025s0A#:
	; Initializer String fileexists "MainX.asm": %s\n
	db "fileexists ", 34, "MainX.asm", 34, ": %s", 10, 0

section .data

@10619string_MainX2Easm#:
	; Initializer String MainX.asm
	db "MainX.asm", 0

section .data

@10620string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10621string_No#:
	; Initializer String No
	db "No", 0

section .data

@10623string_fileexists2022Main2Ec223A2025s0A#:
	; Initializer String fileexists "Main.c": %s\n
	db "fileexists ", 34, "Main.c", 34, ": %s", 10, 0

section .data

@10624string_Main2Ec#:
	; Initializer String Main.c
	db "Main.c", 0

section .data

@10625string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10626string_No#:
	; Initializer String No
	db "No", 0

section .data

@10628string_fileexists2022MainX2Ec223A2025s0A#:
	; Initializer String fileexists "MainX.c": %s\n
	db "fileexists ", 34, "MainX.c", 34, ": %s", 10, 0

section .data

@10629string_MainX2Ec#:
	; Initializer String MainX.c
	db "MainX.c", 0

section .data

@10630string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10631string_No#:
	; Initializer String No
	db "No", 0

section .data

@10633string_fileexists2022File2Ec223A2025s0A#:
	; Initializer String fileexists "File.c": %s\n
	db "fileexists ", 34, "File.c", 34, ": %s", 10, 0

section .data

@10634string_File2Ec#:
	; Initializer String File.c
	db "File.c", 0

section .data

@10635string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10636string_No#:
	; Initializer String No
	db "No", 0

section .data

@10638string_fileexists2022File2Ex223A2025s0A#:
	; Initializer String fileexists "File.x": %s\n
	db "fileexists ", 34, "File.x", 34, ": %s", 10, 0

section .data

@10639string_File2Ex#:
	; Initializer String File.x
	db "File.x", 0

section .data

@10640string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10641string_No#:
	; Initializer String No
	db "No", 0

section .data

@10643string_fileexists2022File2Eh223A2025s0A#:
	; Initializer String fileexists "File.h": %s\n
	db "fileexists ", 34, "File.h", 34, ": %s", 10, 0

section .data

@10644string_File2Eh#:
	; Initializer String File.h
	db "File.h", 0

section .data

@10645string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10646string_No#:
	; Initializer String No
	db "No", 0

section .data

@10648string_fileexists2022File2Ey223A2025s0A#:
	; Initializer String fileexists "File.y": %s\n
	db "fileexists ", 34, "File.y", 34, ": %s", 10, 0

section .data

@10649string_File2Ey#:
	; Initializer String File.y
	db "File.y", 0

section .data

@10650string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10651string_No#:
	; Initializer String No
	db "No", 0

section .data

@10653string_fileexists2022File2Ep223A2025s0A#:
	; Initializer String fileexists "File.p": %s\n
	db "fileexists ", 34, "File.p", 34, ": %s", 10, 0

section .data

@10654string_File2Ep#:
	; Initializer String File.p
	db "File.p", 0

section .data

@10655string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10656string_No#:
	; Initializer String No
	db "No", 0

section .data

@10658string_fileexists2022File2Ez223A2025s0A#:
	; Initializer String fileexists "File.z": %s\n
	db "fileexists ", 34, "File.z", 34, ": %s", 10, 0

section .data

@10659string_File2Ez#:
	; Initializer String File.z
	db "File.z", 0

section .data

@10660string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10661string_No#:
	; Initializer String No
	db "No", 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@10480integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@10481integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@10485integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@10498integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 file_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1:
	; Parameter 48 string string_in2Etxt#
	mov qword [rbp + 48], @10254string_in2Etxt#

 file_test$2:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10255string_r#

 file_test$3:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$4:
	; PostCall 24

 file_test$5:
	; GetReturnValue £temporary4396

 file_test$6:
	; Assign inFilePtr £temporary4396
	mov [rbp + 24], rbx

 file_test$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$8:
	; Parameter 56 string string_outX2Etxt#
	mov qword [rbp + 56], @10257string_outX2Etxt#

 file_test$9:
	; Parameter 64 string string_w#
	mov qword [rbp + 64], @10258string_w#

 file_test$10:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$11:
	; PostCall 32

 file_test$12:
	; GetReturnValue £temporary4397

 file_test$13:
	; Assign outFilePtr £temporary4397
	mov [rbp + 32], rbx

 file_test$14:
	; NotEqual 26 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$26

 file_test$15:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$16:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$17:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10262string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$18:
	; Parameter 80 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 80], @10263string_inFilePtr20213D20NULL#

 file_test$19:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10264string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$20:
	; Parameter 96 signed int integral4$14#
	mov dword [rbp + 96], 14

 file_test$21:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$22
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$22:
	; PostCall 40

 file_test$23:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$24:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$25
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$25:
	; PostCall 40

 file_test$26:
	; NotEqual 38 outFilePtr integral8$0#
	cmp qword [rbp + 32], 0
	jne file_test$38

 file_test$27:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$28:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$29:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10268string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$30:
	; Parameter 80 string string_outFilePtr20213D20NULL#
	mov qword [rbp + 80], @10269string_outFilePtr20213D20NULL#

 file_test$31:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10270string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$32:
	; Parameter 96 signed int integral4$15#
	mov dword [rbp + 96], 15

 file_test$33:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$34
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$34:
	; PostCall 40

 file_test$35:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$36:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$37
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$37:
	; PostCall 40

 file_test$38:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$39:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$40:
	; Call 40 feof 0
	mov qword [rbp + 40], file_test$41
	mov [rbp + 48], rbp
	add rbp, 40
	jmp feof

 file_test$41:
	; PostCall 40

 file_test$42:
	; GetReturnValue £temporary4410

 file_test$43:
	; NotEqual 75 £temporary4410 integral4$0#
	cmp ebx, 0
	jne file_test$75

 file_test$44:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$45:
	; Parameter 72 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$46:
	; Parameter 80 string string_25lf#
	mov qword [rbp + 80], @10274string_25lf#

 file_test$47:
	; Address £temporary4413 value
	mov rsi, rbp
	add rsi, 40

 file_test$48:
	; Parameter 88 pointer £temporary4413
	mov [rbp + 88], rsi

 file_test$49:
	; Call 48 fscanf 8
	mov qword [rbp + 48], file_test$50
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$50:
	; PostCall 48

 file_test$51:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$52:
	; Parameter 72 string string_X12025f0A#
	mov qword [rbp + 72], @10275string_X12025f0A#

 file_test$53:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$54:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$55:
	; Parameter 104 double value
	fstp qword [rbp + 104]

 file_test$56:
	; Call 80 sqrt 0
	mov qword [rbp + 80], file_test$57
	mov [rbp + 88], rbp
	add rbp, 80
	jmp sqrt

 file_test$57:
	; PostCall 80

 file_test$58:
	; GetReturnValue £temporary4415

 file_test$59:
	; Parameter 80 double £temporary4415
	fstp qword [rbp + 80]

 file_test$60:
	; Call 48 printf 8
	mov qword [rbp + 48], file_test$61
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$61:
	; PostCall 48

 file_test$62:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$63:
	; Parameter 72 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$64:
	; Parameter 80 string string_X22025f0A#
	mov qword [rbp + 80], @10276string_X22025f0A#

 file_test$65:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$66:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$67:
	; Parameter 112 double value
	fstp qword [rbp + 112]

 file_test$68:
	; Call 88 sqrt 0
	mov qword [rbp + 88], file_test$69
	mov [rbp + 96], rbp
	add rbp, 88
	jmp sqrt

 file_test$69:
	; PostCall 88

 file_test$70:
	; GetReturnValue £temporary4417

 file_test$71:
	; Parameter 88 double £temporary4417
	fstp qword [rbp + 88]

 file_test$72:
	; Call 48 fprintf 8
	mov qword [rbp + 48], file_test$73
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$73:
	; PostCall 48

 file_test$74:
	; Jump 38
	jmp file_test$38

 file_test$75:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$76:
	; Parameter 64 string string_0A#
	mov qword [rbp + 64], @10277string_0A#

 file_test$77:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$78
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$78:
	; PostCall 40

 file_test$79:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$80:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$81:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$82
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$82:
	; PostCall 40

 file_test$83:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$84:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$85:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$86
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$86:
	; PostCall 40

 file_test$87:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$88:
	; Parameter 48 string string_in2Etxt#
	mov qword [rbp + 48], @10278string_in2Etxt#

 file_test$89:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10279string_r#

 file_test$90:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$91:
	; PostCall 24

 file_test$92:
	; GetReturnValue £temporary4422

 file_test$93:
	; Assign inFilePtr £temporary4422
	mov [rbp + 24], rbx

 file_test$94:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$95:
	; Parameter 56 string string_outY2Etxt#
	mov qword [rbp + 56], @10281string_outY2Etxt#

 file_test$96:
	; Parameter 64 string string_w#
	mov qword [rbp + 64], @10282string_w#

 file_test$97:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$98
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$98:
	; PostCall 32

 file_test$99:
	; GetReturnValue £temporary4423

 file_test$100:
	; Assign outFilePtr £temporary4423
	mov [rbp + 32], rbx

 file_test$101:
	; NotEqual 113 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$113

 file_test$102:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$103:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$104:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10286string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$105:
	; Parameter 80 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 80], @10287string_inFilePtr20213D20NULL#

 file_test$106:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10288string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$107:
	; Parameter 96 signed int integral4$34#
	mov dword [rbp + 96], 34

 file_test$108:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$109
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$109:
	; PostCall 40

 file_test$110:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$111:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$112
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$112:
	; PostCall 40

 file_test$113:
	; NotEqual 125 outFilePtr integral8$0#
	cmp qword [rbp + 32], 0
	jne file_test$125

 file_test$114:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$115:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$116:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10292string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$117:
	; Parameter 80 string string_outFilePtr20213D20NULL#
	mov qword [rbp + 80], @10293string_outFilePtr20213D20NULL#

 file_test$118:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10294string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$119:
	; Parameter 96 signed int integral4$35#
	mov dword [rbp + 96], 35

 file_test$120:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$121
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$121:
	; PostCall 40

 file_test$122:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$123:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$124
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$124:
	; PostCall 40

 file_test$125:
	; Assign size integral4$0#
	mov dword [rbp + 40], 0

 file_test$126:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$127:
	; Parameter 72 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$128:
	; Parameter 80 string string_25i#
	mov qword [rbp + 80], @10299string_25i#

 file_test$129:
	; Address £temporary4436 size
	mov rsi, rbp
	add rsi, 40

 file_test$130:
	; Parameter 88 pointer £temporary4436
	mov [rbp + 88], rsi

 file_test$131:
	; Call 48 fscanf 8
	mov qword [rbp + 48], file_test$132
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$132:
	; PostCall 48

 file_test$133:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$134:
	; Parameter 72 string string_size2025i0A#
	mov qword [rbp + 72], @10300string_size2025i0A#

 file_test$135:
	; Parameter 80 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 file_test$136:
	; Call 48 printf 4
	mov qword [rbp + 48], file_test$137
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$137:
	; PostCall 48

 file_test$138:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$139:
	; Parameter 72 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$140:
	; Parameter 80 string string_Y20size2025i0A#
	mov qword [rbp + 80], @10301string_Y20size2025i0A#

 file_test$141:
	; Parameter 88 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 file_test$142:
	; Call 48 fprintf 4
	mov qword [rbp + 48], file_test$143
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp fprintf

 file_test$143:
	; PostCall 48

 file_test$144:
	; Assign index integral4$0#
	mov dword [rbp + 44], 0

 file_test$145:
	; GreaterThanEqual 178 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge file_test$178

 file_test$146:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$147:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$148:
	; Parameter 88 string string_25lf#
	mov qword [rbp + 88], @10305string_25lf#

 file_test$149:
	; Address £temporary4442 value
	mov rsi, rbp
	add rsi, 48

 file_test$150:
	; Parameter 96 pointer £temporary4442
	mov [rbp + 96], rsi

 file_test$151:
	; Call 56 fscanf 8
	mov qword [rbp + 56], file_test$152
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$152:
	; PostCall 56

 file_test$153:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$154:
	; Parameter 80 string string_Y12025f0A#
	mov qword [rbp + 80], @10306string_Y12025f0A#

 file_test$155:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$156:
	; PushFloat value
	fld qword [rbp + 48]

 file_test$157:
	; Parameter 112 double value
	fstp qword [rbp + 112]

 file_test$158:
	; Call 88 sqrt 0
	mov qword [rbp + 88], file_test$159
	mov [rbp + 96], rbp
	add rbp, 88
	jmp sqrt

 file_test$159:
	; PostCall 88

 file_test$160:
	; GetReturnValue £temporary4444

 file_test$161:
	; Parameter 88 double £temporary4444
	fstp qword [rbp + 88]

 file_test$162:
	; Call 56 printf 8
	mov qword [rbp + 56], file_test$163
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$163:
	; PostCall 56

 file_test$164:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$165:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$166:
	; Parameter 88 string string_Y22025f0A#
	mov qword [rbp + 88], @10307string_Y22025f0A#

 file_test$167:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$168:
	; PushFloat value
	fld qword [rbp + 48]

 file_test$169:
	; Parameter 120 double value
	fstp qword [rbp + 120]

 file_test$170:
	; Call 96 sqrt 0
	mov qword [rbp + 96], file_test$171
	mov [rbp + 104], rbp
	add rbp, 96
	jmp sqrt

 file_test$171:
	; PostCall 96

 file_test$172:
	; GetReturnValue £temporary4446

 file_test$173:
	; Parameter 96 double £temporary4446
	fstp qword [rbp + 96]

 file_test$174:
	; Call 56 fprintf 8
	mov qword [rbp + 56], file_test$175
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$175:
	; PostCall 56

 file_test$176:
	; Add index index integral4$1#
	inc dword [rbp + 44]

 file_test$177:
	; Jump 145
	jmp file_test$145

 file_test$178:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$179:
	; Parameter 72 string string_0A#
	mov qword [rbp + 72], @10308string_0A#

 file_test$180:
	; Call 48 printf 0
	mov qword [rbp + 48], file_test$181
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 file_test$181:
	; PostCall 48

 file_test$182:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$183:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$184:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$185
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$185:
	; PostCall 40

 file_test$186:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$187:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$188:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$189
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$189:
	; PostCall 40

 file_test$190:
	; Assign sourceFile string_Y#
	mov qword [rbp + 24], @10309string_Y#

 file_test$191:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$192:
	; Parameter 56 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$193:
	; Call 32 remove 0
	mov qword [rbp + 32], file_test$194
	mov [rbp + 40], rbp
	add rbp, 32
	jmp remove

 file_test$194:
	; PostCall 32

 file_test$195:
	; GetReturnValue £temporary4451

 file_test$196:
	; NotEqual 203 £temporary4451 integral4$0#
	cmp ebx, 0
	jne file_test$203

 file_test$197:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$198:
	; Parameter 56 string string_2225s2220has20been20removed0A#
	mov qword [rbp + 56], @10312string_2225s2220has20been20removed0A#

 file_test$199:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$200:
	; Call 32 printf 8
	mov qword [rbp + 32], file_test$201
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$201:
	; PostCall 32

 file_test$202:
	; Jump 215
	jmp file_test$215

 file_test$203:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$204:
	; Parameter 56 string string_Error202225s222025i3A2025s2E0A#
	mov qword [rbp + 56], @10313string_Error202225s222025i3A2025s2E0A#

 file_test$205:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$206:
	; Parameter 72 signed int errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$207:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$208:
	; Parameter 100 signed int errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$209:
	; Call 76 strerror 0
	mov qword [rbp + 76], file_test$210
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$210:
	; PostCall 76

 file_test$211:
	; GetReturnValue £temporary4454

 file_test$212:
	; Parameter 76 pointer £temporary4454
	mov [rbp + 76], rbx

 file_test$213:
	; Call 32 printf 20
	mov qword [rbp + 32], file_test$214
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$214:
	; PostCall 32

 file_test$215:
	; Assign sourceFile string_X#
	mov qword [rbp + 24], @10314string_X#

 file_test$216:
	; Assign targetFile string_Y#
	mov qword [rbp + 32], @10316string_Y#

 file_test$217:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$218:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$219:
	; Parameter 72 string string_w#
	mov qword [rbp + 72], @10318string_w#

 file_test$220:
	; Call 40 fopen 0
	mov qword [rbp + 40], file_test$221
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$221:
	; PostCall 40

 file_test$222:
	; GetReturnValue £temporary4458

 file_test$223:
	; Assign filePtr £temporary4458
	mov [rbp + 40], rbx

 file_test$224:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$225:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$226:
	; Parameter 80 string string_Hello20X#
	mov qword [rbp + 80], @10320string_Hello20X#

 file_test$227:
	; Call 48 fprintf 0
	mov qword [rbp + 48], file_test$228
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp fprintf

 file_test$228:
	; PostCall 48

 file_test$229:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$230:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$231:
	; Call 48 fclose 0
	mov qword [rbp + 48], file_test$232
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fclose

 file_test$232:
	; PostCall 48

 file_test$233:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$234:
	; Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$235:
	; Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$236:
	; Call 48 rename 0
	mov qword [rbp + 48], file_test$237
	mov [rbp + 56], rbp
	add rbp, 48
	jmp rename

 file_test$237:
	; PostCall 48

 file_test$238:
	; GetReturnValue £temporary4461

 file_test$239:
	; NotEqual 247 £temporary4461 integral4$0#
	cmp ebx, 0
	jne file_test$247

 file_test$240:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$241:
	; Parameter 72 string string_2225s2220has20been20renamed20to202225s222E0A#
	mov qword [rbp + 72], @10322string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$242:
	; Parameter 80 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$243:
	; Parameter 88 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$244:
	; Call 48 printf 16
	mov qword [rbp + 48], file_test$245
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$245:
	; PostCall 48

 file_test$246:
	; Jump 260
	jmp file_test$260

 file_test$247:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$248:
	; Parameter 72 string string_Error202225s22202225s222025i3A2025s2E0A#
	mov qword [rbp + 72], @10323string_Error202225s22202225s222025i3A2025s2E0A#

 file_test$249:
	; Parameter 80 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$250:
	; Parameter 88 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$251:
	; Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 file_test$252:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$253:
	; Parameter 124 signed int errno
	mov eax, [errno]
	mov [rbp + 124], eax

 file_test$254:
	; Call 100 strerror 0
	mov qword [rbp + 100], file_test$255
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 file_test$255:
	; PostCall 100

 file_test$256:
	; GetReturnValue £temporary4464

 file_test$257:
	; Parameter 100 pointer £temporary4464
	mov [rbp + 100], rbx

 file_test$258:
	; Call 48 printf 28
	mov qword [rbp + 48], file_test$259
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

 file_test$259:
	; PostCall 48

 file_test$260:
	; Assign sourceFile string_X2#
	mov qword [rbp + 24], @10324string_X2#

 file_test$261:
	; Assign targetFile string_Y2#
	mov qword [rbp + 32], @10326string_Y2#

 file_test$262:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$263:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$264:
	; Parameter 72 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$265:
	; Call 40 rename 0
	mov qword [rbp + 40], file_test$266
	mov [rbp + 48], rbp
	add rbp, 40
	jmp rename

 file_test$266:
	; PostCall 40

 file_test$267:
	; GetReturnValue £temporary4468

 file_test$268:
	; NotEqual 276 £temporary4468 integral4$0#
	cmp ebx, 0
	jne file_test$276

 file_test$269:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$270:
	; Parameter 64 string string_2225s2220has20been20renamed20to202225s222E0A#
	mov qword [rbp + 64], @10329string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$271:
	; Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$272:
	; Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$273:
	; Call 40 printf 16
	mov qword [rbp + 40], file_test$274
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$274:
	; PostCall 40

 file_test$275:
	; Jump 289
	jmp file_test$289

 file_test$276:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$277:
	; Parameter 64 string string_Error202225s22202225s222025i3A2025s2E0A#
	mov qword [rbp + 64], @10330string_Error202225s22202225s222025i3A2025s2E0A#

 file_test$278:
	; Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$279:
	; Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$280:
	; Parameter 88 signed int errno
	mov eax, [errno]
	mov [rbp + 88], eax

 file_test$281:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$282:
	; Parameter 116 signed int errno
	mov eax, [errno]
	mov [rbp + 116], eax

 file_test$283:
	; Call 92 strerror 0
	mov qword [rbp + 92], file_test$284
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

 file_test$284:
	; PostCall 92

 file_test$285:
	; GetReturnValue £temporary4471

 file_test$286:
	; Parameter 92 pointer £temporary4471
	mov [rbp + 92], rbx

 file_test$287:
	; Call 40 printf 28
	mov qword [rbp + 40], file_test$288
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 file_test$288:
	; PostCall 40

 file_test$289:
	; Assign targetFile string_Z#
	mov qword [rbp + 24], @10331string_Z#

 file_test$290:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$291:
	; Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$292:
	; Parameter 64 string string_w#
	mov qword [rbp + 64], @10333string_w#

 file_test$293:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$294
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$294:
	; PostCall 32

 file_test$295:
	; GetReturnValue £temporary4475

 file_test$296:
	; Assign filePtr £temporary4475
	mov [rbp + 32], rbx

 file_test$297:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$298:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$299:
	; Parameter 72 string string_Hello20Z#
	mov qword [rbp + 72], @10335string_Hello20Z#

 file_test$300:
	; Call 40 fprintf 0
	mov qword [rbp + 40], file_test$301
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 file_test$301:
	; PostCall 40

 file_test$302:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$303:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$304:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$305
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$305:
	; PostCall 40

 file_test$306:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$307:
	; Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$308:
	; Call 40 remove 0
	mov qword [rbp + 40], file_test$309
	mov [rbp + 48], rbp
	add rbp, 40
	jmp remove

 file_test$309:
	; PostCall 40

 file_test$310:
	; GetReturnValue £temporary4478

 file_test$311:
	; NotEqual 318 £temporary4478 integral4$0#
	cmp ebx, 0
	jne file_test$318

 file_test$312:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$313:
	; Parameter 64 string string_2225s2220has20been20removed2E0A#
	mov qword [rbp + 64], @10337string_2225s2220has20been20removed2E0A#

 file_test$314:
	; Parameter 72 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$315:
	; Call 40 printf 8
	mov qword [rbp + 40], file_test$316
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$316:
	; PostCall 40

 file_test$317:
	; Jump 330
	jmp file_test$330

 file_test$318:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$319:
	; Parameter 64 string string_Error202225s222025i3A2025s2E0A#
	mov qword [rbp + 64], @10338string_Error202225s222025i3A2025s2E0A#

 file_test$320:
	; Parameter 72 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$321:
	; Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 file_test$322:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$323:
	; Parameter 108 signed int errno
	mov eax, [errno]
	mov [rbp + 108], eax

 file_test$324:
	; Call 84 strerror 0
	mov qword [rbp + 84], file_test$325
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 file_test$325:
	; PostCall 84

 file_test$326:
	; GetReturnValue £temporary4481

 file_test$327:
	; Parameter 84 pointer £temporary4481
	mov [rbp + 84], rbx

 file_test$328:
	; Call 40 printf 20
	mov qword [rbp + 40], file_test$329
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$329:
	; PostCall 40

 file_test$330:
	; Assign targetFile string_Z2#
	mov qword [rbp + 24], @10339string_Z2#

 file_test$331:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$332:
	; Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$333:
	; Call 32 remove 0
	mov qword [rbp + 32], file_test$334
	mov [rbp + 40], rbp
	add rbp, 32
	jmp remove

 file_test$334:
	; PostCall 32

 file_test$335:
	; GetReturnValue £temporary4485

 file_test$336:
	; NotEqual 343 £temporary4485 integral4$0#
	cmp ebx, 0
	jne file_test$343

 file_test$337:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$338:
	; Parameter 56 string string_2225s2220has20been20removed2E0A#
	mov qword [rbp + 56], @10342string_2225s2220has20been20removed2E0A#

 file_test$339:
	; Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$340:
	; Call 32 printf 8
	mov qword [rbp + 32], file_test$341
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$341:
	; PostCall 32

 file_test$342:
	; Jump 355
	jmp file_test$355

 file_test$343:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$344:
	; Parameter 56 string string_Error202225s222025i3A2025s2E0A#
	mov qword [rbp + 56], @10343string_Error202225s222025i3A2025s2E0A#

 file_test$345:
	; Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$346:
	; Parameter 72 signed int errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$347:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$348:
	; Parameter 100 signed int errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$349:
	; Call 76 strerror 0
	mov qword [rbp + 76], file_test$350
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$350:
	; PostCall 76

 file_test$351:
	; GetReturnValue £temporary4488

 file_test$352:
	; Parameter 76 pointer £temporary4488
	mov [rbp + 76], rbx

 file_test$353:
	; Call 32 printf 20
	mov qword [rbp + 32], file_test$354
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$354:
	; PostCall 32

 file_test$355:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$356:
	; Parameter 48 string string_PBook2Etxt#
	mov qword [rbp + 48], @10344string_PBook2Etxt#

 file_test$357:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10345string_r#

 file_test$358:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$359
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$359:
	; PostCall 24

 file_test$360:
	; GetReturnValue £temporary4492

 file_test$361:
	; Assign inFilePtr £temporary4492
	mov [rbp + 24], rbx

 file_test$362:
	; NotEqual 374 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$374

 file_test$363:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$364:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$365:
	; Parameter 64 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10349string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$366:
	; Parameter 72 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10350string_inFilePtr20213D20NULL#

 file_test$367:
	; Parameter 80 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10351string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$368:
	; Parameter 88 signed int integral4$119#
	mov dword [rbp + 88], 119

 file_test$369:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$370
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$370:
	; PostCall 32

 file_test$371:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$372:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$373
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$373:
	; PostCall 32

 file_test$374:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$375:
	; Parameter 56 string string_0A252D24s20252D24s0A#
	mov qword [rbp + 56], @10353string_0A252D24s20252D24s0A#

 file_test$376:
	; Parameter 64 string string_Name#
	mov qword [rbp + 64], @10354string_Name#

 file_test$377:
	; Parameter 72 string string_Phone#
	mov qword [rbp + 72], @10355string_Phone#

 file_test$378:
	; Call 32 printf 16
	mov qword [rbp + 32], file_test$379
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$379:
	; PostCall 32

 file_test$380:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$381:
	; Parameter 56 string string_252D24s20252D24s0A#
	mov qword [rbp + 56], @10356string_252D24s20252D24s0A#

 file_test$382:
	; Parameter 64 string string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#
	mov qword [rbp + 64], @10357string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$383:
	; Parameter 72 string string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#
	mov qword [rbp + 72], @10358string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$384:
	; Call 32 printf 16
	mov qword [rbp + 32], file_test$385
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$385:
	; PostCall 32

 file_test$386:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$387:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$388:
	; Parameter 72 string string_25i#
	mov qword [rbp + 72], @10361string_25i#

 file_test$389:
	; Address £temporary4501 size
	mov rsi, rbp
	add rsi, 36

 file_test$390:
	; Parameter 80 pointer £temporary4501
	mov [rbp + 80], rsi

 file_test$391:
	; Call 40 fscanf 8
	mov qword [rbp + 40], file_test$392
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$392:
	; PostCall 40

 file_test$393:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$394:
	; Parameter 64 string string_size2025i0A#
	mov qword [rbp + 64], @10362string_size2025i0A#

 file_test$395:
	; Parameter 72 signed int size
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 file_test$396:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$397
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$397:
	; PostCall 40

 file_test$398:
	; Assign count integral4$0#
	mov dword [rbp + 32], 0

 file_test$399:
	; GreaterThanEqual 415 count size
	mov eax, [rbp + 36]
	cmp [rbp + 32], eax
	jge file_test$415

 file_test$400:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$401:
	; Parameter 104 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 104], rax

 file_test$402:
	; Parameter 112 string string_25s25s#
	mov qword [rbp + 112], @10371string_25s25s#

 file_test$403:
	; Parameter 120 array name
	mov [rbp + 120], rbp
	add qword [rbp + 120], 40

 file_test$404:
	; Parameter 128 array phone
	mov [rbp + 128], rbp
	add qword [rbp + 128], 60

 file_test$405:
	; Call 80 fscanf 16
	mov qword [rbp + 80], file_test$406
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

 file_test$406:
	; PostCall 80

 file_test$407:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$408:
	; Parameter 104 string string_252D24s20252D24s0A#
	mov qword [rbp + 104], @10372string_252D24s20252D24s0A#

 file_test$409:
	; Parameter 112 array name
	mov [rbp + 112], rbp
	add qword [rbp + 112], 40

 file_test$410:
	; Parameter 120 array phone
	mov [rbp + 120], rbp
	add qword [rbp + 120], 60

 file_test$411:
	; Call 80 printf 16
	mov qword [rbp + 80], file_test$412
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$412:
	; PostCall 80

 file_test$413:
	; Add count count integral4$1#
	inc dword [rbp + 32]

 file_test$414:
	; Jump 399
	jmp file_test$399

 file_test$415:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$416:
	; Parameter 56 string string_0A#
	mov qword [rbp + 56], @10373string_0A#

 file_test$417:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$418
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$418:
	; PostCall 32

 file_test$419:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$420:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$421:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$422
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$422:
	; PostCall 32

 file_test$423:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$424:
	; Parameter 48 string string_TestX2Ebin#
	mov qword [rbp + 48], @10374string_TestX2Ebin#

 file_test$425:
	; Parameter 56 string string_w#
	mov qword [rbp + 56], @10375string_w#

 file_test$426:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$427
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$427:
	; PostCall 24

 file_test$428:
	; GetReturnValue £temporary4510

 file_test$429:
	; Assign outFilePtr £temporary4510
	mov [rbp + 24], rbx

 file_test$430:
	; NotEqual 442 outFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$442

 file_test$431:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$432:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$433:
	; Parameter 64 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10379string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$434:
	; Parameter 72 string string_outFilePtr20213D20NULL#
	mov qword [rbp + 72], @10380string_outFilePtr20213D20NULL#

 file_test$435:
	; Parameter 80 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10381string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$436:
	; Parameter 88 signed int integral4$171#
	mov dword [rbp + 88], 171

 file_test$437:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$438
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$438:
	; PostCall 32

 file_test$439:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$440:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$441
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$441:
	; PostCall 32

 file_test$442:
	; Assign size integral4$10#
	mov dword [rbp + 32], 10

 file_test$443:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$444:
	; Address £temporary4517 size
	mov rsi, rbp
	add rsi, 32

 file_test$445:
	; Parameter 64 pointer £temporary4517
	mov [rbp + 64], rsi

 file_test$446:
	; Parameter 72 signed int integral4$4#
	mov dword [rbp + 72], 4

 file_test$447:
	; Parameter 76 signed int integral4$1#
	mov dword [rbp + 76], 1

 file_test$448:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$449:
	; Call 40 fwrite 0
	mov qword [rbp + 40], file_test$450
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fwrite

 file_test$450:
	; PostCall 40

 file_test$451:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 file_test$452:
	; GreaterThanEqual 466 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$466

 file_test$453:
	; Multiply £temporary4521 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$454:
	; IntegralToFloating £temporary4522 £temporary4521
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$455:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$456:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$457:
	; Address £temporary4523 value
	mov rsi, rbp
	add rsi, 40

 file_test$458:
	; Parameter 72 pointer £temporary4523
	mov [rbp + 72], rsi

 file_test$459:
	; Parameter 80 signed int integral4$8#
	mov dword [rbp + 80], 8

 file_test$460:
	; Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 file_test$461:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$462:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$463
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$463:
	; PostCall 48

 file_test$464:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 file_test$465:
	; Jump 452
	jmp file_test$452

 file_test$466:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$467:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$468:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$469
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$469:
	; PostCall 40

 file_test$470:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$471:
	; Parameter 48 string string_TestX2Ebin#
	mov qword [rbp + 48], @10393string_TestX2Ebin#

 file_test$472:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10394string_r#

 file_test$473:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$474
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$474:
	; PostCall 24

 file_test$475:
	; GetReturnValue £temporary4526

 file_test$476:
	; Assign inFilePtr £temporary4526
	mov [rbp + 24], rbx

 file_test$477:
	; NotEqual 489 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$489

 file_test$478:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$479:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$480:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10400string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$481:
	; Parameter 80 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 80], @10401string_inFilePtr20213D20NULL#

 file_test$482:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10402string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$483:
	; Parameter 96 signed int integral4$188#
	mov dword [rbp + 96], 188

 file_test$484:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$485
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$485:
	; PostCall 40

 file_test$486:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$487:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$488
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$488:
	; PostCall 40

 file_test$489:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$490:
	; Address £temporary4533 size
	mov rsi, rbp
	add rsi, 32

 file_test$491:
	; Parameter 64 pointer £temporary4533
	mov [rbp + 64], rsi

 file_test$492:
	; Parameter 72 signed int integral4$4#
	mov dword [rbp + 72], 4

 file_test$493:
	; Parameter 76 signed int integral4$1#
	mov dword [rbp + 76], 1

 file_test$494:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$495:
	; Call 40 fread 0
	mov qword [rbp + 40], file_test$496
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fread

 file_test$496:
	; PostCall 40

 file_test$497:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$498:
	; Parameter 64 string string_size13A2025i0A#
	mov qword [rbp + 64], @10406string_size13A2025i0A#

 file_test$499:
	; Parameter 72 signed int size
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 file_test$500:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$501
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$501:
	; PostCall 40

 file_test$502:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 file_test$503:
	; GreaterThanEqual 521 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$521

 file_test$504:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$505:
	; Address £temporary4538 value
	mov rsi, rbp
	add rsi, 40

 file_test$506:
	; Parameter 72 pointer £temporary4538
	mov [rbp + 72], rsi

 file_test$507:
	; Parameter 80 signed int integral4$8#
	mov dword [rbp + 80], 8

 file_test$508:
	; Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 file_test$509:
	; Parameter 88 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$510:
	; Call 48 fread 0
	mov qword [rbp + 48], file_test$511
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fread

 file_test$511:
	; PostCall 48

 file_test$512:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$513:
	; Parameter 72 string string_index13A2025i3A20value2025f0A#
	mov qword [rbp + 72], @10412string_index13A2025i3A20value2025f0A#

 file_test$514:
	; Parameter 80 signed int index
	mov eax, [rbp + 36]
	mov [rbp + 80], eax

 file_test$515:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$516:
	; Parameter 84 double value
	fstp qword [rbp + 84]

 file_test$517:
	; Call 48 printf 12
	mov qword [rbp + 48], file_test$518
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$518:
	; PostCall 48

 file_test$519:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 file_test$520:
	; Jump 503
	jmp file_test$503

 file_test$521:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$522:
	; Parameter 64 string string_0A#
	mov qword [rbp + 64], @10413string_0A#

 file_test$523:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$524
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$524:
	; PostCall 40

 file_test$525:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$526:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$527:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$528
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$528:
	; PostCall 40

 file_test$529:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$530:
	; Parameter 48 string string_TestY2Ebin#
	mov qword [rbp + 48], @10414string_TestY2Ebin#

 file_test$531:
	; Parameter 56 string string_w#
	mov qword [rbp + 56], @10415string_w#

 file_test$532:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$533
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$533:
	; PostCall 24

 file_test$534:
	; GetReturnValue £temporary4543

 file_test$535:
	; Assign outFilePtr £temporary4543
	mov [rbp + 24], rbx

 file_test$536:
	; NotEqual 548 outFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$548

 file_test$537:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$538:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$539:
	; Parameter 64 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10419string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$540:
	; Parameter 72 string string_outFilePtr20213D20NULL#
	mov qword [rbp + 72], @10420string_outFilePtr20213D20NULL#

 file_test$541:
	; Parameter 80 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10421string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$542:
	; Parameter 88 signed int integral4$203#
	mov dword [rbp + 88], 203

 file_test$543:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$544
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$544:
	; PostCall 32

 file_test$545:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$546:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$547
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$547:
	; PostCall 32

 file_test$548:
	; Assign size integral4$10#
	mov dword [rbp + 32], 10

 file_test$549:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 file_test$550:
	; GreaterThanEqual 564 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$564

 file_test$551:
	; Multiply £temporary4552 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$552:
	; IntegralToFloating £temporary4553 £temporary4552
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$553:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$554:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$555:
	; Address £temporary4554 value
	mov rsi, rbp
	add rsi, 40

 file_test$556:
	; Parameter 72 pointer £temporary4554
	mov [rbp + 72], rsi

 file_test$557:
	; Parameter 80 signed int integral4$8#
	mov dword [rbp + 80], 8

 file_test$558:
	; Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 file_test$559:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$560:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$561
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$561:
	; PostCall 48

 file_test$562:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 file_test$563:
	; Jump 550
	jmp file_test$550

 file_test$564:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$565:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$566:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$567
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$567:
	; PostCall 40

 file_test$568:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$569:
	; Parameter 48 string string_TestY2Ebin#
	mov qword [rbp + 48], @10431string_TestY2Ebin#

 file_test$570:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10432string_r#

 file_test$571:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$572
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$572:
	; PostCall 24

 file_test$573:
	; GetReturnValue £temporary4557

 file_test$574:
	; Assign inFilePtr £temporary4557
	mov [rbp + 24], rbx

 file_test$575:
	; NotEqual 587 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$587

 file_test$576:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$577:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$578:
	; Parameter 64 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10436string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$579:
	; Parameter 72 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10437string_inFilePtr20213D20NULL#

 file_test$580:
	; Parameter 80 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10438string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$581:
	; Parameter 88 signed int integral4$217#
	mov dword [rbp + 88], 217

 file_test$582:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$583
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$583:
	; PostCall 32

 file_test$584:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$585:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$586
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$586:
	; PostCall 32

 file_test$587:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 file_test$588:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$589:
	; Address £temporary4564 value
	mov rsi, rbp
	add rsi, 36

 file_test$590:
	; Parameter 68 pointer £temporary4564
	mov [rbp + 68], rsi

 file_test$591:
	; Parameter 76 signed int integral4$8#
	mov dword [rbp + 76], 8

 file_test$592:
	; Parameter 80 signed int integral4$1#
	mov dword [rbp + 80], 1

 file_test$593:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$594:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$595
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$595:
	; PostCall 44

 file_test$596:
	; GetReturnValue £temporary4565

 file_test$597:
	; LessThanEqual 608 £temporary4565 integral4$0#
	cmp ebx, 0
	jle file_test$608

 file_test$598:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$599:
	; Parameter 68 string string_index23A2025i3A20value2025f0A#
	mov qword [rbp + 68], @10446string_index23A2025i3A20value2025f0A#

 file_test$600:
	; Assign £temporary4567 index
	mov eax, [rbp + 32]

 file_test$601:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 file_test$602:
	; Parameter 76 signed int £temporary4567
	mov [rbp + 76], eax

 file_test$603:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$604:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$605:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$606
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$606:
	; PostCall 44

 file_test$607:
	; Jump 588
	jmp file_test$588

 file_test$608:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$609:
	; Parameter 56 string string_0A#
	mov qword [rbp + 56], @10448string_0A#

 file_test$610:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$611
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$611:
	; PostCall 32

 file_test$612:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$613:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$614:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$615
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$615:
	; PostCall 32

 file_test$616:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$617:
	; Parameter 48 string string_TestY2Ebin#
	mov qword [rbp + 48], @10449string_TestY2Ebin#

 file_test$618:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10450string_r#

 file_test$619:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$620
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$620:
	; PostCall 24

 file_test$621:
	; GetReturnValue £temporary4572

 file_test$622:
	; Assign inFilePtr £temporary4572
	mov [rbp + 24], rbx

 file_test$623:
	; NotEqual 635 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$635

 file_test$624:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$625:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$626:
	; Parameter 64 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10454string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$627:
	; Parameter 72 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10455string_inFilePtr20213D20NULL#

 file_test$628:
	; Parameter 80 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10456string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$629:
	; Parameter 88 signed int integral4$232#
	mov dword [rbp + 88], 232

 file_test$630:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$631
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$631:
	; PostCall 32

 file_test$632:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$633:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$634
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$634:
	; PostCall 32

 file_test$635:
	; Assign index integral4$0#
	mov dword [rbp + 32], 0

 file_test$636:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$637:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$638:
	; Call 36 feof 0
	mov qword [rbp + 36], file_test$639
	mov [rbp + 44], rbp
	add rbp, 36
	jmp feof

 file_test$639:
	; PostCall 36

 file_test$640:
	; GetReturnValue £temporary4579

 file_test$641:
	; NotEqual 660 £temporary4579 integral4$0#
	cmp ebx, 0
	jne file_test$660

 file_test$642:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$643:
	; Address £temporary4582 value
	mov rsi, rbp
	add rsi, 36

 file_test$644:
	; Parameter 68 pointer £temporary4582
	mov [rbp + 68], rsi

 file_test$645:
	; Parameter 76 signed int integral4$8#
	mov dword [rbp + 76], 8

 file_test$646:
	; Parameter 80 signed int integral4$1#
	mov dword [rbp + 80], 1

 file_test$647:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$648:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$649
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$649:
	; PostCall 44

 file_test$650:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$651:
	; Parameter 68 string string_index33A2025i3A20value2025f0A#
	mov qword [rbp + 68], @10464string_index33A2025i3A20value2025f0A#

 file_test$652:
	; Assign £temporary4584 index
	mov eax, [rbp + 32]

 file_test$653:
	; Add index index integral4$1#
	inc dword [rbp + 32]

 file_test$654:
	; Parameter 76 signed int £temporary4584
	mov [rbp + 76], eax

 file_test$655:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$656:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$657:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$658
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$658:
	; PostCall 44

 file_test$659:
	; Jump 636
	jmp file_test$636

 file_test$660:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$661:
	; Parameter 56 string string_0A#
	mov qword [rbp + 56], @10466string_0A#

 file_test$662:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$663
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$663:
	; PostCall 32

 file_test$664:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$665:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$666:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$667
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$667:
	; PostCall 32

 file_test$668:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$669:
	; Parameter 48 string string_TestX2Ebin#
	mov qword [rbp + 48], @10467string_TestX2Ebin#

 file_test$670:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10468string_r#

 file_test$671:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$672
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$672:
	; PostCall 24

 file_test$673:
	; GetReturnValue £temporary4589

 file_test$674:
	; Assign inFilePtr £temporary4589
	mov [rbp + 24], rbx

 file_test$675:
	; NotEqual 687 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$687

 file_test$676:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$677:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 file_test$678:
	; Parameter 68 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], @10473string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$679:
	; Parameter 76 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 76], @10474string_inFilePtr20213D20NULL#

 file_test$680:
	; Parameter 84 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 84], @10475string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$681:
	; Parameter 92 signed int integral4$250#
	mov dword [rbp + 92], 250

 file_test$682:
	; Call 36 fprintf 20
	mov qword [rbp + 36], file_test$683
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$683:
	; PostCall 36

 file_test$684:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$685:
	; Call 36 abort 0
	mov qword [rbp + 36], file_test$686
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 file_test$686:
	; PostCall 36

 file_test$687:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$688:
	; Address £temporary4596 size
	mov rsi, rbp
	add rsi, 32

 file_test$689:
	; Parameter 60 pointer £temporary4596
	mov [rbp + 60], rsi

 file_test$690:
	; Parameter 68 signed int integral4$4#
	mov dword [rbp + 68], 4

 file_test$691:
	; Parameter 72 signed int integral4$1#
	mov dword [rbp + 72], 1

 file_test$692:
	; Parameter 76 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 file_test$693:
	; Call 36 fread 0
	mov qword [rbp + 36], file_test$694
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fread

 file_test$694:
	; PostCall 36

 file_test$695:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$696:
	; Parameter 60 string string_size43A2025i20total2025i0A#
	mov qword [rbp + 60], @10479string_size43A2025i20total2025i0A#

 file_test$697:
	; Parameter 68 signed int size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$698:
	; Multiply £temporary4598 size integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@10480integral4$8#]

 file_test$699:
	; Parameter 72 signed int £temporary4598
	mov [rbp + 72], eax

 file_test$700:
	; Call 36 printf 8
	mov qword [rbp + 36], file_test$701
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$701:
	; PostCall 36

 file_test$702:
	; Multiply total size integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@10481integral4$8#]
	mov [rbp + 36], eax

 file_test$703:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$704:
	; Parameter 68 signed int total
	mov eax, [rbp + 36]
	mov [rbp + 68], eax

 file_test$705:
	; Call 44 malloc 0
	mov qword [rbp + 44], file_test$706
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 file_test$706:
	; PostCall 44

 file_test$707:
	; GetReturnValue £temporary4601

 file_test$708:
	; Assign p £temporary4601
	mov [rbp + 44], rbx

 file_test$709:
	; Multiply £temporary4602 size integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@10485integral4$8#]

 file_test$710:
	; IntegralToIntegral £temporary4603 £temporary4602
	mov rbx, 4294967295
	and rax, rbx

 file_test$711:
	; Add endPtr p £temporary4603
	mov rbx, [rbp + 44]
	add rbx, rax
	mov [rbp + 52], rbx

 file_test$712:
	; NotEqual 724 p integral8$0#
	cmp qword [rbp + 44], 0
	jne file_test$724

 file_test$713:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$714:
	; Parameter 84 pointer stderr
	mov rax, [stderr]
	mov [rbp + 84], rax

 file_test$715:
	; Parameter 92 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 92], @10489string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$716:
	; Parameter 100 string string_p20213D20NULL#
	mov qword [rbp + 100], @10490string_p20213D20NULL#

 file_test$717:
	; Parameter 108 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 108], @10491string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$718:
	; Parameter 116 signed int integral4$257#
	mov dword [rbp + 116], 257

 file_test$719:
	; Call 60 fprintf 20
	mov qword [rbp + 60], file_test$720
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$720:
	; PostCall 60

 file_test$721:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$722:
	; Call 60 abort 0
	mov qword [rbp + 60], file_test$723
	mov [rbp + 68], rbp
	add rbp, 60
	jmp abort

 file_test$723:
	; PostCall 60

 file_test$724:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$725:
	; Parameter 84 string string_malloc43A2025u2025u2025u0A#
	mov qword [rbp + 84], @10493string_malloc43A2025u2025u2025u0A#

 file_test$726:
	; Parameter 92 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 92], rax

 file_test$727:
	; Parameter 100 signed int total
	mov eax, [rbp + 36]
	mov [rbp + 100], eax

 file_test$728:
	; Parameter 104 pointer endPtr
	mov rax, [rbp + 52]
	mov [rbp + 104], rax

 file_test$729:
	; Call 60 printf 20
	mov qword [rbp + 60], file_test$730
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$730:
	; PostCall 60

 file_test$731:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$732:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$733:
	; Parameter 92 signed int total
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 file_test$734:
	; Parameter 96 signed int integral4$1#
	mov dword [rbp + 96], 1

 file_test$735:
	; Parameter 100 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 file_test$736:
	; Call 60 fread 0
	mov qword [rbp + 60], file_test$737
	mov [rbp + 68], rbp
	add rbp, 60
	jmp fread

 file_test$737:
	; PostCall 60

 file_test$738:
	; Assign index integral4$0#
	mov dword [rbp + 40], 0

 file_test$739:
	; GreaterThanEqual 753 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge file_test$753

 file_test$740:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$741:
	; Parameter 84 string string_index43A2025i3A20value2025f0A#
	mov qword [rbp + 84], @10497string_index43A2025i3A20value2025f0A#

 file_test$742:
	; Parameter 92 signed int index
	mov eax, [rbp + 40]
	mov [rbp + 92], eax

 file_test$743:
	; Multiply £temporary4615 index integral4$8#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@10498integral4$8#]

 file_test$744:
	; IntegralToIntegral £temporary4616 £temporary4615
	mov rbx, 4294967295
	and rax, rbx

 file_test$745:
	; Add £temporary4617 p £temporary4616
	mov rsi, [rbp + 44]
	add rsi, rax

 file_test$746:
	; Dereference £temporary4618 £temporary4617 0

 file_test$747:
	; PushFloat £temporary4618
	fld qword [rsi]

 file_test$748:
	; Parameter 96 double £temporary4618
	fstp qword [rbp + 96]

 file_test$749:
	; Call 60 printf 12
	mov qword [rbp + 60], file_test$750
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$750:
	; PostCall 60

 file_test$751:
	; Add index index integral4$1#
	inc dword [rbp + 40]

 file_test$752:
	; Jump 739
	jmp file_test$739

 file_test$753:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$754:
	; Parameter 84 string string_0A#
	mov qword [rbp + 84], @10499string_0A#

 file_test$755:
	; Call 60 printf 0
	mov qword [rbp + 60], file_test$756
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	jmp printf

 file_test$756:
	; PostCall 60

 file_test$757:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$758:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$759:
	; Call 60 free 0
	mov qword [rbp + 60], file_test$760
	mov [rbp + 68], rbp
	add rbp, 60
	jmp free

 file_test$760:
	; PostCall 60

 file_test$761:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$762:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$763:
	; Call 36 fclose 0
	mov qword [rbp + 36], file_test$764
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 file_test$764:
	; PostCall 36

 file_test$765:
	; Assign personVector[0].name[0] integral1$65#
	mov byte [rbp + 24], 65

 file_test$766:
	; Assign personVector[0].name[1] integral1$100#
	mov byte [rbp + 25], 100

 file_test$767:
	; Assign personVector[0].name[2] integral1$97#
	mov byte [rbp + 26], 97

 file_test$768:
	; Assign personVector[0].name[3] integral1$109#
	mov byte [rbp + 27], 109

 file_test$769:
	; Assign personVector[0].name[4] integral1$32#
	mov byte [rbp + 28], 32

 file_test$770:
	; Assign personVector[0].name[5] integral1$66#
	mov byte [rbp + 29], 66

 file_test$771:
	; Assign personVector[0].name[6] integral1$101#
	mov byte [rbp + 30], 101

 file_test$772:
	; Assign personVector[0].name[7] integral1$114#
	mov byte [rbp + 31], 114

 file_test$773:
	; Assign personVector[0].name[8] integral1$116#
	mov byte [rbp + 32], 116

 file_test$774:
	; Assign personVector[0].name[9] integral1$105#
	mov byte [rbp + 33], 105

 file_test$775:
	; Assign personVector[0].name[10] integral1$108#
	mov byte [rbp + 34], 108

 file_test$776:
	; Assign personVector[0].name[11] integral1$115#
	mov byte [rbp + 35], 115

 file_test$777:
	; Assign personVector[0].name[12] integral1$115#
	mov byte [rbp + 36], 115

 file_test$778:
	; Assign personVector[0].name[13] integral1$111#
	mov byte [rbp + 37], 111

 file_test$779:
	; Assign personVector[0].name[14] integral1$110#
	mov byte [rbp + 38], 110

 file_test$780:
	; Assign personVector[0].name[15] integral1$0#
	mov byte [rbp + 39], 0

 file_test$781:
	; Assign personVector[0].phone integral4$12345#
	mov dword [rbp + 72], 12345

 file_test$782:
	; Assign personVector[1].name[0] integral1$66#
	mov byte [rbp + 76], 66

 file_test$783:
	; Assign personVector[1].name[1] integral1$101#
	mov byte [rbp + 77], 101

 file_test$784:
	; Assign personVector[1].name[2] integral1$114#
	mov byte [rbp + 78], 114

 file_test$785:
	; Assign personVector[1].name[3] integral1$116#
	mov byte [rbp + 79], 116

 file_test$786:
	; Assign personVector[1].name[4] integral1$105#
	mov byte [rbp + 80], 105

 file_test$787:
	; Assign personVector[1].name[5] integral1$108#
	mov byte [rbp + 81], 108

 file_test$788:
	; Assign personVector[1].name[6] integral1$32#
	mov byte [rbp + 82], 32

 file_test$789:
	; Assign personVector[1].name[7] integral1$67#
	mov byte [rbp + 83], 67

 file_test$790:
	; Assign personVector[1].name[8] integral1$101#
	mov byte [rbp + 84], 101

 file_test$791:
	; Assign personVector[1].name[9] integral1$97#
	mov byte [rbp + 85], 97

 file_test$792:
	; Assign personVector[1].name[10] integral1$115#
	mov byte [rbp + 86], 115

 file_test$793:
	; Assign personVector[1].name[11] integral1$97#
	mov byte [rbp + 87], 97

 file_test$794:
	; Assign personVector[1].name[12] integral1$114#
	mov byte [rbp + 88], 114

 file_test$795:
	; Assign personVector[1].name[13] integral1$115#
	mov byte [rbp + 89], 115

 file_test$796:
	; Assign personVector[1].name[14] integral1$115#
	mov byte [rbp + 90], 115

 file_test$797:
	; Assign personVector[1].name[15] integral1$111#
	mov byte [rbp + 91], 111

 file_test$798:
	; Assign personVector[1].name[16] integral1$110#
	mov byte [rbp + 92], 110

 file_test$799:
	; Assign personVector[1].name[17] integral1$0#
	mov byte [rbp + 93], 0

 file_test$800:
	; Assign personVector[1].phone integral4$23456#
	mov dword [rbp + 124], 23456

 file_test$801:
	; Assign personVector[2].name[0] integral1$67#
	mov byte [rbp + 128], 67

 file_test$802:
	; Assign personVector[2].name[1] integral1$101#
	mov byte [rbp + 129], 101

 file_test$803:
	; Assign personVector[2].name[2] integral1$97#
	mov byte [rbp + 130], 97

 file_test$804:
	; Assign personVector[2].name[3] integral1$115#
	mov byte [rbp + 131], 115

 file_test$805:
	; Assign personVector[2].name[4] integral1$97#
	mov byte [rbp + 132], 97

 file_test$806:
	; Assign personVector[2].name[5] integral1$114#
	mov byte [rbp + 133], 114

 file_test$807:
	; Assign personVector[2].name[6] integral1$32#
	mov byte [rbp + 134], 32

 file_test$808:
	; Assign personVector[2].name[7] integral1$68#
	mov byte [rbp + 135], 68

 file_test$809:
	; Assign personVector[2].name[8] integral1$97#
	mov byte [rbp + 136], 97

 file_test$810:
	; Assign personVector[2].name[9] integral1$118#
	mov byte [rbp + 137], 118

 file_test$811:
	; Assign personVector[2].name[10] integral1$105#
	mov byte [rbp + 138], 105

 file_test$812:
	; Assign personVector[2].name[11] integral1$100#
	mov byte [rbp + 139], 100

 file_test$813:
	; Assign personVector[2].name[12] integral1$115#
	mov byte [rbp + 140], 115

 file_test$814:
	; Assign personVector[2].name[13] integral1$115#
	mov byte [rbp + 141], 115

 file_test$815:
	; Assign personVector[2].name[14] integral1$111#
	mov byte [rbp + 142], 111

 file_test$816:
	; Assign personVector[2].name[15] integral1$110#
	mov byte [rbp + 143], 110

 file_test$817:
	; Assign personVector[2].name[16] integral1$0#
	mov byte [rbp + 144], 0

 file_test$818:
	; Assign personVector[2].phone integral4$24567#
	mov dword [rbp + 176], 24567

 file_test$819:
	; PreCall 232 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$820:
	; Parameter 256 string string_Block2Ebin#
	mov qword [rbp + 256], @10563string_Block2Ebin#

 file_test$821:
	; Parameter 264 string string_w#
	mov qword [rbp + 264], @10564string_w#

 file_test$822:
	; Call 232 fopen 0
	mov qword [rbp + 232], file_test$823
	mov [rbp + 240], rbp
	add rbp, 232
	jmp fopen

 file_test$823:
	; PostCall 232

 file_test$824:
	; GetReturnValue £temporary4683

 file_test$825:
	; Assign outFilePtr £temporary4683
	mov [rbp + 232], rbx

 file_test$826:
	; PreCall 240 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$827:
	; Parameter 264 string string_Block2Ebin#
	mov qword [rbp + 264], @10566string_Block2Ebin#

 file_test$828:
	; Parameter 272 string string_r#
	mov qword [rbp + 272], @10567string_r#

 file_test$829:
	; Call 240 fopen 0
	mov qword [rbp + 240], file_test$830
	mov [rbp + 248], rbp
	add rbp, 240
	jmp fopen

 file_test$830:
	; PostCall 240

 file_test$831:
	; GetReturnValue £temporary4684

 file_test$832:
	; Assign inFilePtr £temporary4684
	mov [rbp + 240], rbx

 file_test$833:
	; NotEqual 845 outFilePtr integral8$0#
	cmp qword [rbp + 232], 0
	jne file_test$845

 file_test$834:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$835:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$836:
	; Parameter 280 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 280], @10571string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$837:
	; Parameter 288 string string_outFilePtr20213D20NULL#
	mov qword [rbp + 288], @10572string_outFilePtr20213D20NULL#

 file_test$838:
	; Parameter 296 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 296], @10573string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$839:
	; Parameter 304 signed int integral4$284#
	mov dword [rbp + 304], 284

 file_test$840:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$841
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$841:
	; PostCall 248

 file_test$842:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$843:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$844
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$844:
	; PostCall 248

 file_test$845:
	; NotEqual 857 inFilePtr integral8$0#
	cmp qword [rbp + 240], 0
	jne file_test$857

 file_test$846:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$847:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$848:
	; Parameter 280 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 280], @10577string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$849:
	; Parameter 288 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 288], @10578string_inFilePtr20213D20NULL#

 file_test$850:
	; Parameter 296 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 296], @10579string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$851:
	; Parameter 304 signed int integral4$285#
	mov dword [rbp + 304], 285

 file_test$852:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$853
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$853:
	; PostCall 248

 file_test$854:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$855:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$856
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$856:
	; PostCall 248

 file_test$857:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$858:
	; Parameter 272 array personVector
	mov [rbp + 272], rbp
	add qword [rbp + 272], 24

 file_test$859:
	; Parameter 280 signed int integral4$156#
	mov dword [rbp + 280], 156

 file_test$860:
	; Parameter 284 signed int integral4$1#
	mov dword [rbp + 284], 1

 file_test$861:
	; Parameter 288 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 288], rax

 file_test$862:
	; Call 248 fwrite 0
	mov qword [rbp + 248], file_test$863
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fwrite

 file_test$863:
	; PostCall 248

 file_test$864:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$865:
	; Parameter 272 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 272], rax

 file_test$866:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$867
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$867:
	; PostCall 248

 file_test$868:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$869:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$870:
	; Call 248 feof 0
	mov qword [rbp + 248], file_test$871
	mov [rbp + 256], rbp
	add rbp, 248
	jmp feof

 file_test$871:
	; PostCall 248

 file_test$872:
	; GetReturnValue £temporary4699

 file_test$873:
	; NotEqual 893 £temporary4699 integral4$0#
	cmp ebx, 0
	jne file_test$893

 file_test$874:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$875:
	; Address £temporary4702 person
	mov rsi, rbp
	add rsi, 180

 file_test$876:
	; Parameter 272 pointer £temporary4702
	mov [rbp + 272], rsi

 file_test$877:
	; Parameter 280 signed int integral4$52#
	mov dword [rbp + 280], 52

 file_test$878:
	; Parameter 284 signed int integral4$1#
	mov dword [rbp + 284], 1

 file_test$879:
	; Parameter 288 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 288], rax

 file_test$880:
	; Call 248 fread 0
	mov qword [rbp + 248], file_test$881
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fread

 file_test$881:
	; PostCall 248

 file_test$882:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$883:
	; Parameter 272 string string_Name20203A2025s0A#
	mov qword [rbp + 272], @10586string_Name20203A2025s0A#

 file_test$884:
	; Parameter 280 array person.name
	mov [rbp + 280], rbp
	add qword [rbp + 280], 180

 file_test$885:
	; Call 248 printf 8
	mov qword [rbp + 248], file_test$886
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$886:
	; PostCall 248

 file_test$887:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$888:
	; Parameter 272 string string_Phone203A2025d0A#
	mov qword [rbp + 272], @10588string_Phone203A2025d0A#

 file_test$889:
	; Parameter 280 signed int person.phone
	mov eax, [rbp + 228]
	mov [rbp + 280], eax

 file_test$890:
	; Call 248 printf 4
	mov qword [rbp + 248], file_test$891
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$891:
	; PostCall 248

 file_test$892:
	; Jump 868
	jmp file_test$868

 file_test$893:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$894:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$895:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$896
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$896:
	; PostCall 248

 file_test$897:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$898:
	; Parameter 48 string string_outx2Etxt#
	mov qword [rbp + 48], @10590string_outx2Etxt#

 file_test$899:
	; Parameter 56 string string_r#
	mov qword [rbp + 56], @10591string_r#

 file_test$900:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$901
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$901:
	; PostCall 24

 file_test$902:
	; GetReturnValue £temporary4707

 file_test$903:
	; Assign inFilePtr £temporary4707
	mov [rbp + 24], rbx

 file_test$904:
	; NotEqual 916 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$916

 file_test$905:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$906:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$907:
	; Parameter 64 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10595string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$908:
	; Parameter 72 string string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10596string_inFilePtr20213D20NULL#

 file_test$909:
	; Parameter 80 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10597string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$910:
	; Parameter 88 signed int integral4$301#
	mov dword [rbp + 88], 301

 file_test$911:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$912
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$912:
	; PostCall 32

 file_test$913:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$914:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$915
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$915:
	; PostCall 32

 file_test$916:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$917:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$918:
	; Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 file_test$919:
	; Parameter 68 signed int SEEK_END
	mov dword [rbp + 68], 2

 file_test$920:
	; Call 32 fseek 0
	mov qword [rbp + 32], file_test$921
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 file_test$921:
	; PostCall 32

 file_test$922:
	; GetReturnValue £temporary4714

 file_test$923:
	; Assign size £temporary4714
	mov [rbp + 32], ebx

 file_test$924:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$925:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$926:
	; Call 36 ftell 0
	mov qword [rbp + 36], file_test$927
	mov [rbp + 44], rbp
	add rbp, 36
	jmp ftell

 file_test$927:
	; PostCall 36

 file_test$928:
	; GetReturnValue £temporary4715

 file_test$929:
	; LessThanEqual 947 £temporary4715 integral4$1#
	cmp ebx, 1
	jle file_test$947

 file_test$930:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$931:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$932:
	; Subtract size size integral4$1#
	dec dword [rbp + 32]

 file_test$933:
	; Parameter 68 signed int size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$934:
	; Parameter 72 signed int SEEK_SET
	mov dword [rbp + 72], 0

 file_test$935:
	; Call 36 fseek 0
	mov qword [rbp + 36], file_test$936
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fseek

 file_test$936:
	; PostCall 36

 file_test$937:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$938:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$939:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$940:
	; Call 36 fgetc 0
	mov qword [rbp + 36], file_test$941
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fgetc

 file_test$941:
	; PostCall 36

 file_test$942:
	; GetReturnValue £temporary4719

 file_test$943:
	; Parameter 60 signed int £temporary4719
	mov [rbp + 60], ebx

 file_test$944:
	; Call 36 putchar 0
	mov qword [rbp + 36], file_test$945
	mov [rbp + 44], rbp
	add rbp, 36
	jmp putchar

 file_test$945:
	; PostCall 36

 file_test$946:
	; Jump 924
	jmp file_test$924

 file_test$947:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$948:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$949:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$950
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$950:
	; PostCall 32

 file_test$951:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$952:
	; Parameter 48 string string_fileexists2022X223A2025s0A#
	mov qword [rbp + 48], @10603string_fileexists2022X223A2025s0A#

 file_test$953:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$954:
	; Parameter 80 string string_X#
	mov qword [rbp + 80], @10604string_X#

 file_test$955:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$956
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$956:
	; PostCall 56

 file_test$957:
	; GetReturnValue £temporary4722

 file_test$958:
	; Equal 961 £temporary4722 integral4$0#
	cmp ebx, 0
	je file_test$961

 file_test$959:
	; Assign £temporary4724 string_Yes#
	mov rax, @10605string_Yes#

 file_test$960:
	; Jump 962
	jmp file_test$962

 file_test$961:
	; Assign £temporary4724 string_No#
	mov rax, @10606string_No#

 file_test$962:
	; Parameter 56 string £temporary4724
	mov [rbp + 56], rax

 file_test$963:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$964
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$964:
	; PostCall 24

 file_test$965:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$966:
	; Parameter 48 string string_fileexists2022Y223A2025s0A#
	mov qword [rbp + 48], @10608string_fileexists2022Y223A2025s0A#

 file_test$967:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$968:
	; Parameter 80 string string_Y#
	mov qword [rbp + 80], @10609string_Y#

 file_test$969:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$970
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$970:
	; PostCall 56

 file_test$971:
	; GetReturnValue £temporary4726

 file_test$972:
	; Equal 975 £temporary4726 integral4$0#
	cmp ebx, 0
	je file_test$975

 file_test$973:
	; Assign £temporary4728 string_Yes#
	mov rax, @10610string_Yes#

 file_test$974:
	; Jump 976
	jmp file_test$976

 file_test$975:
	; Assign £temporary4728 string_No#
	mov rax, @10611string_No#

 file_test$976:
	; Parameter 56 string £temporary4728
	mov [rbp + 56], rax

 file_test$977:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$978
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$978:
	; PostCall 24

 file_test$979:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$980:
	; Parameter 48 string string_fileexists2022Main2Easm223A2025s0A#
	mov qword [rbp + 48], @10613string_fileexists2022Main2Easm223A2025s0A#

 file_test$981:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$982:
	; Parameter 80 string string_Main2Easm#
	mov qword [rbp + 80], @10614string_Main2Easm#

 file_test$983:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$984
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$984:
	; PostCall 56

 file_test$985:
	; GetReturnValue £temporary4730

 file_test$986:
	; Equal 989 £temporary4730 integral4$0#
	cmp ebx, 0
	je file_test$989

 file_test$987:
	; Assign £temporary4732 string_Yes#
	mov rax, @10615string_Yes#

 file_test$988:
	; Jump 990
	jmp file_test$990

 file_test$989:
	; Assign £temporary4732 string_No#
	mov rax, @10616string_No#

 file_test$990:
	; Parameter 56 string £temporary4732
	mov [rbp + 56], rax

 file_test$991:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$992
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$992:
	; PostCall 24

 file_test$993:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$994:
	; Parameter 48 string string_fileexists2022MainX2Easm223A2025s0A#
	mov qword [rbp + 48], @10618string_fileexists2022MainX2Easm223A2025s0A#

 file_test$995:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$996:
	; Parameter 80 string string_MainX2Easm#
	mov qword [rbp + 80], @10619string_MainX2Easm#

 file_test$997:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$998
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$998:
	; PostCall 56

 file_test$999:
	; GetReturnValue £temporary4734

 file_test$1000:
	; Equal 1003 £temporary4734 integral4$0#
	cmp ebx, 0
	je file_test$1003

 file_test$1001:
	; Assign £temporary4736 string_Yes#
	mov rax, @10620string_Yes#

 file_test$1002:
	; Jump 1004
	jmp file_test$1004

 file_test$1003:
	; Assign £temporary4736 string_No#
	mov rax, @10621string_No#

 file_test$1004:
	; Parameter 56 string £temporary4736
	mov [rbp + 56], rax

 file_test$1005:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1006
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1006:
	; PostCall 24

 file_test$1007:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1008:
	; Parameter 48 string string_fileexists2022Main2Ec223A2025s0A#
	mov qword [rbp + 48], @10623string_fileexists2022Main2Ec223A2025s0A#

 file_test$1009:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1010:
	; Parameter 80 string string_Main2Ec#
	mov qword [rbp + 80], @10624string_Main2Ec#

 file_test$1011:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1012
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1012:
	; PostCall 56

 file_test$1013:
	; GetReturnValue £temporary4738

 file_test$1014:
	; Equal 1017 £temporary4738 integral4$0#
	cmp ebx, 0
	je file_test$1017

 file_test$1015:
	; Assign £temporary4740 string_Yes#
	mov rax, @10625string_Yes#

 file_test$1016:
	; Jump 1018
	jmp file_test$1018

 file_test$1017:
	; Assign £temporary4740 string_No#
	mov rax, @10626string_No#

 file_test$1018:
	; Parameter 56 string £temporary4740
	mov [rbp + 56], rax

 file_test$1019:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1020
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1020:
	; PostCall 24

 file_test$1021:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1022:
	; Parameter 48 string string_fileexists2022MainX2Ec223A2025s0A#
	mov qword [rbp + 48], @10628string_fileexists2022MainX2Ec223A2025s0A#

 file_test$1023:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1024:
	; Parameter 80 string string_MainX2Ec#
	mov qword [rbp + 80], @10629string_MainX2Ec#

 file_test$1025:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1026
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1026:
	; PostCall 56

 file_test$1027:
	; GetReturnValue £temporary4742

 file_test$1028:
	; Equal 1031 £temporary4742 integral4$0#
	cmp ebx, 0
	je file_test$1031

 file_test$1029:
	; Assign £temporary4744 string_Yes#
	mov rax, @10630string_Yes#

 file_test$1030:
	; Jump 1032
	jmp file_test$1032

 file_test$1031:
	; Assign £temporary4744 string_No#
	mov rax, @10631string_No#

 file_test$1032:
	; Parameter 56 string £temporary4744
	mov [rbp + 56], rax

 file_test$1033:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1034
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1034:
	; PostCall 24

 file_test$1035:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1036:
	; Parameter 48 string string_fileexists2022File2Ec223A2025s0A#
	mov qword [rbp + 48], @10633string_fileexists2022File2Ec223A2025s0A#

 file_test$1037:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1038:
	; Parameter 80 string string_File2Ec#
	mov qword [rbp + 80], @10634string_File2Ec#

 file_test$1039:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1040
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1040:
	; PostCall 56

 file_test$1041:
	; GetReturnValue £temporary4746

 file_test$1042:
	; Equal 1045 £temporary4746 integral4$0#
	cmp ebx, 0
	je file_test$1045

 file_test$1043:
	; Assign £temporary4748 string_Yes#
	mov rax, @10635string_Yes#

 file_test$1044:
	; Jump 1046
	jmp file_test$1046

 file_test$1045:
	; Assign £temporary4748 string_No#
	mov rax, @10636string_No#

 file_test$1046:
	; Parameter 56 string £temporary4748
	mov [rbp + 56], rax

 file_test$1047:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1048
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1048:
	; PostCall 24

 file_test$1049:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1050:
	; Parameter 48 string string_fileexists2022File2Ex223A2025s0A#
	mov qword [rbp + 48], @10638string_fileexists2022File2Ex223A2025s0A#

 file_test$1051:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1052:
	; Parameter 80 string string_File2Ex#
	mov qword [rbp + 80], @10639string_File2Ex#

 file_test$1053:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1054
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1054:
	; PostCall 56

 file_test$1055:
	; GetReturnValue £temporary4750

 file_test$1056:
	; Equal 1059 £temporary4750 integral4$0#
	cmp ebx, 0
	je file_test$1059

 file_test$1057:
	; Assign £temporary4752 string_Yes#
	mov rax, @10640string_Yes#

 file_test$1058:
	; Jump 1060
	jmp file_test$1060

 file_test$1059:
	; Assign £temporary4752 string_No#
	mov rax, @10641string_No#

 file_test$1060:
	; Parameter 56 string £temporary4752
	mov [rbp + 56], rax

 file_test$1061:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1062
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1062:
	; PostCall 24

 file_test$1063:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1064:
	; Parameter 48 string string_fileexists2022File2Eh223A2025s0A#
	mov qword [rbp + 48], @10643string_fileexists2022File2Eh223A2025s0A#

 file_test$1065:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1066:
	; Parameter 80 string string_File2Eh#
	mov qword [rbp + 80], @10644string_File2Eh#

 file_test$1067:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1068
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1068:
	; PostCall 56

 file_test$1069:
	; GetReturnValue £temporary4754

 file_test$1070:
	; Equal 1073 £temporary4754 integral4$0#
	cmp ebx, 0
	je file_test$1073

 file_test$1071:
	; Assign £temporary4756 string_Yes#
	mov rax, @10645string_Yes#

 file_test$1072:
	; Jump 1074
	jmp file_test$1074

 file_test$1073:
	; Assign £temporary4756 string_No#
	mov rax, @10646string_No#

 file_test$1074:
	; Parameter 56 string £temporary4756
	mov [rbp + 56], rax

 file_test$1075:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1076
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1076:
	; PostCall 24

 file_test$1077:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1078:
	; Parameter 48 string string_fileexists2022File2Ey223A2025s0A#
	mov qword [rbp + 48], @10648string_fileexists2022File2Ey223A2025s0A#

 file_test$1079:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1080:
	; Parameter 80 string string_File2Ey#
	mov qword [rbp + 80], @10649string_File2Ey#

 file_test$1081:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1082
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1082:
	; PostCall 56

 file_test$1083:
	; GetReturnValue £temporary4758

 file_test$1084:
	; Equal 1087 £temporary4758 integral4$0#
	cmp ebx, 0
	je file_test$1087

 file_test$1085:
	; Assign £temporary4760 string_Yes#
	mov rax, @10650string_Yes#

 file_test$1086:
	; Jump 1088
	jmp file_test$1088

 file_test$1087:
	; Assign £temporary4760 string_No#
	mov rax, @10651string_No#

 file_test$1088:
	; Parameter 56 string £temporary4760
	mov [rbp + 56], rax

 file_test$1089:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1090
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1090:
	; PostCall 24

 file_test$1091:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1092:
	; Parameter 48 string string_fileexists2022File2Ep223A2025s0A#
	mov qword [rbp + 48], @10653string_fileexists2022File2Ep223A2025s0A#

 file_test$1093:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1094:
	; Parameter 80 string string_File2Ep#
	mov qword [rbp + 80], @10654string_File2Ep#

 file_test$1095:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1096
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1096:
	; PostCall 56

 file_test$1097:
	; GetReturnValue £temporary4762

 file_test$1098:
	; Equal 1101 £temporary4762 integral4$0#
	cmp ebx, 0
	je file_test$1101

 file_test$1099:
	; Assign £temporary4764 string_Yes#
	mov rax, @10655string_Yes#

 file_test$1100:
	; Jump 1102
	jmp file_test$1102

 file_test$1101:
	; Assign £temporary4764 string_No#
	mov rax, @10656string_No#

 file_test$1102:
	; Parameter 56 string £temporary4764
	mov [rbp + 56], rax

 file_test$1103:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1104
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1104:
	; PostCall 24

 file_test$1105:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1106:
	; Parameter 48 string string_fileexists2022File2Ez223A2025s0A#
	mov qword [rbp + 48], @10658string_fileexists2022File2Ez223A2025s0A#

 file_test$1107:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1108:
	; Parameter 80 string string_File2Ez#
	mov qword [rbp + 80], @10659string_File2Ez#

 file_test$1109:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1110
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1110:
	; PostCall 56

 file_test$1111:
	; GetReturnValue £temporary4766

 file_test$1112:
	; Equal 1115 £temporary4766 integral4$0#
	cmp ebx, 0
	je file_test$1115

 file_test$1113:
	; Assign £temporary4768 string_Yes#
	mov rax, @10660string_Yes#

 file_test$1114:
	; Jump 1116
	jmp file_test$1116

 file_test$1115:
	; Assign £temporary4768 string_No#
	mov rax, @10661string_No#

 file_test$1116:
	; Parameter 56 string £temporary4768
	mov [rbp + 56], rax

 file_test$1117:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1118
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1118:
	; PostCall 24

 file_test$1119:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$1120:
	; FunctionEnd file_test

section .data

@10997string_Hello0A#:
	; Initializer String Hello\n
	db "Hello", 10, 0

section .data

@10999string_PBookX2Etxt#:
	; Initializer String PBookX.txt
	db "PBookX.txt", 0

section .data

@11000string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@11004string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11005string_inOutFilePtr20213D20NULL#:
	; Initializer String inOutFilePtr != NULL
	db "inOutFilePtr != NULL", 0

section .data

@11006string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11008string_Temp0A#:
	; Initializer String Temp\n
	db "Temp", 10, 0

section .data

@11011string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11012string_tempFilePtr20213D20NULL#:
	; Initializer String tempFilePtr != NULL
	db "tempFilePtr != NULL", 0

section .data

@11013string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11018string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; Initializer String \n------------\n
	db 10, "------------", 10, 0

section .text

 temp_file:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$1:
	; Parameter 48 string string_Hello0A#
	mov qword [rbp + 48], @10997string_Hello0A#

 temp_file$2:
	; Call 24 printf 0
	mov qword [rbp + 24], temp_file$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 temp_file$3:
	; PostCall 24

 temp_file$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$5:
	; Parameter 56 string string_PBookX2Etxt#
	mov qword [rbp + 56], @10999string_PBookX2Etxt#

 temp_file$6:
	; Parameter 64 string string_r2B#
	mov qword [rbp + 64], @11000string_r2B#

 temp_file$7:
	; Call 32 fopen 0
	mov qword [rbp + 32], temp_file$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 temp_file$8:
	; PostCall 32

 temp_file$9:
	; GetReturnValue £temporary4796

 temp_file$10:
	; Assign inOutFilePtr £temporary4796
	mov [rbp + 32], rbx

 temp_file$11:
	; NotEqual 23 inOutFilePtr integral8$0#
	cmp qword [rbp + 32], 0
	jne temp_file$23

 temp_file$12:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$13:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 temp_file$14:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @11004string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 temp_file$15:
	; Parameter 80 string string_inOutFilePtr20213D20NULL#
	mov qword [rbp + 80], @11005string_inOutFilePtr20213D20NULL#

 temp_file$16:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @11006string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 temp_file$17:
	; Parameter 96 signed int integral4$369#
	mov dword [rbp + 96], 369

 temp_file$18:
	; Call 40 fprintf 20
	mov qword [rbp + 40], temp_file$19
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 temp_file$19:
	; PostCall 40

 temp_file$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$21:
	; Call 40 abort 0
	mov qword [rbp + 40], temp_file$22
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 temp_file$22:
	; PostCall 40

 temp_file$23:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$24:
	; Parameter 64 string string_Temp0A#
	mov qword [rbp + 64], @11008string_Temp0A#

 temp_file$25:
	; Call 40 printf 0
	mov qword [rbp + 40], temp_file$26
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 temp_file$26:
	; PostCall 40

 temp_file$27:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$28:
	; Call 40 tmpfile 0
	mov qword [rbp + 40], temp_file$29
	mov [rbp + 48], rbp
	add rbp, 40
	jmp tmpfile

 temp_file$29:
	; PostCall 40

 temp_file$30:
	; GetReturnValue £temporary4804

 temp_file$31:
	; Assign tempFilePtr £temporary4804
	mov [rbp + 24], rbx

 temp_file$32:
	; NotEqual 44 tempFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne temp_file$44

 temp_file$33:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$34:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 temp_file$35:
	; Parameter 72 string string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @11011string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 temp_file$36:
	; Parameter 80 string string_tempFilePtr20213D20NULL#
	mov qword [rbp + 80], @11012string_tempFilePtr20213D20NULL#

 temp_file$37:
	; Parameter 88 string string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @11013string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 temp_file$38:
	; Parameter 96 signed int integral4$372#
	mov dword [rbp + 96], 372

 temp_file$39:
	; Call 40 fprintf 20
	mov qword [rbp + 40], temp_file$40
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 temp_file$40:
	; PostCall 40

 temp_file$41:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$42:
	; Call 40 abort 0
	mov qword [rbp + 40], temp_file$43
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 temp_file$43:
	; PostCall 40

 temp_file$44:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$45:
	; Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$46:
	; Call 40 fgetc 0
	mov qword [rbp + 40], temp_file$47
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fgetc

 temp_file$47:
	; PostCall 40

 temp_file$48:
	; GetReturnValue £temporary4811

 temp_file$49:
	; IntegralToIntegral £temporary4812 £temporary4811
	cmp ebx, 0
	jge temp_file$50
	neg ebx
	neg bl

 temp_file$50:
	; Assign c £temporary4812
	mov [rbp + 40], bl

 temp_file$51:
	; IntegralToIntegral £temporary4813 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$52
	neg al
	neg eax

 temp_file$52:
	; Equal 65 £temporary4813 integral4$minus1#
	cmp eax, -1
	je temp_file$65

 temp_file$53:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$54:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$55:
	; IntegralToIntegral £temporary4817 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$56
	neg al
	neg eax

 temp_file$56:
	; Parameter 65 signed int £temporary4817
	mov [rbp + 65], eax

 temp_file$57:
	; Call 41 toupper 0
	mov qword [rbp + 41], temp_file$58
	mov [rbp + 49], rbp
	add rbp, 41
	jmp toupper

 temp_file$58:
	; PostCall 41

 temp_file$59:
	; GetReturnValue £temporary4818

 temp_file$60:
	; Parameter 65 signed int £temporary4818
	mov [rbp + 65], ebx

 temp_file$61:
	; Parameter 69 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 69], rax

 temp_file$62:
	; Call 41 putc 0
	mov qword [rbp + 41], temp_file$63
	mov [rbp + 49], rbp
	add rbp, 41
	jmp putc

 temp_file$63:
	; PostCall 41

 temp_file$64:
	; Jump 44
	jmp temp_file$44

 temp_file$65:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$66:
	; Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$67:
	; Call 40 rewind 0
	mov qword [rbp + 40], temp_file$68
	mov [rbp + 48], rbp
	add rbp, 40
	jmp rewind

 temp_file$68:
	; PostCall 40

 temp_file$69:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$70:
	; Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$71:
	; Parameter 72 string string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#
	mov qword [rbp + 72], @11018string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#

 temp_file$72:
	; Call 40 fprintf 0
	mov qword [rbp + 40], temp_file$73
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 temp_file$73:
	; PostCall 40

 temp_file$74:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$75:
	; Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$76:
	; Call 40 fgetc 0
	mov qword [rbp + 40], temp_file$77
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fgetc

 temp_file$77:
	; PostCall 40

 temp_file$78:
	; GetReturnValue £temporary4823

 temp_file$79:
	; IntegralToIntegral £temporary4824 £temporary4823
	cmp ebx, 0
	jge temp_file$80
	neg ebx
	neg bl

 temp_file$80:
	; Assign c £temporary4824
	mov [rbp + 40], bl

 temp_file$81:
	; IntegralToIntegral £temporary4825 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$82
	neg al
	neg eax

 temp_file$82:
	; Equal 90 £temporary4825 integral4$minus1#
	cmp eax, -1
	je temp_file$90

 temp_file$83:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$84:
	; IntegralToIntegral £temporary4829 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$85
	neg al
	neg eax

 temp_file$85:
	; Parameter 65 signed int £temporary4829
	mov [rbp + 65], eax

 temp_file$86:
	; Parameter 69 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 69], rax

 temp_file$87:
	; Call 41 putc 0
	mov qword [rbp + 41], temp_file$88
	mov [rbp + 49], rbp
	add rbp, 41
	jmp putc

 temp_file$88:
	; PostCall 41

 temp_file$89:
	; Jump 74
	jmp temp_file$74

 temp_file$90:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$91:
	; Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$92:
	; Call 40 fclose 0
	mov qword [rbp + 40], temp_file$93
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 temp_file$93:
	; PostCall 40

 temp_file$94:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$95:
	; Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$96:
	; Call 40 fclose 0
	mov qword [rbp + 40], temp_file$97
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 temp_file$97:
	; PostCall 40

 temp_file$98:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 temp_file$99:
	; FunctionEnd temp_file
