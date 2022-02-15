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

@9971string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@9972string_r#:
	; Initializer String r
	db "r", 0

section .data

@9974string_outX2Etxt#:
	; Initializer String outX.txt
	db "outX.txt", 0

section .data

@9975string_w#:
	; Initializer String w
	db "w", 0

section .data

@9979string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@9980string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@9981string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@9985string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@9986string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@9987string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@9991string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@9992string_X12025f0A#:
	; Initializer String X1 %f\n
	db "X1 %f", 10, 0

section .data

@9993string_X22025f0A#:
	; Initializer String X2 %f\n
	db "X2 %f", 10, 0

section .data

@9994string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@9995string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@9996string_r#:
	; Initializer String r
	db "r", 0

section .data

@9998string_outY2Etxt#:
	; Initializer String outY.txt
	db "outY.txt", 0

section .data

@9999string_w#:
	; Initializer String w
	db "w", 0

section .data

@10003string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10004string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10005string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10009string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10010string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10011string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10016string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@10017string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@10018string_Y20size2025i0A#:
	; Initializer String Y size %i\n
	db "Y size %i", 10, 0

section .data

@10022string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@10023string_Y12025f0A#:
	; Initializer String Y1 %f\n
	db "Y1 %f", 10, 0

section .data

@10024string_Y22025f0A#:
	; Initializer String Y2 %f\n
	db "Y2 %f", 10, 0

section .data

@10025string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10026string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@10029string_2225s2220has20been20removed0A#:
	; Initializer String "%s" has been removed\n
	db 34, "%s", 34, " has been removed", 10, 0

section .data

@10030string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10031string_X#:
	; Initializer String X
	db "X", 0

section .data

@10033string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@10035string_w#:
	; Initializer String w
	db "w", 0

section .data

@10037string_Hello20X#:
	; Initializer String Hello X
	db "Hello X", 0

section .data

@10039string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@10040string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10041string_X2#:
	; Initializer String X2
	db "X2", 0

section .data

@10043string_Y2#:
	; Initializer String Y2
	db "Y2", 0

section .data

@10046string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@10047string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10048string_Z#:
	; Initializer String Z
	db "Z", 0

section .data

@10050string_w#:
	; Initializer String w
	db "w", 0

section .data

@10052string_Hello20Z#:
	; Initializer String Hello Z
	db "Hello Z", 0

section .data

@10054string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@10055string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10056string_Z2#:
	; Initializer String Z2
	db "Z2", 0

section .data

@10059string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@10060string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@10061string_PBook2Etxt#:
	; Initializer String PBook.txt
	db "PBook.txt", 0

section .data

@10062string_r#:
	; Initializer String r
	db "r", 0

section .data

@10066string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10067string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10068string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10070string_0A252D24s20252D24s0A#:
	; Initializer String \n%-24s %-24s\n
	db 10, "%-24s %-24s", 10, 0

section .data

@10071string_Name#:
	; Initializer String Name
	db "Name", 0

section .data

@10072string_Phone#:
	; Initializer String Phone
	db "Phone", 0

section .data

@10073string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@10074string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@10075string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@10078string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@10079string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@10088string_25s25s#:
	; Initializer String %s%s
	db "%s%s", 0

section .data

@10089string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@10090string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10091string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@10092string_w#:
	; Initializer String w
	db "w", 0

section .data

@10096string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10097string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10098string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10110string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@10111string_r#:
	; Initializer String r
	db "r", 0

section .data

@10117string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10118string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10119string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10123string_size13A2025i0A#:
	; Initializer String size1: %i\n
	db "size1: %i", 10, 0

section .data

@10129string_index13A2025i3A20value2025f0A#:
	; Initializer String index1: %i: value %f\n
	db "index1: %i: value %f", 10, 0

section .data

@10130string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10131string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@10132string_w#:
	; Initializer String w
	db "w", 0

section .data

@10136string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10137string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10138string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10148string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@10149string_r#:
	; Initializer String r
	db "r", 0

section .data

@10153string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10154string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10155string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10163string_index23A2025i3A20value2025f0A#:
	; Initializer String index2: %i: value %f\n
	db "index2: %i: value %f", 10, 0

section .data

@10166string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10167string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@10168string_r#:
	; Initializer String r
	db "r", 0

section .data

@10172string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10173string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10174string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10182string_index33A2025i3A20value2025f0A#:
	; Initializer String index3: %i: value %f\n
	db "index3: %i: value %f", 10, 0

section .data

@10185string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10186string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@10187string_r#:
	; Initializer String r
	db "r", 0

section .data

@10192string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10193string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10194string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10198string_size43A2025i20total2025i0A#:
	; Initializer String size4: %i total %i\n
	db "size4: %i total %i", 10, 0

section .data

@10208string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10209string_p20213D20NULL#:
	; Initializer String p != NULL
	db "p != NULL", 0

section .data

@10210string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10212string_malloc43A2025u2025u2025u0A#:
	; Initializer String malloc4: %u %u %u\n
	db "malloc4: %u %u %u", 10, 0

section .data

@10216string_index43A2025i3A20value2025f0A#:
	; Initializer String index4: %i: value %f\n
	db "index4: %i: value %f", 10, 0

section .data

@10218string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@10223string_Adam20Bertilsson#:
	; Initializer String Adam Bertilsson
	db "Adam Bertilsson", 0

section .data

@10225string_Bertil20Ceasarsson#:
	; Initializer String Bertil Ceasarsson
	db "Bertil Ceasarsson", 0

section .data

@10227string_Ceasar20Davidsson#:
	; Initializer String Ceasar Davidsson
	db "Ceasar Davidsson", 0

section .data

@10282string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@10283string_w#:
	; Initializer String w
	db "w", 0

section .data

@10285string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@10286string_r#:
	; Initializer String r
	db "r", 0

section .data

@10290string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10291string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@10292string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10296string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10297string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10298string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10305string_Name20203A2025s0A#:
	; Initializer String Name  : %s\n
	db "Name  : %s", 10, 0

section .data

@10307string_Phone203A2025d0A#:
	; Initializer String Phone : %d\n
	db "Phone : %d", 10, 0

section .data

@10309string_outx2Etxt#:
	; Initializer String outx.txt
	db "outx.txt", 0

section .data

@10310string_r#:
	; Initializer String r
	db "r", 0

section .data

@10314string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10315string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@10316string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10322string_fileexists2022X223A2025s0A#:
	; Initializer String fileexists "X": %s\n
	db "fileexists ", 34, "X", 34, ": %s", 10, 0

section .data

@10323string_X#:
	; Initializer String X
	db "X", 0

section .data

@10324string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10325string_No#:
	; Initializer String No
	db "No", 0

section .data

@10327string_fileexists2022Y223A2025s0A#:
	; Initializer String fileexists "Y": %s\n
	db "fileexists ", 34, "Y", 34, ": %s", 10, 0

section .data

@10328string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@10329string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10330string_No#:
	; Initializer String No
	db "No", 0

section .data

@10332string_fileexists2022Main2Easm223A2025s0A#:
	; Initializer String fileexists "Main.asm": %s\n
	db "fileexists ", 34, "Main.asm", 34, ": %s", 10, 0

section .data

@10333string_Main2Easm#:
	; Initializer String Main.asm
	db "Main.asm", 0

section .data

@10334string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10335string_No#:
	; Initializer String No
	db "No", 0

section .data

@10337string_fileexists2022MainX2Easm223A2025s0A#:
	; Initializer String fileexists "MainX.asm": %s\n
	db "fileexists ", 34, "MainX.asm", 34, ": %s", 10, 0

section .data

@10338string_MainX2Easm#:
	; Initializer String MainX.asm
	db "MainX.asm", 0

section .data

@10339string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10340string_No#:
	; Initializer String No
	db "No", 0

section .data

@10342string_fileexists2022Main2Ec223A2025s0A#:
	; Initializer String fileexists "Main.c": %s\n
	db "fileexists ", 34, "Main.c", 34, ": %s", 10, 0

section .data

@10343string_Main2Ec#:
	; Initializer String Main.c
	db "Main.c", 0

section .data

@10344string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10345string_No#:
	; Initializer String No
	db "No", 0

section .data

@10347string_fileexists2022MainX2Ec223A2025s0A#:
	; Initializer String fileexists "MainX.c": %s\n
	db "fileexists ", 34, "MainX.c", 34, ": %s", 10, 0

section .data

@10348string_MainX2Ec#:
	; Initializer String MainX.c
	db "MainX.c", 0

section .data

@10349string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10350string_No#:
	; Initializer String No
	db "No", 0

section .data

@10352string_fileexists2022File2Ec223A2025s0A#:
	; Initializer String fileexists "File.c": %s\n
	db "fileexists ", 34, "File.c", 34, ": %s", 10, 0

section .data

@10353string_File2Ec#:
	; Initializer String File.c
	db "File.c", 0

section .data

@10354string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10355string_No#:
	; Initializer String No
	db "No", 0

section .data

@10357string_fileexists2022File2Ex223A2025s0A#:
	; Initializer String fileexists "File.x": %s\n
	db "fileexists ", 34, "File.x", 34, ": %s", 10, 0

section .data

@10358string_File2Ex#:
	; Initializer String File.x
	db "File.x", 0

section .data

@10359string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10360string_No#:
	; Initializer String No
	db "No", 0

section .data

@10362string_fileexists2022File2Eh223A2025s0A#:
	; Initializer String fileexists "File.h": %s\n
	db "fileexists ", 34, "File.h", 34, ": %s", 10, 0

section .data

@10363string_File2Eh#:
	; Initializer String File.h
	db "File.h", 0

section .data

@10364string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10365string_No#:
	; Initializer String No
	db "No", 0

section .data

@10367string_fileexists2022File2Ey223A2025s0A#:
	; Initializer String fileexists "File.y": %s\n
	db "fileexists ", 34, "File.y", 34, ": %s", 10, 0

section .data

@10368string_File2Ey#:
	; Initializer String File.y
	db "File.y", 0

section .data

@10369string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10370string_No#:
	; Initializer String No
	db "No", 0

section .data

@10372string_fileexists2022File2Ep223A2025s0A#:
	; Initializer String fileexists "File.p": %s\n
	db "fileexists ", 34, "File.p", 34, ": %s", 10, 0

section .data

@10373string_File2Ep#:
	; Initializer String File.p
	db "File.p", 0

section .data

@10374string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10375string_No#:
	; Initializer String No
	db "No", 0

section .data

@10377string_fileexists2022File2Ez223A2025s0A#:
	; Initializer String fileexists "File.z": %s\n
	db "fileexists ", 34, "File.z", 34, ": %s", 10, 0

section .data

@10378string_File2Ez#:
	; Initializer String File.z
	db "File.z", 0

section .data

@10379string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@10380string_No#:
	; Initializer String No
	db "No", 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@10199integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@10200integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@10204integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@10217integral4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 file_test:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1:
	; 1 Parameter 48 pointer string_in2Etxt#
	mov qword [rbp + 48], @9971string_in2Etxt#

 file_test$2:
	; 2 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @9972string_r#

 file_test$3:
	; 3 Call 24 fopen 0
	mov qword [rbp + 24], file_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$4:
	; 4 PostCall 24

 file_test$5:
	; 5 GetReturnValue £temporary4155

 file_test$6:
	; 6 Assign inFilePtr £temporary4155
	mov [rbp + 24], rbx

 file_test$7:
	; 7 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$8:
	; 8 Parameter 56 pointer string_outX2Etxt#
	mov qword [rbp + 56], @9974string_outX2Etxt#

 file_test$9:
	; 9 Parameter 64 pointer string_w#
	mov qword [rbp + 64], @9975string_w#

 file_test$10:
	; 10 Call 32 fopen 0
	mov qword [rbp + 32], file_test$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$11:
	; 11 PostCall 32

 file_test$12:
	; 12 GetReturnValue £temporary4156

 file_test$13:
	; 13 Assign outFilePtr £temporary4156
	mov [rbp + 32], rbx

 file_test$14:
	; 14 NotEqual 26 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$26

 file_test$15:
	; 17 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$16:
	; 18 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$17:
	; 19 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @9979string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$18:
	; 20 Parameter 80 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 80], @9980string_inFilePtr20213D20NULL#

 file_test$19:
	; 21 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @9981string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$20:
	; 22 Parameter 96 signed int integral4$14#
	mov dword [rbp + 96], 14

 file_test$21:
	; 23 Call 40 fprintf 20
	mov qword [rbp + 40], file_test$22
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$22:
	; 24 PostCall 40

 file_test$23:
	; 25 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$24:
	; 26 Call 40 abort 0
	mov qword [rbp + 40], file_test$25
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$25:
	; 27 PostCall 40

 file_test$26:
	; 32 NotEqual 38 outFilePtr integral8$0#
	cmp qword [rbp + 32], 0
	jne file_test$38

 file_test$27:
	; 35 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$28:
	; 36 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$29:
	; 37 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @9985string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$30:
	; 38 Parameter 80 pointer string_outFilePtr20213D20NULL#
	mov qword [rbp + 80], @9986string_outFilePtr20213D20NULL#

 file_test$31:
	; 39 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @9987string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$32:
	; 40 Parameter 96 signed int integral4$15#
	mov dword [rbp + 96], 15

 file_test$33:
	; 41 Call 40 fprintf 20
	mov qword [rbp + 40], file_test$34
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$34:
	; 42 PostCall 40

 file_test$35:
	; 43 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$36:
	; 44 Call 40 abort 0
	mov qword [rbp + 40], file_test$37
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$37:
	; 45 PostCall 40

 file_test$38:
	; 51 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$39:
	; 52 Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$40:
	; 53 Call 40 feof 0
	mov qword [rbp + 40], file_test$41
	mov [rbp + 48], rbp
	add rbp, 40
	jmp feof

 file_test$41:
	; 54 PostCall 40

 file_test$42:
	; 55 GetReturnValue £temporary4169

 file_test$43:
	; 56 NotEqual 75 £temporary4169 integral4$0#
	cmp ebx, 0
	jne file_test$75

 file_test$44:
	; 58 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$45:
	; 59 Parameter 72 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$46:
	; 60 Parameter 80 pointer string_25lf#
	mov qword [rbp + 80], @9991string_25lf#

 file_test$47:
	; 63 Address £temporary4172 value
	mov rsi, rbp
	add rsi, 40

 file_test$48:
	; 64 Parameter 88 pointer £temporary4172
	mov [rbp + 88], rsi

 file_test$49:
	; 65 Call 48 fscanf 8
	mov qword [rbp + 48], file_test$50
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$50:
	; 66 PostCall 48

 file_test$51:
	; 67 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$52:
	; 68 Parameter 72 pointer string_X12025f0A#
	mov qword [rbp + 72], @9992string_X12025f0A#

 file_test$53:
	; 69 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$54:
	; 70 PushFloat value
	fld qword [rbp + 40]

 file_test$55:
	; 71 Parameter 104 double value
	fstp qword [rbp + 104]

 file_test$56:
	; 72 Call 80 sqrt 0
	mov qword [rbp + 80], file_test$57
	mov [rbp + 88], rbp
	add rbp, 80
	jmp sqrt

 file_test$57:
	; 73 PostCall 80

 file_test$58:
	; 74 GetReturnValue £temporary4174

 file_test$59:
	; 75 Parameter 80 double £temporary4174
	fstp qword [rbp + 80]

 file_test$60:
	; 76 Call 48 printf 8
	mov qword [rbp + 48], file_test$61
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$61:
	; 77 PostCall 48

 file_test$62:
	; 78 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$63:
	; 79 Parameter 72 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$64:
	; 80 Parameter 80 pointer string_X22025f0A#
	mov qword [rbp + 80], @9993string_X22025f0A#

 file_test$65:
	; 81 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$66:
	; 82 PushFloat value
	fld qword [rbp + 40]

 file_test$67:
	; 83 Parameter 112 double value
	fstp qword [rbp + 112]

 file_test$68:
	; 84 Call 88 sqrt 0
	mov qword [rbp + 88], file_test$69
	mov [rbp + 96], rbp
	add rbp, 88
	jmp sqrt

 file_test$69:
	; 85 PostCall 88

 file_test$70:
	; 86 GetReturnValue £temporary4176

 file_test$71:
	; 87 Parameter 88 double £temporary4176
	fstp qword [rbp + 88]

 file_test$72:
	; 88 Call 48 fprintf 8
	mov qword [rbp + 48], file_test$73
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$73:
	; 89 PostCall 48

 file_test$74:
	; 91 Jump 38
	jmp file_test$38

 file_test$75:
	; 92 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$76:
	; 93 Parameter 64 pointer string_0A#
	mov qword [rbp + 64], @9994string_0A#

 file_test$77:
	; 94 Call 40 printf 0
	mov qword [rbp + 40], file_test$78
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$78:
	; 95 PostCall 40

 file_test$79:
	; 96 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$80:
	; 97 Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$81:
	; 98 Call 40 fclose 0
	mov qword [rbp + 40], file_test$82
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$82:
	; 99 PostCall 40

 file_test$83:
	; 100 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$84:
	; 101 Parameter 64 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$85:
	; 102 Call 40 fclose 0
	mov qword [rbp + 40], file_test$86
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$86:
	; 103 PostCall 40

 file_test$87:
	; 104 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$88:
	; 105 Parameter 48 pointer string_in2Etxt#
	mov qword [rbp + 48], @9995string_in2Etxt#

 file_test$89:
	; 106 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @9996string_r#

 file_test$90:
	; 107 Call 24 fopen 0
	mov qword [rbp + 24], file_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$91:
	; 108 PostCall 24

 file_test$92:
	; 109 GetReturnValue £temporary4181

 file_test$93:
	; 110 Assign inFilePtr £temporary4181
	mov [rbp + 24], rbx

 file_test$94:
	; 111 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$95:
	; 112 Parameter 56 pointer string_outY2Etxt#
	mov qword [rbp + 56], @9998string_outY2Etxt#

 file_test$96:
	; 113 Parameter 64 pointer string_w#
	mov qword [rbp + 64], @9999string_w#

 file_test$97:
	; 114 Call 32 fopen 0
	mov qword [rbp + 32], file_test$98
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$98:
	; 115 PostCall 32

 file_test$99:
	; 116 GetReturnValue £temporary4182

 file_test$100:
	; 117 Assign outFilePtr £temporary4182
	mov [rbp + 32], rbx

 file_test$101:
	; 118 NotEqual 113 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$113

 file_test$102:
	; 121 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$103:
	; 122 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$104:
	; 123 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10003string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$105:
	; 124 Parameter 80 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 80], @10004string_inFilePtr20213D20NULL#

 file_test$106:
	; 125 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10005string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$107:
	; 126 Parameter 96 signed int integral4$34#
	mov dword [rbp + 96], 34

 file_test$108:
	; 127 Call 40 fprintf 20
	mov qword [rbp + 40], file_test$109
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$109:
	; 128 PostCall 40

 file_test$110:
	; 129 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$111:
	; 130 Call 40 abort 0
	mov qword [rbp + 40], file_test$112
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$112:
	; 131 PostCall 40

 file_test$113:
	; 136 NotEqual 125 outFilePtr integral8$0#
	cmp qword [rbp + 32], 0
	jne file_test$125

 file_test$114:
	; 139 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$115:
	; 140 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$116:
	; 141 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10009string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$117:
	; 142 Parameter 80 pointer string_outFilePtr20213D20NULL#
	mov qword [rbp + 80], @10010string_outFilePtr20213D20NULL#

 file_test$118:
	; 143 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10011string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$119:
	; 144 Parameter 96 signed int integral4$35#
	mov dword [rbp + 96], 35

 file_test$120:
	; 145 Call 40 fprintf 20
	mov qword [rbp + 40], file_test$121
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$121:
	; 146 PostCall 40

 file_test$122:
	; 147 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$123:
	; 148 Call 40 abort 0
	mov qword [rbp + 40], file_test$124
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$124:
	; 149 PostCall 40

 file_test$125:
	; 154 Assign size integral4$0#
	mov dword [rbp + 40], 0

 file_test$126:
	; 155 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$127:
	; 156 Parameter 72 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$128:
	; 157 Parameter 80 pointer string_25i#
	mov qword [rbp + 80], @10016string_25i#

 file_test$129:
	; 158 Address £temporary4195 size
	mov rsi, rbp
	add rsi, 40

 file_test$130:
	; 159 Parameter 88 pointer £temporary4195
	mov [rbp + 88], rsi

 file_test$131:
	; 160 Call 48 fscanf 8
	mov qword [rbp + 48], file_test$132
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$132:
	; 161 PostCall 48

 file_test$133:
	; 162 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$134:
	; 163 Parameter 72 pointer string_size2025i0A#
	mov qword [rbp + 72], @10017string_size2025i0A#

 file_test$135:
	; 164 Parameter 80 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 file_test$136:
	; 165 Call 48 printf 4
	mov qword [rbp + 48], file_test$137
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$137:
	; 166 PostCall 48

 file_test$138:
	; 167 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$139:
	; 168 Parameter 72 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$140:
	; 169 Parameter 80 pointer string_Y20size2025i0A#
	mov qword [rbp + 80], @10018string_Y20size2025i0A#

 file_test$141:
	; 170 Parameter 88 signed int size
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 file_test$142:
	; 171 Call 48 fprintf 4
	mov qword [rbp + 48], file_test$143
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp fprintf

 file_test$143:
	; 172 PostCall 48

 file_test$144:
	; 173 Assign index integral4$0#
	mov dword [rbp + 44], 0

 file_test$145:
	; 175 GreaterThanEqual 178 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge file_test$178

 file_test$146:
	; 177 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$147:
	; 178 Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$148:
	; 179 Parameter 88 pointer string_25lf#
	mov qword [rbp + 88], @10022string_25lf#

 file_test$149:
	; 182 Address £temporary4201 value
	mov rsi, rbp
	add rsi, 48

 file_test$150:
	; 183 Parameter 96 pointer £temporary4201
	mov [rbp + 96], rsi

 file_test$151:
	; 184 Call 56 fscanf 8
	mov qword [rbp + 56], file_test$152
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$152:
	; 185 PostCall 56

 file_test$153:
	; 186 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$154:
	; 187 Parameter 80 pointer string_Y12025f0A#
	mov qword [rbp + 80], @10023string_Y12025f0A#

 file_test$155:
	; 188 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$156:
	; 189 PushFloat value
	fld qword [rbp + 48]

 file_test$157:
	; 190 Parameter 112 double value
	fstp qword [rbp + 112]

 file_test$158:
	; 191 Call 88 sqrt 0
	mov qword [rbp + 88], file_test$159
	mov [rbp + 96], rbp
	add rbp, 88
	jmp sqrt

 file_test$159:
	; 192 PostCall 88

 file_test$160:
	; 193 GetReturnValue £temporary4203

 file_test$161:
	; 194 Parameter 88 double £temporary4203
	fstp qword [rbp + 88]

 file_test$162:
	; 195 Call 56 printf 8
	mov qword [rbp + 56], file_test$163
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$163:
	; 196 PostCall 56

 file_test$164:
	; 197 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$165:
	; 198 Parameter 80 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$166:
	; 199 Parameter 88 pointer string_Y22025f0A#
	mov qword [rbp + 88], @10024string_Y22025f0A#

 file_test$167:
	; 200 PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$168:
	; 201 PushFloat value
	fld qword [rbp + 48]

 file_test$169:
	; 202 Parameter 120 double value
	fstp qword [rbp + 120]

 file_test$170:
	; 203 Call 96 sqrt 0
	mov qword [rbp + 96], file_test$171
	mov [rbp + 104], rbp
	add rbp, 96
	jmp sqrt

 file_test$171:
	; 204 PostCall 96

 file_test$172:
	; 205 GetReturnValue £temporary4205

 file_test$173:
	; 206 Parameter 96 double £temporary4205
	fstp qword [rbp + 96]

 file_test$174:
	; 207 Call 56 fprintf 8
	mov qword [rbp + 56], file_test$175
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$175:
	; 208 PostCall 56

 file_test$176:
	; 210 Add index index integral4$1#
	inc dword [rbp + 44]

 file_test$177:
	; 212 Jump 145
	jmp file_test$145

 file_test$178:
	; 213 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$179:
	; 214 Parameter 72 pointer string_0A#
	mov qword [rbp + 72], @10025string_0A#

 file_test$180:
	; 215 Call 48 printf 0
	mov qword [rbp + 48], file_test$181
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 file_test$181:
	; 216 PostCall 48

 file_test$182:
	; 217 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$183:
	; 218 Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$184:
	; 219 Call 40 fclose 0
	mov qword [rbp + 40], file_test$185
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$185:
	; 220 PostCall 40

 file_test$186:
	; 221 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$187:
	; 222 Parameter 64 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$188:
	; 223 Call 40 fclose 0
	mov qword [rbp + 40], file_test$189
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$189:
	; 224 PostCall 40

 file_test$190:
	; 225 Assign sourceFile string_Y#
	mov qword [rbp + 24], @10026string_Y#

 file_test$191:
	; 226 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$192:
	; 227 Parameter 56 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$193:
	; 228 Call 32 remove 0
	mov qword [rbp + 32], file_test$194
	mov [rbp + 40], rbp
	add rbp, 32
	jmp remove

 file_test$194:
	; 229 PostCall 32

 file_test$195:
	; 230 GetReturnValue £temporary4210

 file_test$196:
	; 231 NotEqual 203 £temporary4210 integral4$0#
	cmp ebx, 0
	jne file_test$203

 file_test$197:
	; 234 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$198:
	; 235 Parameter 56 pointer string_2225s2220has20been20removed0A#
	mov qword [rbp + 56], @10029string_2225s2220has20been20removed0A#

 file_test$199:
	; 236 Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$200:
	; 237 Call 32 printf 8
	mov qword [rbp + 32], file_test$201
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$201:
	; 238 PostCall 32

 file_test$202:
	; 239 Jump 215
	jmp file_test$215

 file_test$203:
	; 241 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$204:
	; 242 Parameter 56 pointer string_Error202225s222025i3A2025s2E0A#
	mov qword [rbp + 56], @10030string_Error202225s222025i3A2025s2E0A#

 file_test$205:
	; 243 Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$206:
	; 244 Parameter 72 signed int errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$207:
	; 245 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$208:
	; 246 Parameter 100 signed int errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$209:
	; 247 Call 76 strerror 0
	mov qword [rbp + 76], file_test$210
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$210:
	; 248 PostCall 76

 file_test$211:
	; 249 GetReturnValue £temporary4213

 file_test$212:
	; 250 Parameter 76 pointer £temporary4213
	mov [rbp + 76], rbx

 file_test$213:
	; 251 Call 32 printf 20
	mov qword [rbp + 32], file_test$214
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$214:
	; 252 PostCall 32

 file_test$215:
	; 254 Assign sourceFile string_X#
	mov qword [rbp + 24], @10031string_X#

 file_test$216:
	; 255 Assign targetFile string_Y#
	mov qword [rbp + 32], @10033string_Y#

 file_test$217:
	; 256 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$218:
	; 257 Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$219:
	; 258 Parameter 72 pointer string_w#
	mov qword [rbp + 72], @10035string_w#

 file_test$220:
	; 259 Call 40 fopen 0
	mov qword [rbp + 40], file_test$221
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$221:
	; 260 PostCall 40

 file_test$222:
	; 261 GetReturnValue £temporary4217

 file_test$223:
	; 262 Assign filePtr £temporary4217
	mov [rbp + 40], rbx

 file_test$224:
	; 263 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$225:
	; 264 Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$226:
	; 265 Parameter 80 pointer string_Hello20X#
	mov qword [rbp + 80], @10037string_Hello20X#

 file_test$227:
	; 266 Call 48 fprintf 0
	mov qword [rbp + 48], file_test$228
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp fprintf

 file_test$228:
	; 267 PostCall 48

 file_test$229:
	; 268 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$230:
	; 269 Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$231:
	; 270 Call 48 fclose 0
	mov qword [rbp + 48], file_test$232
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fclose

 file_test$232:
	; 271 PostCall 48

 file_test$233:
	; 272 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$234:
	; 273 Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$235:
	; 274 Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$236:
	; 275 Call 48 rename 0
	mov qword [rbp + 48], file_test$237
	mov [rbp + 56], rbp
	add rbp, 48
	jmp rename

 file_test$237:
	; 276 PostCall 48

 file_test$238:
	; 277 GetReturnValue £temporary4220

 file_test$239:
	; 278 NotEqual 247 £temporary4220 integral4$0#
	cmp ebx, 0
	jne file_test$247

 file_test$240:
	; 281 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$241:
	; 282 Parameter 72 pointer string_2225s2220has20been20renamed20to202225s222E0A#
	mov qword [rbp + 72], @10039string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$242:
	; 283 Parameter 80 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$243:
	; 284 Parameter 88 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$244:
	; 285 Call 48 printf 16
	mov qword [rbp + 48], file_test$245
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$245:
	; 286 PostCall 48

 file_test$246:
	; 287 Jump 260
	jmp file_test$260

 file_test$247:
	; 289 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$248:
	; 290 Parameter 72 pointer string_Error202225s22202225s222025i3A2025s2E0A#
	mov qword [rbp + 72], @10040string_Error202225s22202225s222025i3A2025s2E0A#

 file_test$249:
	; 291 Parameter 80 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$250:
	; 292 Parameter 88 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$251:
	; 293 Parameter 96 signed int errno
	mov eax, [errno]
	mov [rbp + 96], eax

 file_test$252:
	; 294 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$253:
	; 295 Parameter 124 signed int errno
	mov eax, [errno]
	mov [rbp + 124], eax

 file_test$254:
	; 296 Call 100 strerror 0
	mov qword [rbp + 100], file_test$255
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 file_test$255:
	; 297 PostCall 100

 file_test$256:
	; 298 GetReturnValue £temporary4223

 file_test$257:
	; 299 Parameter 100 pointer £temporary4223
	mov [rbp + 100], rbx

 file_test$258:
	; 300 Call 48 printf 28
	mov qword [rbp + 48], file_test$259
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

 file_test$259:
	; 301 PostCall 48

 file_test$260:
	; 303 Assign sourceFile string_X2#
	mov qword [rbp + 24], @10041string_X2#

 file_test$261:
	; 304 Assign targetFile string_Y2#
	mov qword [rbp + 32], @10043string_Y2#

 file_test$262:
	; 305 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$263:
	; 306 Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$264:
	; 307 Parameter 72 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$265:
	; 308 Call 40 rename 0
	mov qword [rbp + 40], file_test$266
	mov [rbp + 48], rbp
	add rbp, 40
	jmp rename

 file_test$266:
	; 309 PostCall 40

 file_test$267:
	; 310 GetReturnValue £temporary4227

 file_test$268:
	; 311 NotEqual 276 £temporary4227 integral4$0#
	cmp ebx, 0
	jne file_test$276

 file_test$269:
	; 314 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$270:
	; 315 Parameter 64 pointer string_2225s2220has20been20renamed20to202225s222E0A#
	mov qword [rbp + 64], @10046string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$271:
	; 316 Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$272:
	; 317 Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$273:
	; 318 Call 40 printf 16
	mov qword [rbp + 40], file_test$274
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$274:
	; 319 PostCall 40

 file_test$275:
	; 320 Jump 289
	jmp file_test$289

 file_test$276:
	; 322 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$277:
	; 323 Parameter 64 pointer string_Error202225s22202225s222025i3A2025s2E0A#
	mov qword [rbp + 64], @10047string_Error202225s22202225s222025i3A2025s2E0A#

 file_test$278:
	; 324 Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$279:
	; 325 Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$280:
	; 326 Parameter 88 signed int errno
	mov eax, [errno]
	mov [rbp + 88], eax

 file_test$281:
	; 327 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$282:
	; 328 Parameter 116 signed int errno
	mov eax, [errno]
	mov [rbp + 116], eax

 file_test$283:
	; 329 Call 92 strerror 0
	mov qword [rbp + 92], file_test$284
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

 file_test$284:
	; 330 PostCall 92

 file_test$285:
	; 331 GetReturnValue £temporary4230

 file_test$286:
	; 332 Parameter 92 pointer £temporary4230
	mov [rbp + 92], rbx

 file_test$287:
	; 333 Call 40 printf 28
	mov qword [rbp + 40], file_test$288
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 file_test$288:
	; 334 PostCall 40

 file_test$289:
	; 336 Assign targetFile string_Z#
	mov qword [rbp + 24], @10048string_Z#

 file_test$290:
	; 337 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$291:
	; 338 Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$292:
	; 339 Parameter 64 pointer string_w#
	mov qword [rbp + 64], @10050string_w#

 file_test$293:
	; 340 Call 32 fopen 0
	mov qword [rbp + 32], file_test$294
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$294:
	; 341 PostCall 32

 file_test$295:
	; 342 GetReturnValue £temporary4234

 file_test$296:
	; 343 Assign filePtr £temporary4234
	mov [rbp + 32], rbx

 file_test$297:
	; 344 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$298:
	; 345 Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$299:
	; 346 Parameter 72 pointer string_Hello20Z#
	mov qword [rbp + 72], @10052string_Hello20Z#

 file_test$300:
	; 347 Call 40 fprintf 0
	mov qword [rbp + 40], file_test$301
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 file_test$301:
	; 348 PostCall 40

 file_test$302:
	; 349 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$303:
	; 350 Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$304:
	; 351 Call 40 fclose 0
	mov qword [rbp + 40], file_test$305
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$305:
	; 352 PostCall 40

 file_test$306:
	; 353 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$307:
	; 354 Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$308:
	; 355 Call 40 remove 0
	mov qword [rbp + 40], file_test$309
	mov [rbp + 48], rbp
	add rbp, 40
	jmp remove

 file_test$309:
	; 356 PostCall 40

 file_test$310:
	; 357 GetReturnValue £temporary4237

 file_test$311:
	; 358 NotEqual 318 £temporary4237 integral4$0#
	cmp ebx, 0
	jne file_test$318

 file_test$312:
	; 361 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$313:
	; 362 Parameter 64 pointer string_2225s2220has20been20removed2E0A#
	mov qword [rbp + 64], @10054string_2225s2220has20been20removed2E0A#

 file_test$314:
	; 363 Parameter 72 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$315:
	; 364 Call 40 printf 8
	mov qword [rbp + 40], file_test$316
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$316:
	; 365 PostCall 40

 file_test$317:
	; 366 Jump 330
	jmp file_test$330

 file_test$318:
	; 368 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$319:
	; 369 Parameter 64 pointer string_Error202225s222025i3A2025s2E0A#
	mov qword [rbp + 64], @10055string_Error202225s222025i3A2025s2E0A#

 file_test$320:
	; 370 Parameter 72 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$321:
	; 371 Parameter 80 signed int errno
	mov eax, [errno]
	mov [rbp + 80], eax

 file_test$322:
	; 372 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$323:
	; 373 Parameter 108 signed int errno
	mov eax, [errno]
	mov [rbp + 108], eax

 file_test$324:
	; 374 Call 84 strerror 0
	mov qword [rbp + 84], file_test$325
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 file_test$325:
	; 375 PostCall 84

 file_test$326:
	; 376 GetReturnValue £temporary4240

 file_test$327:
	; 377 Parameter 84 pointer £temporary4240
	mov [rbp + 84], rbx

 file_test$328:
	; 378 Call 40 printf 20
	mov qword [rbp + 40], file_test$329
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$329:
	; 379 PostCall 40

 file_test$330:
	; 381 Assign targetFile string_Z2#
	mov qword [rbp + 24], @10056string_Z2#

 file_test$331:
	; 382 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$332:
	; 383 Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$333:
	; 384 Call 32 remove 0
	mov qword [rbp + 32], file_test$334
	mov [rbp + 40], rbp
	add rbp, 32
	jmp remove

 file_test$334:
	; 385 PostCall 32

 file_test$335:
	; 386 GetReturnValue £temporary4244

 file_test$336:
	; 387 NotEqual 343 £temporary4244 integral4$0#
	cmp ebx, 0
	jne file_test$343

 file_test$337:
	; 390 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$338:
	; 391 Parameter 56 pointer string_2225s2220has20been20removed2E0A#
	mov qword [rbp + 56], @10059string_2225s2220has20been20removed2E0A#

 file_test$339:
	; 392 Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$340:
	; 393 Call 32 printf 8
	mov qword [rbp + 32], file_test$341
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$341:
	; 394 PostCall 32

 file_test$342:
	; 395 Jump 355
	jmp file_test$355

 file_test$343:
	; 397 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$344:
	; 398 Parameter 56 pointer string_Error202225s222025i3A2025s2E0A#
	mov qword [rbp + 56], @10060string_Error202225s222025i3A2025s2E0A#

 file_test$345:
	; 399 Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$346:
	; 400 Parameter 72 signed int errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$347:
	; 401 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$348:
	; 402 Parameter 100 signed int errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$349:
	; 403 Call 76 strerror 0
	mov qword [rbp + 76], file_test$350
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$350:
	; 404 PostCall 76

 file_test$351:
	; 405 GetReturnValue £temporary4247

 file_test$352:
	; 406 Parameter 76 pointer £temporary4247
	mov [rbp + 76], rbx

 file_test$353:
	; 407 Call 32 printf 20
	mov qword [rbp + 32], file_test$354
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$354:
	; 408 PostCall 32

 file_test$355:
	; 410 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$356:
	; 411 Parameter 48 pointer string_PBook2Etxt#
	mov qword [rbp + 48], @10061string_PBook2Etxt#

 file_test$357:
	; 412 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @10062string_r#

 file_test$358:
	; 413 Call 24 fopen 0
	mov qword [rbp + 24], file_test$359
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$359:
	; 414 PostCall 24

 file_test$360:
	; 415 GetReturnValue £temporary4251

 file_test$361:
	; 416 Assign inFilePtr £temporary4251
	mov [rbp + 24], rbx

 file_test$362:
	; 417 NotEqual 374 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$374

 file_test$363:
	; 420 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$364:
	; 421 Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$365:
	; 422 Parameter 64 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10066string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$366:
	; 423 Parameter 72 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10067string_inFilePtr20213D20NULL#

 file_test$367:
	; 424 Parameter 80 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10068string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$368:
	; 425 Parameter 88 signed int integral4$119#
	mov dword [rbp + 88], 119

 file_test$369:
	; 426 Call 32 fprintf 20
	mov qword [rbp + 32], file_test$370
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$370:
	; 427 PostCall 32

 file_test$371:
	; 428 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$372:
	; 429 Call 32 abort 0
	mov qword [rbp + 32], file_test$373
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$373:
	; 430 PostCall 32

 file_test$374:
	; 435 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$375:
	; 436 Parameter 56 pointer string_0A252D24s20252D24s0A#
	mov qword [rbp + 56], @10070string_0A252D24s20252D24s0A#

 file_test$376:
	; 437 Parameter 64 pointer string_Name#
	mov qword [rbp + 64], @10071string_Name#

 file_test$377:
	; 438 Parameter 72 pointer string_Phone#
	mov qword [rbp + 72], @10072string_Phone#

 file_test$378:
	; 439 Call 32 printf 16
	mov qword [rbp + 32], file_test$379
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$379:
	; 440 PostCall 32

 file_test$380:
	; 441 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$381:
	; 442 Parameter 56 pointer string_252D24s20252D24s0A#
	mov qword [rbp + 56], @10073string_252D24s20252D24s0A#

 file_test$382:
	; 443 Parameter 64 pointer string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#
	mov qword [rbp + 64], @10074string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$383:
	; 444 Parameter 72 pointer string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#
	mov qword [rbp + 72], @10075string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$384:
	; 445 Call 32 printf 16
	mov qword [rbp + 32], file_test$385
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$385:
	; 446 PostCall 32

 file_test$386:
	; 447 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$387:
	; 448 Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$388:
	; 449 Parameter 72 pointer string_25i#
	mov qword [rbp + 72], @10078string_25i#

 file_test$389:
	; 450 Address £temporary4260 size
	mov rsi, rbp
	add rsi, 36

 file_test$390:
	; 451 Parameter 80 pointer £temporary4260
	mov [rbp + 80], rsi

 file_test$391:
	; 452 Call 40 fscanf 8
	mov qword [rbp + 40], file_test$392
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$392:
	; 453 PostCall 40

 file_test$393:
	; 454 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$394:
	; 455 Parameter 64 pointer string_size2025i0A#
	mov qword [rbp + 64], @10079string_size2025i0A#

 file_test$395:
	; 456 Parameter 72 signed int size
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 file_test$396:
	; 457 Call 40 printf 4
	mov qword [rbp + 40], file_test$397
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$397:
	; 458 PostCall 40

 file_test$398:
	; 459 Assign count integral4$0#
	mov dword [rbp + 32], 0

 file_test$399:
	; 461 GreaterThanEqual 415 count size
	mov eax, [rbp + 36]
	cmp [rbp + 32], eax
	jge file_test$415

 file_test$400:
	; 463 PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$401:
	; 464 Parameter 104 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 104], rax

 file_test$402:
	; 465 Parameter 112 pointer string_25s25s#
	mov qword [rbp + 112], @10088string_25s25s#

 file_test$403:
	; 466 Parameter 120 pointer name
	mov [rbp + 120], rbp
	add qword [rbp + 120], 40

 file_test$404:
	; 467 Parameter 128 pointer phone
	mov [rbp + 128], rbp
	add qword [rbp + 128], 60

 file_test$405:
	; 468 Call 80 fscanf 16
	mov qword [rbp + 80], file_test$406
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

 file_test$406:
	; 469 PostCall 80

 file_test$407:
	; 470 PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$408:
	; 471 Parameter 104 pointer string_252D24s20252D24s0A#
	mov qword [rbp + 104], @10089string_252D24s20252D24s0A#

 file_test$409:
	; 472 Parameter 112 pointer name
	mov [rbp + 112], rbp
	add qword [rbp + 112], 40

 file_test$410:
	; 473 Parameter 120 pointer phone
	mov [rbp + 120], rbp
	add qword [rbp + 120], 60

 file_test$411:
	; 474 Call 80 printf 16
	mov qword [rbp + 80], file_test$412
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$412:
	; 475 PostCall 80

 file_test$413:
	; 477 Add count count integral4$1#
	inc dword [rbp + 32]

 file_test$414:
	; 479 Jump 399
	jmp file_test$399

 file_test$415:
	; 480 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$416:
	; 481 Parameter 56 pointer string_0A#
	mov qword [rbp + 56], @10090string_0A#

 file_test$417:
	; 482 Call 32 printf 0
	mov qword [rbp + 32], file_test$418
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$418:
	; 483 PostCall 32

 file_test$419:
	; 484 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$420:
	; 485 Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$421:
	; 486 Call 32 fclose 0
	mov qword [rbp + 32], file_test$422
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$422:
	; 487 PostCall 32

 file_test$423:
	; 488 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$424:
	; 489 Parameter 48 pointer string_TestX2Ebin#
	mov qword [rbp + 48], @10091string_TestX2Ebin#

 file_test$425:
	; 490 Parameter 56 pointer string_w#
	mov qword [rbp + 56], @10092string_w#

 file_test$426:
	; 491 Call 24 fopen 0
	mov qword [rbp + 24], file_test$427
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$427:
	; 492 PostCall 24

 file_test$428:
	; 493 GetReturnValue £temporary4269

 file_test$429:
	; 494 Assign outFilePtr £temporary4269
	mov [rbp + 24], rbx

 file_test$430:
	; 495 NotEqual 442 outFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$442

 file_test$431:
	; 498 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$432:
	; 499 Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$433:
	; 500 Parameter 64 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10096string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$434:
	; 501 Parameter 72 pointer string_outFilePtr20213D20NULL#
	mov qword [rbp + 72], @10097string_outFilePtr20213D20NULL#

 file_test$435:
	; 502 Parameter 80 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10098string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$436:
	; 503 Parameter 88 signed int integral4$171#
	mov dword [rbp + 88], 171

 file_test$437:
	; 504 Call 32 fprintf 20
	mov qword [rbp + 32], file_test$438
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$438:
	; 505 PostCall 32

 file_test$439:
	; 506 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$440:
	; 507 Call 32 abort 0
	mov qword [rbp + 32], file_test$441
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$441:
	; 508 PostCall 32

 file_test$442:
	; 513 Assign size integral4$10#
	mov dword [rbp + 32], 10

 file_test$443:
	; 514 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$444:
	; 515 Address £temporary4276 size
	mov rsi, rbp
	add rsi, 32

 file_test$445:
	; 516 Parameter 64 pointer £temporary4276
	mov [rbp + 64], rsi

 file_test$446:
	; 517 Parameter 72 signed int integral4$4#
	mov dword [rbp + 72], 4

 file_test$447:
	; 518 Parameter 76 signed int integral4$1#
	mov dword [rbp + 76], 1

 file_test$448:
	; 519 Parameter 80 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$449:
	; 520 Call 40 fwrite 0
	mov qword [rbp + 40], file_test$450
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fwrite

 file_test$450:
	; 521 PostCall 40

 file_test$451:
	; 522 Assign index integral4$0#
	mov dword [rbp + 36], 0

 file_test$452:
	; 524 GreaterThanEqual 466 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$466

 file_test$453:
	; 526 Multiply £temporary4280 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$454:
	; 527 IntegralToFloating £temporary4281 £temporary4280
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$455:
	; 528 PopFloat value
	fstp qword [rbp + 40]

 file_test$456:
	; 529 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$457:
	; 532 Address £temporary4282 value
	mov rsi, rbp
	add rsi, 40

 file_test$458:
	; 533 Parameter 72 pointer £temporary4282
	mov [rbp + 72], rsi

 file_test$459:
	; 534 Parameter 80 signed int integral4$8#
	mov dword [rbp + 80], 8

 file_test$460:
	; 535 Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 file_test$461:
	; 536 Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$462:
	; 537 Call 48 fwrite 0
	mov qword [rbp + 48], file_test$463
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$463:
	; 538 PostCall 48

 file_test$464:
	; 540 Add index index integral4$1#
	inc dword [rbp + 36]

 file_test$465:
	; 542 Jump 452
	jmp file_test$452

 file_test$466:
	; 543 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$467:
	; 544 Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$468:
	; 545 Call 40 fclose 0
	mov qword [rbp + 40], file_test$469
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$469:
	; 546 PostCall 40

 file_test$470:
	; 547 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$471:
	; 548 Parameter 48 pointer string_TestX2Ebin#
	mov qword [rbp + 48], @10110string_TestX2Ebin#

 file_test$472:
	; 549 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @10111string_r#

 file_test$473:
	; 550 Call 24 fopen 0
	mov qword [rbp + 24], file_test$474
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$474:
	; 551 PostCall 24

 file_test$475:
	; 552 GetReturnValue £temporary4285

 file_test$476:
	; 553 Assign inFilePtr £temporary4285
	mov [rbp + 24], rbx

 file_test$477:
	; 554 NotEqual 489 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$489

 file_test$478:
	; 557 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$479:
	; 558 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$480:
	; 559 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10117string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$481:
	; 560 Parameter 80 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 80], @10118string_inFilePtr20213D20NULL#

 file_test$482:
	; 561 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10119string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$483:
	; 562 Parameter 96 signed int integral4$188#
	mov dword [rbp + 96], 188

 file_test$484:
	; 563 Call 40 fprintf 20
	mov qword [rbp + 40], file_test$485
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$485:
	; 564 PostCall 40

 file_test$486:
	; 565 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$487:
	; 566 Call 40 abort 0
	mov qword [rbp + 40], file_test$488
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$488:
	; 567 PostCall 40

 file_test$489:
	; 572 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$490:
	; 573 Address £temporary4292 size
	mov rsi, rbp
	add rsi, 32

 file_test$491:
	; 574 Parameter 64 pointer £temporary4292
	mov [rbp + 64], rsi

 file_test$492:
	; 575 Parameter 72 signed int integral4$4#
	mov dword [rbp + 72], 4

 file_test$493:
	; 576 Parameter 76 signed int integral4$1#
	mov dword [rbp + 76], 1

 file_test$494:
	; 577 Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$495:
	; 578 Call 40 fread 0
	mov qword [rbp + 40], file_test$496
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fread

 file_test$496:
	; 579 PostCall 40

 file_test$497:
	; 580 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$498:
	; 581 Parameter 64 pointer string_size13A2025i0A#
	mov qword [rbp + 64], @10123string_size13A2025i0A#

 file_test$499:
	; 582 Parameter 72 signed int size
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 file_test$500:
	; 583 Call 40 printf 4
	mov qword [rbp + 40], file_test$501
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$501:
	; 584 PostCall 40

 file_test$502:
	; 585 Assign index integral4$0#
	mov dword [rbp + 36], 0

 file_test$503:
	; 587 GreaterThanEqual 521 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$521

 file_test$504:
	; 589 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$505:
	; 592 Address £temporary4297 value
	mov rsi, rbp
	add rsi, 40

 file_test$506:
	; 593 Parameter 72 pointer £temporary4297
	mov [rbp + 72], rsi

 file_test$507:
	; 594 Parameter 80 signed int integral4$8#
	mov dword [rbp + 80], 8

 file_test$508:
	; 595 Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 file_test$509:
	; 596 Parameter 88 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$510:
	; 597 Call 48 fread 0
	mov qword [rbp + 48], file_test$511
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fread

 file_test$511:
	; 598 PostCall 48

 file_test$512:
	; 599 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$513:
	; 600 Parameter 72 pointer string_index13A2025i3A20value2025f0A#
	mov qword [rbp + 72], @10129string_index13A2025i3A20value2025f0A#

 file_test$514:
	; 601 Parameter 80 signed int index
	mov eax, [rbp + 36]
	mov [rbp + 80], eax

 file_test$515:
	; 602 PushFloat value
	fld qword [rbp + 40]

 file_test$516:
	; 603 Parameter 84 double value
	fstp qword [rbp + 84]

 file_test$517:
	; 604 Call 48 printf 12
	mov qword [rbp + 48], file_test$518
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$518:
	; 605 PostCall 48

 file_test$519:
	; 607 Add index index integral4$1#
	inc dword [rbp + 36]

 file_test$520:
	; 609 Jump 503
	jmp file_test$503

 file_test$521:
	; 610 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$522:
	; 611 Parameter 64 pointer string_0A#
	mov qword [rbp + 64], @10130string_0A#

 file_test$523:
	; 612 Call 40 printf 0
	mov qword [rbp + 40], file_test$524
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$524:
	; 613 PostCall 40

 file_test$525:
	; 614 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$526:
	; 615 Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$527:
	; 616 Call 40 fclose 0
	mov qword [rbp + 40], file_test$528
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$528:
	; 617 PostCall 40

 file_test$529:
	; 618 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$530:
	; 619 Parameter 48 pointer string_TestY2Ebin#
	mov qword [rbp + 48], @10131string_TestY2Ebin#

 file_test$531:
	; 620 Parameter 56 pointer string_w#
	mov qword [rbp + 56], @10132string_w#

 file_test$532:
	; 621 Call 24 fopen 0
	mov qword [rbp + 24], file_test$533
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$533:
	; 622 PostCall 24

 file_test$534:
	; 623 GetReturnValue £temporary4302

 file_test$535:
	; 624 Assign outFilePtr £temporary4302
	mov [rbp + 24], rbx

 file_test$536:
	; 625 NotEqual 548 outFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$548

 file_test$537:
	; 628 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$538:
	; 629 Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$539:
	; 630 Parameter 64 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10136string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$540:
	; 631 Parameter 72 pointer string_outFilePtr20213D20NULL#
	mov qword [rbp + 72], @10137string_outFilePtr20213D20NULL#

 file_test$541:
	; 632 Parameter 80 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10138string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$542:
	; 633 Parameter 88 signed int integral4$203#
	mov dword [rbp + 88], 203

 file_test$543:
	; 634 Call 32 fprintf 20
	mov qword [rbp + 32], file_test$544
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$544:
	; 635 PostCall 32

 file_test$545:
	; 636 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$546:
	; 637 Call 32 abort 0
	mov qword [rbp + 32], file_test$547
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$547:
	; 638 PostCall 32

 file_test$548:
	; 643 Assign size integral4$10#
	mov dword [rbp + 32], 10

 file_test$549:
	; 644 Assign index integral4$0#
	mov dword [rbp + 36], 0

 file_test$550:
	; 646 GreaterThanEqual 564 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$564

 file_test$551:
	; 648 Multiply £temporary4311 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$552:
	; 649 IntegralToFloating £temporary4312 £temporary4311
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$553:
	; 650 PopFloat value
	fstp qword [rbp + 40]

 file_test$554:
	; 651 PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$555:
	; 654 Address £temporary4313 value
	mov rsi, rbp
	add rsi, 40

 file_test$556:
	; 655 Parameter 72 pointer £temporary4313
	mov [rbp + 72], rsi

 file_test$557:
	; 656 Parameter 80 signed int integral4$8#
	mov dword [rbp + 80], 8

 file_test$558:
	; 657 Parameter 84 signed int integral4$1#
	mov dword [rbp + 84], 1

 file_test$559:
	; 658 Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$560:
	; 659 Call 48 fwrite 0
	mov qword [rbp + 48], file_test$561
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$561:
	; 660 PostCall 48

 file_test$562:
	; 662 Add index index integral4$1#
	inc dword [rbp + 36]

 file_test$563:
	; 664 Jump 550
	jmp file_test$550

 file_test$564:
	; 665 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$565:
	; 666 Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$566:
	; 667 Call 40 fclose 0
	mov qword [rbp + 40], file_test$567
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$567:
	; 668 PostCall 40

 file_test$568:
	; 669 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$569:
	; 670 Parameter 48 pointer string_TestY2Ebin#
	mov qword [rbp + 48], @10148string_TestY2Ebin#

 file_test$570:
	; 671 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @10149string_r#

 file_test$571:
	; 672 Call 24 fopen 0
	mov qword [rbp + 24], file_test$572
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$572:
	; 673 PostCall 24

 file_test$573:
	; 674 GetReturnValue £temporary4316

 file_test$574:
	; 675 Assign inFilePtr £temporary4316
	mov [rbp + 24], rbx

 file_test$575:
	; 676 NotEqual 587 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$587

 file_test$576:
	; 679 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$577:
	; 680 Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$578:
	; 681 Parameter 64 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10153string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$579:
	; 682 Parameter 72 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10154string_inFilePtr20213D20NULL#

 file_test$580:
	; 683 Parameter 80 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10155string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$581:
	; 684 Parameter 88 signed int integral4$217#
	mov dword [rbp + 88], 217

 file_test$582:
	; 685 Call 32 fprintf 20
	mov qword [rbp + 32], file_test$583
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$583:
	; 686 PostCall 32

 file_test$584:
	; 687 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$585:
	; 688 Call 32 abort 0
	mov qword [rbp + 32], file_test$586
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$586:
	; 689 PostCall 32

 file_test$587:
	; 694 Assign index integral4$0#
	mov dword [rbp + 32], 0

 file_test$588:
	; 696 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$589:
	; 699 Address £temporary4323 value
	mov rsi, rbp
	add rsi, 36

 file_test$590:
	; 700 Parameter 68 pointer £temporary4323
	mov [rbp + 68], rsi

 file_test$591:
	; 701 Parameter 76 signed int integral4$8#
	mov dword [rbp + 76], 8

 file_test$592:
	; 702 Parameter 80 signed int integral4$1#
	mov dword [rbp + 80], 1

 file_test$593:
	; 703 Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$594:
	; 704 Call 44 fread 0
	mov qword [rbp + 44], file_test$595
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$595:
	; 705 PostCall 44

 file_test$596:
	; 706 GetReturnValue £temporary4324

 file_test$597:
	; 707 LessThanEqual 608 £temporary4324 integral4$0#
	cmp ebx, 0
	jle file_test$608

 file_test$598:
	; 709 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$599:
	; 710 Parameter 68 pointer string_index23A2025i3A20value2025f0A#
	mov qword [rbp + 68], @10163string_index23A2025i3A20value2025f0A#

 file_test$600:
	; 711 Assign £temporary4327 index
	mov eax, [rbp + 32]

 file_test$601:
	; 712 Add index index integral4$1#
	inc dword [rbp + 32]

 file_test$602:
	; 714 Parameter 76 signed int £temporary4327
	mov [rbp + 76], eax

 file_test$603:
	; 715 PushFloat value
	fld qword [rbp + 36]

 file_test$604:
	; 716 Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$605:
	; 717 Call 44 printf 12
	mov qword [rbp + 44], file_test$606
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$606:
	; 718 PostCall 44

 file_test$607:
	; 720 Jump 588
	jmp file_test$588

 file_test$608:
	; 721 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$609:
	; 722 Parameter 56 pointer string_0A#
	mov qword [rbp + 56], @10166string_0A#

 file_test$610:
	; 723 Call 32 printf 0
	mov qword [rbp + 32], file_test$611
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$611:
	; 724 PostCall 32

 file_test$612:
	; 725 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$613:
	; 726 Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$614:
	; 727 Call 32 fclose 0
	mov qword [rbp + 32], file_test$615
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$615:
	; 728 PostCall 32

 file_test$616:
	; 729 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$617:
	; 730 Parameter 48 pointer string_TestY2Ebin#
	mov qword [rbp + 48], @10167string_TestY2Ebin#

 file_test$618:
	; 731 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @10168string_r#

 file_test$619:
	; 732 Call 24 fopen 0
	mov qword [rbp + 24], file_test$620
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$620:
	; 733 PostCall 24

 file_test$621:
	; 734 GetReturnValue £temporary4332

 file_test$622:
	; 735 Assign inFilePtr £temporary4332
	mov [rbp + 24], rbx

 file_test$623:
	; 736 NotEqual 635 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$635

 file_test$624:
	; 739 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$625:
	; 740 Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$626:
	; 741 Parameter 64 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10172string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$627:
	; 742 Parameter 72 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10173string_inFilePtr20213D20NULL#

 file_test$628:
	; 743 Parameter 80 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10174string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$629:
	; 744 Parameter 88 signed int integral4$232#
	mov dword [rbp + 88], 232

 file_test$630:
	; 745 Call 32 fprintf 20
	mov qword [rbp + 32], file_test$631
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$631:
	; 746 PostCall 32

 file_test$632:
	; 747 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$633:
	; 748 Call 32 abort 0
	mov qword [rbp + 32], file_test$634
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$634:
	; 749 PostCall 32

 file_test$635:
	; 754 Assign index integral4$0#
	mov dword [rbp + 32], 0

 file_test$636:
	; 756 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$637:
	; 757 Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$638:
	; 758 Call 36 feof 0
	mov qword [rbp + 36], file_test$639
	mov [rbp + 44], rbp
	add rbp, 36
	jmp feof

 file_test$639:
	; 759 PostCall 36

 file_test$640:
	; 760 GetReturnValue £temporary4339

 file_test$641:
	; 761 NotEqual 660 £temporary4339 integral4$0#
	cmp ebx, 0
	jne file_test$660

 file_test$642:
	; 763 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$643:
	; 766 Address £temporary4342 value
	mov rsi, rbp
	add rsi, 36

 file_test$644:
	; 767 Parameter 68 pointer £temporary4342
	mov [rbp + 68], rsi

 file_test$645:
	; 768 Parameter 76 signed int integral4$8#
	mov dword [rbp + 76], 8

 file_test$646:
	; 769 Parameter 80 signed int integral4$1#
	mov dword [rbp + 80], 1

 file_test$647:
	; 770 Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$648:
	; 771 Call 44 fread 0
	mov qword [rbp + 44], file_test$649
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$649:
	; 772 PostCall 44

 file_test$650:
	; 773 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$651:
	; 774 Parameter 68 pointer string_index33A2025i3A20value2025f0A#
	mov qword [rbp + 68], @10182string_index33A2025i3A20value2025f0A#

 file_test$652:
	; 775 Assign £temporary4345 index
	mov eax, [rbp + 32]

 file_test$653:
	; 776 Add index index integral4$1#
	inc dword [rbp + 32]

 file_test$654:
	; 778 Parameter 76 signed int £temporary4345
	mov [rbp + 76], eax

 file_test$655:
	; 779 PushFloat value
	fld qword [rbp + 36]

 file_test$656:
	; 780 Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$657:
	; 781 Call 44 printf 12
	mov qword [rbp + 44], file_test$658
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$658:
	; 782 PostCall 44

 file_test$659:
	; 784 Jump 636
	jmp file_test$636

 file_test$660:
	; 785 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$661:
	; 786 Parameter 56 pointer string_0A#
	mov qword [rbp + 56], @10185string_0A#

 file_test$662:
	; 787 Call 32 printf 0
	mov qword [rbp + 32], file_test$663
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$663:
	; 788 PostCall 32

 file_test$664:
	; 789 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$665:
	; 790 Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$666:
	; 791 Call 32 fclose 0
	mov qword [rbp + 32], file_test$667
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$667:
	; 792 PostCall 32

 file_test$668:
	; 793 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$669:
	; 794 Parameter 48 pointer string_TestX2Ebin#
	mov qword [rbp + 48], @10186string_TestX2Ebin#

 file_test$670:
	; 795 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @10187string_r#

 file_test$671:
	; 796 Call 24 fopen 0
	mov qword [rbp + 24], file_test$672
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$672:
	; 797 PostCall 24

 file_test$673:
	; 798 GetReturnValue £temporary4350

 file_test$674:
	; 799 Assign inFilePtr £temporary4350
	mov [rbp + 24], rbx

 file_test$675:
	; 800 NotEqual 687 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$687

 file_test$676:
	; 803 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$677:
	; 804 Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 file_test$678:
	; 805 Parameter 68 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 68], @10192string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$679:
	; 806 Parameter 76 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 76], @10193string_inFilePtr20213D20NULL#

 file_test$680:
	; 807 Parameter 84 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 84], @10194string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$681:
	; 808 Parameter 92 signed int integral4$250#
	mov dword [rbp + 92], 250

 file_test$682:
	; 809 Call 36 fprintf 20
	mov qword [rbp + 36], file_test$683
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$683:
	; 810 PostCall 36

 file_test$684:
	; 811 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$685:
	; 812 Call 36 abort 0
	mov qword [rbp + 36], file_test$686
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 file_test$686:
	; 813 PostCall 36

 file_test$687:
	; 818 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$688:
	; 819 Address £temporary4357 size
	mov rsi, rbp
	add rsi, 32

 file_test$689:
	; 820 Parameter 60 pointer £temporary4357
	mov [rbp + 60], rsi

 file_test$690:
	; 821 Parameter 68 signed int integral4$4#
	mov dword [rbp + 68], 4

 file_test$691:
	; 822 Parameter 72 signed int integral4$1#
	mov dword [rbp + 72], 1

 file_test$692:
	; 823 Parameter 76 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 file_test$693:
	; 824 Call 36 fread 0
	mov qword [rbp + 36], file_test$694
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fread

 file_test$694:
	; 825 PostCall 36

 file_test$695:
	; 826 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$696:
	; 827 Parameter 60 pointer string_size43A2025i20total2025i0A#
	mov qword [rbp + 60], @10198string_size43A2025i20total2025i0A#

 file_test$697:
	; 828 Parameter 68 signed int size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$698:
	; 829 Multiply £temporary4359 size integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@10199integral4$8#]

 file_test$699:
	; 830 Parameter 72 signed int £temporary4359
	mov [rbp + 72], eax

 file_test$700:
	; 831 Call 36 printf 8
	mov qword [rbp + 36], file_test$701
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$701:
	; 832 PostCall 36

 file_test$702:
	; 833 Multiply total size integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@10200integral4$8#]
	mov [rbp + 36], eax

 file_test$703:
	; 835 PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$704:
	; 836 Parameter 68 signed int total
	mov eax, [rbp + 36]
	mov [rbp + 68], eax

 file_test$705:
	; 837 Call 44 malloc 0
	mov qword [rbp + 44], file_test$706
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 file_test$706:
	; 838 PostCall 44

 file_test$707:
	; 839 GetReturnValue £temporary4362

 file_test$708:
	; 840 Assign p £temporary4362
	mov [rbp + 44], rbx

 file_test$709:
	; 841 Multiply £temporary4363 size integral4$8#
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@10204integral4$8#]

 file_test$710:
	; 842 IntegralToIntegral £temporary4364 £temporary4363
	mov rbx, 4294967295
	and rax, rbx

 file_test$711:
	; 843 Add endPtr p £temporary4364
	mov rbx, [rbp + 44]
	add rbx, rax
	mov [rbp + 52], rbx

 file_test$712:
	; 845 NotEqual 724 p integral8$0#
	cmp qword [rbp + 44], 0
	jne file_test$724

 file_test$713:
	; 848 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$714:
	; 849 Parameter 84 pointer stderr
	mov rax, [stderr]
	mov [rbp + 84], rax

 file_test$715:
	; 850 Parameter 92 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 92], @10208string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$716:
	; 851 Parameter 100 pointer string_p20213D20NULL#
	mov qword [rbp + 100], @10209string_p20213D20NULL#

 file_test$717:
	; 852 Parameter 108 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 108], @10210string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$718:
	; 853 Parameter 116 signed int integral4$257#
	mov dword [rbp + 116], 257

 file_test$719:
	; 854 Call 60 fprintf 20
	mov qword [rbp + 60], file_test$720
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$720:
	; 855 PostCall 60

 file_test$721:
	; 856 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$722:
	; 857 Call 60 abort 0
	mov qword [rbp + 60], file_test$723
	mov [rbp + 68], rbp
	add rbp, 60
	jmp abort

 file_test$723:
	; 858 PostCall 60

 file_test$724:
	; 863 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$725:
	; 864 Parameter 84 pointer string_malloc43A2025u2025u2025u0A#
	mov qword [rbp + 84], @10212string_malloc43A2025u2025u2025u0A#

 file_test$726:
	; 865 Parameter 92 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 92], rax

 file_test$727:
	; 866 Parameter 100 signed int total
	mov eax, [rbp + 36]
	mov [rbp + 100], eax

 file_test$728:
	; 867 Parameter 104 pointer endPtr
	mov rax, [rbp + 52]
	mov [rbp + 104], rax

 file_test$729:
	; 868 Call 60 printf 20
	mov qword [rbp + 60], file_test$730
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$730:
	; 869 PostCall 60

 file_test$731:
	; 870 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$732:
	; 871 Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$733:
	; 872 Parameter 92 signed int total
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 file_test$734:
	; 873 Parameter 96 signed int integral4$1#
	mov dword [rbp + 96], 1

 file_test$735:
	; 874 Parameter 100 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 file_test$736:
	; 875 Call 60 fread 0
	mov qword [rbp + 60], file_test$737
	mov [rbp + 68], rbp
	add rbp, 60
	jmp fread

 file_test$737:
	; 876 PostCall 60

 file_test$738:
	; 877 Assign index integral4$0#
	mov dword [rbp + 40], 0

 file_test$739:
	; 879 GreaterThanEqual 753 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge file_test$753

 file_test$740:
	; 881 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$741:
	; 882 Parameter 84 pointer string_index43A2025i3A20value2025f0A#
	mov qword [rbp + 84], @10216string_index43A2025i3A20value2025f0A#

 file_test$742:
	; 883 Parameter 92 signed int index
	mov eax, [rbp + 40]
	mov [rbp + 92], eax

 file_test$743:
	; 884 Multiply £temporary4376 index integral4$8#
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@10217integral4$8#]

 file_test$744:
	; 885 IntegralToIntegral £temporary4377 £temporary4376
	mov rbx, 4294967295
	and rax, rbx

 file_test$745:
	; 886 Add £temporary4378 p £temporary4377
	mov rsi, [rbp + 44]
	add rsi, rax

 file_test$746:
	; 887 Dereference £temporary4379 £temporary4378 0

 file_test$747:
	; 888 PushFloat £temporary4379
	fld qword [rsi]

 file_test$748:
	; 889 Parameter 96 double £temporary4379
	fstp qword [rbp + 96]

 file_test$749:
	; 890 Call 60 printf 12
	mov qword [rbp + 60], file_test$750
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$750:
	; 891 PostCall 60

 file_test$751:
	; 893 Add index index integral4$1#
	inc dword [rbp + 40]

 file_test$752:
	; 895 Jump 739
	jmp file_test$739

 file_test$753:
	; 896 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$754:
	; 897 Parameter 84 pointer string_0A#
	mov qword [rbp + 84], @10218string_0A#

 file_test$755:
	; 898 Call 60 printf 0
	mov qword [rbp + 60], file_test$756
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	jmp printf

 file_test$756:
	; 899 PostCall 60

 file_test$757:
	; 900 PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$758:
	; 901 Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$759:
	; 902 Call 60 free 0
	mov qword [rbp + 60], file_test$760
	mov [rbp + 68], rbp
	add rbp, 60
	jmp free

 file_test$760:
	; 903 PostCall 60

 file_test$761:
	; 904 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$762:
	; 905 Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$763:
	; 906 Call 36 fclose 0
	mov qword [rbp + 36], file_test$764
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 file_test$764:
	; 907 PostCall 36

 file_test$765:
	; 908 Assign personVector[0].name[0] integral1$65#
	mov byte [rbp + 24], 65

 file_test$766:
	; 909 Assign personVector[0].name[1] integral1$100#
	mov byte [rbp + 25], 100

 file_test$767:
	; 910 Assign personVector[0].name[2] integral1$97#
	mov byte [rbp + 26], 97

 file_test$768:
	; 911 Assign personVector[0].name[3] integral1$109#
	mov byte [rbp + 27], 109

 file_test$769:
	; 912 Assign personVector[0].name[4] integral1$32#
	mov byte [rbp + 28], 32

 file_test$770:
	; 913 Assign personVector[0].name[5] integral1$66#
	mov byte [rbp + 29], 66

 file_test$771:
	; 914 Assign personVector[0].name[6] integral1$101#
	mov byte [rbp + 30], 101

 file_test$772:
	; 915 Assign personVector[0].name[7] integral1$114#
	mov byte [rbp + 31], 114

 file_test$773:
	; 916 Assign personVector[0].name[8] integral1$116#
	mov byte [rbp + 32], 116

 file_test$774:
	; 917 Assign personVector[0].name[9] integral1$105#
	mov byte [rbp + 33], 105

 file_test$775:
	; 918 Assign personVector[0].name[10] integral1$108#
	mov byte [rbp + 34], 108

 file_test$776:
	; 919 Assign personVector[0].name[11] integral1$115#
	mov byte [rbp + 35], 115

 file_test$777:
	; 920 Assign personVector[0].name[12] integral1$115#
	mov byte [rbp + 36], 115

 file_test$778:
	; 921 Assign personVector[0].name[13] integral1$111#
	mov byte [rbp + 37], 111

 file_test$779:
	; 922 Assign personVector[0].name[14] integral1$110#
	mov byte [rbp + 38], 110

 file_test$780:
	; 923 Assign personVector[0].name[15] integral1$0#
	mov byte [rbp + 39], 0

 file_test$781:
	; 924 Assign personVector[0].phone integral4$12345#
	mov dword [rbp + 72], 12345

 file_test$782:
	; 925 Assign personVector[1].name[0] integral1$66#
	mov byte [rbp + 76], 66

 file_test$783:
	; 926 Assign personVector[1].name[1] integral1$101#
	mov byte [rbp + 77], 101

 file_test$784:
	; 927 Assign personVector[1].name[2] integral1$114#
	mov byte [rbp + 78], 114

 file_test$785:
	; 928 Assign personVector[1].name[3] integral1$116#
	mov byte [rbp + 79], 116

 file_test$786:
	; 929 Assign personVector[1].name[4] integral1$105#
	mov byte [rbp + 80], 105

 file_test$787:
	; 930 Assign personVector[1].name[5] integral1$108#
	mov byte [rbp + 81], 108

 file_test$788:
	; 931 Assign personVector[1].name[6] integral1$32#
	mov byte [rbp + 82], 32

 file_test$789:
	; 932 Assign personVector[1].name[7] integral1$67#
	mov byte [rbp + 83], 67

 file_test$790:
	; 933 Assign personVector[1].name[8] integral1$101#
	mov byte [rbp + 84], 101

 file_test$791:
	; 934 Assign personVector[1].name[9] integral1$97#
	mov byte [rbp + 85], 97

 file_test$792:
	; 935 Assign personVector[1].name[10] integral1$115#
	mov byte [rbp + 86], 115

 file_test$793:
	; 936 Assign personVector[1].name[11] integral1$97#
	mov byte [rbp + 87], 97

 file_test$794:
	; 937 Assign personVector[1].name[12] integral1$114#
	mov byte [rbp + 88], 114

 file_test$795:
	; 938 Assign personVector[1].name[13] integral1$115#
	mov byte [rbp + 89], 115

 file_test$796:
	; 939 Assign personVector[1].name[14] integral1$115#
	mov byte [rbp + 90], 115

 file_test$797:
	; 940 Assign personVector[1].name[15] integral1$111#
	mov byte [rbp + 91], 111

 file_test$798:
	; 941 Assign personVector[1].name[16] integral1$110#
	mov byte [rbp + 92], 110

 file_test$799:
	; 942 Assign personVector[1].name[17] integral1$0#
	mov byte [rbp + 93], 0

 file_test$800:
	; 943 Assign personVector[1].phone integral4$23456#
	mov dword [rbp + 124], 23456

 file_test$801:
	; 944 Assign personVector[2].name[0] integral1$67#
	mov byte [rbp + 128], 67

 file_test$802:
	; 945 Assign personVector[2].name[1] integral1$101#
	mov byte [rbp + 129], 101

 file_test$803:
	; 946 Assign personVector[2].name[2] integral1$97#
	mov byte [rbp + 130], 97

 file_test$804:
	; 947 Assign personVector[2].name[3] integral1$115#
	mov byte [rbp + 131], 115

 file_test$805:
	; 948 Assign personVector[2].name[4] integral1$97#
	mov byte [rbp + 132], 97

 file_test$806:
	; 949 Assign personVector[2].name[5] integral1$114#
	mov byte [rbp + 133], 114

 file_test$807:
	; 950 Assign personVector[2].name[6] integral1$32#
	mov byte [rbp + 134], 32

 file_test$808:
	; 951 Assign personVector[2].name[7] integral1$68#
	mov byte [rbp + 135], 68

 file_test$809:
	; 952 Assign personVector[2].name[8] integral1$97#
	mov byte [rbp + 136], 97

 file_test$810:
	; 953 Assign personVector[2].name[9] integral1$118#
	mov byte [rbp + 137], 118

 file_test$811:
	; 954 Assign personVector[2].name[10] integral1$105#
	mov byte [rbp + 138], 105

 file_test$812:
	; 955 Assign personVector[2].name[11] integral1$100#
	mov byte [rbp + 139], 100

 file_test$813:
	; 956 Assign personVector[2].name[12] integral1$115#
	mov byte [rbp + 140], 115

 file_test$814:
	; 957 Assign personVector[2].name[13] integral1$115#
	mov byte [rbp + 141], 115

 file_test$815:
	; 958 Assign personVector[2].name[14] integral1$111#
	mov byte [rbp + 142], 111

 file_test$816:
	; 959 Assign personVector[2].name[15] integral1$110#
	mov byte [rbp + 143], 110

 file_test$817:
	; 960 Assign personVector[2].name[16] integral1$0#
	mov byte [rbp + 144], 0

 file_test$818:
	; 961 Assign personVector[2].phone integral4$24567#
	mov dword [rbp + 176], 24567

 file_test$819:
	; 962 PreCall 232 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$820:
	; 963 Parameter 256 pointer string_Block2Ebin#
	mov qword [rbp + 256], @10282string_Block2Ebin#

 file_test$821:
	; 964 Parameter 264 pointer string_w#
	mov qword [rbp + 264], @10283string_w#

 file_test$822:
	; 965 Call 232 fopen 0
	mov qword [rbp + 232], file_test$823
	mov [rbp + 240], rbp
	add rbp, 232
	jmp fopen

 file_test$823:
	; 966 PostCall 232

 file_test$824:
	; 967 GetReturnValue £temporary4444

 file_test$825:
	; 968 Assign outFilePtr £temporary4444
	mov [rbp + 232], rbx

 file_test$826:
	; 969 PreCall 240 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$827:
	; 970 Parameter 264 pointer string_Block2Ebin#
	mov qword [rbp + 264], @10285string_Block2Ebin#

 file_test$828:
	; 971 Parameter 272 pointer string_r#
	mov qword [rbp + 272], @10286string_r#

 file_test$829:
	; 972 Call 240 fopen 0
	mov qword [rbp + 240], file_test$830
	mov [rbp + 248], rbp
	add rbp, 240
	jmp fopen

 file_test$830:
	; 973 PostCall 240

 file_test$831:
	; 974 GetReturnValue £temporary4445

 file_test$832:
	; 975 Assign inFilePtr £temporary4445
	mov [rbp + 240], rbx

 file_test$833:
	; 976 NotEqual 845 outFilePtr integral8$0#
	cmp qword [rbp + 232], 0
	jne file_test$845

 file_test$834:
	; 979 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$835:
	; 980 Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$836:
	; 981 Parameter 280 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 280], @10290string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$837:
	; 982 Parameter 288 pointer string_outFilePtr20213D20NULL#
	mov qword [rbp + 288], @10291string_outFilePtr20213D20NULL#

 file_test$838:
	; 983 Parameter 296 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 296], @10292string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$839:
	; 984 Parameter 304 signed int integral4$284#
	mov dword [rbp + 304], 284

 file_test$840:
	; 985 Call 248 fprintf 20
	mov qword [rbp + 248], file_test$841
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$841:
	; 986 PostCall 248

 file_test$842:
	; 987 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$843:
	; 988 Call 248 abort 0
	mov qword [rbp + 248], file_test$844
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$844:
	; 989 PostCall 248

 file_test$845:
	; 994 NotEqual 857 inFilePtr integral8$0#
	cmp qword [rbp + 240], 0
	jne file_test$857

 file_test$846:
	; 997 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$847:
	; 998 Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$848:
	; 999 Parameter 280 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 280], @10296string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$849:
	; 1000 Parameter 288 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 288], @10297string_inFilePtr20213D20NULL#

 file_test$850:
	; 1001 Parameter 296 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 296], @10298string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$851:
	; 1002 Parameter 304 signed int integral4$285#
	mov dword [rbp + 304], 285

 file_test$852:
	; 1003 Call 248 fprintf 20
	mov qword [rbp + 248], file_test$853
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$853:
	; 1004 PostCall 248

 file_test$854:
	; 1005 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$855:
	; 1006 Call 248 abort 0
	mov qword [rbp + 248], file_test$856
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$856:
	; 1007 PostCall 248

 file_test$857:
	; 1012 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$858:
	; 1013 Parameter 272 pointer personVector
	mov [rbp + 272], rbp
	add qword [rbp + 272], 24

 file_test$859:
	; 1014 Parameter 280 signed int integral4$156#
	mov dword [rbp + 280], 156

 file_test$860:
	; 1015 Parameter 284 signed int integral4$1#
	mov dword [rbp + 284], 1

 file_test$861:
	; 1016 Parameter 288 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 288], rax

 file_test$862:
	; 1017 Call 248 fwrite 0
	mov qword [rbp + 248], file_test$863
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fwrite

 file_test$863:
	; 1018 PostCall 248

 file_test$864:
	; 1019 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$865:
	; 1020 Parameter 272 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 272], rax

 file_test$866:
	; 1021 Call 248 fclose 0
	mov qword [rbp + 248], file_test$867
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$867:
	; 1022 PostCall 248

 file_test$868:
	; 1024 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$869:
	; 1025 Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$870:
	; 1026 Call 248 feof 0
	mov qword [rbp + 248], file_test$871
	mov [rbp + 256], rbp
	add rbp, 248
	jmp feof

 file_test$871:
	; 1027 PostCall 248

 file_test$872:
	; 1028 GetReturnValue £temporary4460

 file_test$873:
	; 1029 NotEqual 893 £temporary4460 integral4$0#
	cmp ebx, 0
	jne file_test$893

 file_test$874:
	; 1031 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$875:
	; 1032 Address £temporary4463 person
	mov rsi, rbp
	add rsi, 180

 file_test$876:
	; 1033 Parameter 272 pointer £temporary4463
	mov [rbp + 272], rsi

 file_test$877:
	; 1034 Parameter 280 signed int integral4$52#
	mov dword [rbp + 280], 52

 file_test$878:
	; 1035 Parameter 284 signed int integral4$1#
	mov dword [rbp + 284], 1

 file_test$879:
	; 1036 Parameter 288 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 288], rax

 file_test$880:
	; 1037 Call 248 fread 0
	mov qword [rbp + 248], file_test$881
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fread

 file_test$881:
	; 1038 PostCall 248

 file_test$882:
	; 1039 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$883:
	; 1040 Parameter 272 pointer string_Name20203A2025s0A#
	mov qword [rbp + 272], @10305string_Name20203A2025s0A#

 file_test$884:
	; 1041 Parameter 280 pointer person.name
	mov [rbp + 280], rbp
	add qword [rbp + 280], 180

 file_test$885:
	; 1042 Call 248 printf 8
	mov qword [rbp + 248], file_test$886
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$886:
	; 1043 PostCall 248

 file_test$887:
	; 1044 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$888:
	; 1045 Parameter 272 pointer string_Phone203A2025d0A#
	mov qword [rbp + 272], @10307string_Phone203A2025d0A#

 file_test$889:
	; 1046 Parameter 280 signed int person.phone
	mov eax, [rbp + 228]
	mov [rbp + 280], eax

 file_test$890:
	; 1047 Call 248 printf 4
	mov qword [rbp + 248], file_test$891
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$891:
	; 1048 PostCall 248

 file_test$892:
	; 1050 Jump 868
	jmp file_test$868

 file_test$893:
	; 1051 PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$894:
	; 1052 Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$895:
	; 1053 Call 248 fclose 0
	mov qword [rbp + 248], file_test$896
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$896:
	; 1054 PostCall 248

 file_test$897:
	; 1055 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$898:
	; 1056 Parameter 48 pointer string_outx2Etxt#
	mov qword [rbp + 48], @10309string_outx2Etxt#

 file_test$899:
	; 1057 Parameter 56 pointer string_r#
	mov qword [rbp + 56], @10310string_r#

 file_test$900:
	; 1058 Call 24 fopen 0
	mov qword [rbp + 24], file_test$901
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$901:
	; 1059 PostCall 24

 file_test$902:
	; 1060 GetReturnValue £temporary4468

 file_test$903:
	; 1061 Assign inFilePtr £temporary4468
	mov [rbp + 24], rbx

 file_test$904:
	; 1062 NotEqual 916 inFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne file_test$916

 file_test$905:
	; 1065 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$906:
	; 1066 Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$907:
	; 1067 Parameter 64 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 64], @10314string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$908:
	; 1068 Parameter 72 pointer string_inFilePtr20213D20NULL#
	mov qword [rbp + 72], @10315string_inFilePtr20213D20NULL#

 file_test$909:
	; 1069 Parameter 80 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 80], @10316string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$910:
	; 1070 Parameter 88 signed int integral4$301#
	mov dword [rbp + 88], 301

 file_test$911:
	; 1071 Call 32 fprintf 20
	mov qword [rbp + 32], file_test$912
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$912:
	; 1072 PostCall 32

 file_test$913:
	; 1073 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$914:
	; 1074 Call 32 abort 0
	mov qword [rbp + 32], file_test$915
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$915:
	; 1075 PostCall 32

 file_test$916:
	; 1080 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$917:
	; 1081 Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$918:
	; 1082 Parameter 64 signed int integral4$0#
	mov dword [rbp + 64], 0

 file_test$919:
	; 1083 Parameter 68 signed int SEEK_END
	mov dword [rbp + 68], 2

 file_test$920:
	; 1084 Call 32 fseek 0
	mov qword [rbp + 32], file_test$921
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 file_test$921:
	; 1085 PostCall 32

 file_test$922:
	; 1086 GetReturnValue £temporary4475

 file_test$923:
	; 1087 Assign size £temporary4475
	mov [rbp + 32], ebx

 file_test$924:
	; 1089 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$925:
	; 1090 Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$926:
	; 1091 Call 36 ftell 0
	mov qword [rbp + 36], file_test$927
	mov [rbp + 44], rbp
	add rbp, 36
	jmp ftell

 file_test$927:
	; 1092 PostCall 36

 file_test$928:
	; 1093 GetReturnValue £temporary4476

 file_test$929:
	; 1094 LessThanEqual 947 £temporary4476 integral4$1#
	cmp ebx, 1
	jle file_test$947

 file_test$930:
	; 1096 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$931:
	; 1097 Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$932:
	; 1098 Subtract size size integral4$1#
	dec dword [rbp + 32]

 file_test$933:
	; 1100 Parameter 68 signed int size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$934:
	; 1101 Parameter 72 signed int SEEK_SET
	mov dword [rbp + 72], 0

 file_test$935:
	; 1102 Call 36 fseek 0
	mov qword [rbp + 36], file_test$936
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fseek

 file_test$936:
	; 1103 PostCall 36

 file_test$937:
	; 1104 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$938:
	; 1105 PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$939:
	; 1106 Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$940:
	; 1107 Call 36 fgetc 0
	mov qword [rbp + 36], file_test$941
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fgetc

 file_test$941:
	; 1108 PostCall 36

 file_test$942:
	; 1109 GetReturnValue £temporary4480

 file_test$943:
	; 1110 Parameter 60 signed int £temporary4480
	mov [rbp + 60], ebx

 file_test$944:
	; 1111 Call 36 putchar 0
	mov qword [rbp + 36], file_test$945
	mov [rbp + 44], rbp
	add rbp, 36
	jmp putchar

 file_test$945:
	; 1112 PostCall 36

 file_test$946:
	; 1114 Jump 924
	jmp file_test$924

 file_test$947:
	; 1115 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$948:
	; 1116 Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$949:
	; 1117 Call 32 fclose 0
	mov qword [rbp + 32], file_test$950
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$950:
	; 1118 PostCall 32

 file_test$951:
	; 1119 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$952:
	; 1120 Parameter 48 pointer string_fileexists2022X223A2025s0A#
	mov qword [rbp + 48], @10322string_fileexists2022X223A2025s0A#

 file_test$953:
	; 1121 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$954:
	; 1122 Parameter 80 pointer string_X#
	mov qword [rbp + 80], @10323string_X#

 file_test$955:
	; 1123 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$956
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$956:
	; 1124 PostCall 56

 file_test$957:
	; 1125 GetReturnValue £temporary4483

 file_test$958:
	; 1126 Equal 961 £temporary4483 integral4$0#
	cmp ebx, 0
	je file_test$961

 file_test$959:
	; 1129 Assign £temporary4485 string_Yes#
	mov rax, @10324string_Yes#

 file_test$960:
	; 1130 Jump 962
	jmp file_test$962

 file_test$961:
	; 1132 Assign £temporary4485 string_No#
	mov rax, @10325string_No#

 file_test$962:
	; 1134 Parameter 56 pointer £temporary4485
	mov [rbp + 56], rax

 file_test$963:
	; 1135 Call 24 printf 8
	mov qword [rbp + 24], file_test$964
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$964:
	; 1136 PostCall 24

 file_test$965:
	; 1137 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$966:
	; 1138 Parameter 48 pointer string_fileexists2022Y223A2025s0A#
	mov qword [rbp + 48], @10327string_fileexists2022Y223A2025s0A#

 file_test$967:
	; 1139 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$968:
	; 1140 Parameter 80 pointer string_Y#
	mov qword [rbp + 80], @10328string_Y#

 file_test$969:
	; 1141 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$970
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$970:
	; 1142 PostCall 56

 file_test$971:
	; 1143 GetReturnValue £temporary4487

 file_test$972:
	; 1144 Equal 975 £temporary4487 integral4$0#
	cmp ebx, 0
	je file_test$975

 file_test$973:
	; 1147 Assign £temporary4489 string_Yes#
	mov rax, @10329string_Yes#

 file_test$974:
	; 1148 Jump 976
	jmp file_test$976

 file_test$975:
	; 1150 Assign £temporary4489 string_No#
	mov rax, @10330string_No#

 file_test$976:
	; 1152 Parameter 56 pointer £temporary4489
	mov [rbp + 56], rax

 file_test$977:
	; 1153 Call 24 printf 8
	mov qword [rbp + 24], file_test$978
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$978:
	; 1154 PostCall 24

 file_test$979:
	; 1155 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$980:
	; 1156 Parameter 48 pointer string_fileexists2022Main2Easm223A2025s0A#
	mov qword [rbp + 48], @10332string_fileexists2022Main2Easm223A2025s0A#

 file_test$981:
	; 1157 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$982:
	; 1158 Parameter 80 pointer string_Main2Easm#
	mov qword [rbp + 80], @10333string_Main2Easm#

 file_test$983:
	; 1159 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$984
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$984:
	; 1160 PostCall 56

 file_test$985:
	; 1161 GetReturnValue £temporary4491

 file_test$986:
	; 1162 Equal 989 £temporary4491 integral4$0#
	cmp ebx, 0
	je file_test$989

 file_test$987:
	; 1165 Assign £temporary4493 string_Yes#
	mov rax, @10334string_Yes#

 file_test$988:
	; 1166 Jump 990
	jmp file_test$990

 file_test$989:
	; 1168 Assign £temporary4493 string_No#
	mov rax, @10335string_No#

 file_test$990:
	; 1170 Parameter 56 pointer £temporary4493
	mov [rbp + 56], rax

 file_test$991:
	; 1171 Call 24 printf 8
	mov qword [rbp + 24], file_test$992
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$992:
	; 1172 PostCall 24

 file_test$993:
	; 1173 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$994:
	; 1174 Parameter 48 pointer string_fileexists2022MainX2Easm223A2025s0A#
	mov qword [rbp + 48], @10337string_fileexists2022MainX2Easm223A2025s0A#

 file_test$995:
	; 1175 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$996:
	; 1176 Parameter 80 pointer string_MainX2Easm#
	mov qword [rbp + 80], @10338string_MainX2Easm#

 file_test$997:
	; 1177 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$998
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$998:
	; 1178 PostCall 56

 file_test$999:
	; 1179 GetReturnValue £temporary4495

 file_test$1000:
	; 1180 Equal 1003 £temporary4495 integral4$0#
	cmp ebx, 0
	je file_test$1003

 file_test$1001:
	; 1183 Assign £temporary4497 string_Yes#
	mov rax, @10339string_Yes#

 file_test$1002:
	; 1184 Jump 1004
	jmp file_test$1004

 file_test$1003:
	; 1186 Assign £temporary4497 string_No#
	mov rax, @10340string_No#

 file_test$1004:
	; 1188 Parameter 56 pointer £temporary4497
	mov [rbp + 56], rax

 file_test$1005:
	; 1189 Call 24 printf 8
	mov qword [rbp + 24], file_test$1006
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1006:
	; 1190 PostCall 24

 file_test$1007:
	; 1191 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1008:
	; 1192 Parameter 48 pointer string_fileexists2022Main2Ec223A2025s0A#
	mov qword [rbp + 48], @10342string_fileexists2022Main2Ec223A2025s0A#

 file_test$1009:
	; 1193 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1010:
	; 1194 Parameter 80 pointer string_Main2Ec#
	mov qword [rbp + 80], @10343string_Main2Ec#

 file_test$1011:
	; 1195 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1012
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1012:
	; 1196 PostCall 56

 file_test$1013:
	; 1197 GetReturnValue £temporary4499

 file_test$1014:
	; 1198 Equal 1017 £temporary4499 integral4$0#
	cmp ebx, 0
	je file_test$1017

 file_test$1015:
	; 1201 Assign £temporary4501 string_Yes#
	mov rax, @10344string_Yes#

 file_test$1016:
	; 1202 Jump 1018
	jmp file_test$1018

 file_test$1017:
	; 1204 Assign £temporary4501 string_No#
	mov rax, @10345string_No#

 file_test$1018:
	; 1206 Parameter 56 pointer £temporary4501
	mov [rbp + 56], rax

 file_test$1019:
	; 1207 Call 24 printf 8
	mov qword [rbp + 24], file_test$1020
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1020:
	; 1208 PostCall 24

 file_test$1021:
	; 1209 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1022:
	; 1210 Parameter 48 pointer string_fileexists2022MainX2Ec223A2025s0A#
	mov qword [rbp + 48], @10347string_fileexists2022MainX2Ec223A2025s0A#

 file_test$1023:
	; 1211 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1024:
	; 1212 Parameter 80 pointer string_MainX2Ec#
	mov qword [rbp + 80], @10348string_MainX2Ec#

 file_test$1025:
	; 1213 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1026
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1026:
	; 1214 PostCall 56

 file_test$1027:
	; 1215 GetReturnValue £temporary4503

 file_test$1028:
	; 1216 Equal 1031 £temporary4503 integral4$0#
	cmp ebx, 0
	je file_test$1031

 file_test$1029:
	; 1219 Assign £temporary4505 string_Yes#
	mov rax, @10349string_Yes#

 file_test$1030:
	; 1220 Jump 1032
	jmp file_test$1032

 file_test$1031:
	; 1222 Assign £temporary4505 string_No#
	mov rax, @10350string_No#

 file_test$1032:
	; 1224 Parameter 56 pointer £temporary4505
	mov [rbp + 56], rax

 file_test$1033:
	; 1225 Call 24 printf 8
	mov qword [rbp + 24], file_test$1034
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1034:
	; 1226 PostCall 24

 file_test$1035:
	; 1227 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1036:
	; 1228 Parameter 48 pointer string_fileexists2022File2Ec223A2025s0A#
	mov qword [rbp + 48], @10352string_fileexists2022File2Ec223A2025s0A#

 file_test$1037:
	; 1229 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1038:
	; 1230 Parameter 80 pointer string_File2Ec#
	mov qword [rbp + 80], @10353string_File2Ec#

 file_test$1039:
	; 1231 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1040
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1040:
	; 1232 PostCall 56

 file_test$1041:
	; 1233 GetReturnValue £temporary4507

 file_test$1042:
	; 1234 Equal 1045 £temporary4507 integral4$0#
	cmp ebx, 0
	je file_test$1045

 file_test$1043:
	; 1237 Assign £temporary4509 string_Yes#
	mov rax, @10354string_Yes#

 file_test$1044:
	; 1238 Jump 1046
	jmp file_test$1046

 file_test$1045:
	; 1240 Assign £temporary4509 string_No#
	mov rax, @10355string_No#

 file_test$1046:
	; 1242 Parameter 56 pointer £temporary4509
	mov [rbp + 56], rax

 file_test$1047:
	; 1243 Call 24 printf 8
	mov qword [rbp + 24], file_test$1048
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1048:
	; 1244 PostCall 24

 file_test$1049:
	; 1245 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1050:
	; 1246 Parameter 48 pointer string_fileexists2022File2Ex223A2025s0A#
	mov qword [rbp + 48], @10357string_fileexists2022File2Ex223A2025s0A#

 file_test$1051:
	; 1247 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1052:
	; 1248 Parameter 80 pointer string_File2Ex#
	mov qword [rbp + 80], @10358string_File2Ex#

 file_test$1053:
	; 1249 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1054
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1054:
	; 1250 PostCall 56

 file_test$1055:
	; 1251 GetReturnValue £temporary4511

 file_test$1056:
	; 1252 Equal 1059 £temporary4511 integral4$0#
	cmp ebx, 0
	je file_test$1059

 file_test$1057:
	; 1255 Assign £temporary4513 string_Yes#
	mov rax, @10359string_Yes#

 file_test$1058:
	; 1256 Jump 1060
	jmp file_test$1060

 file_test$1059:
	; 1258 Assign £temporary4513 string_No#
	mov rax, @10360string_No#

 file_test$1060:
	; 1260 Parameter 56 pointer £temporary4513
	mov [rbp + 56], rax

 file_test$1061:
	; 1261 Call 24 printf 8
	mov qword [rbp + 24], file_test$1062
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1062:
	; 1262 PostCall 24

 file_test$1063:
	; 1263 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1064:
	; 1264 Parameter 48 pointer string_fileexists2022File2Eh223A2025s0A#
	mov qword [rbp + 48], @10362string_fileexists2022File2Eh223A2025s0A#

 file_test$1065:
	; 1265 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1066:
	; 1266 Parameter 80 pointer string_File2Eh#
	mov qword [rbp + 80], @10363string_File2Eh#

 file_test$1067:
	; 1267 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1068
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1068:
	; 1268 PostCall 56

 file_test$1069:
	; 1269 GetReturnValue £temporary4515

 file_test$1070:
	; 1270 Equal 1073 £temporary4515 integral4$0#
	cmp ebx, 0
	je file_test$1073

 file_test$1071:
	; 1273 Assign £temporary4517 string_Yes#
	mov rax, @10364string_Yes#

 file_test$1072:
	; 1274 Jump 1074
	jmp file_test$1074

 file_test$1073:
	; 1276 Assign £temporary4517 string_No#
	mov rax, @10365string_No#

 file_test$1074:
	; 1278 Parameter 56 pointer £temporary4517
	mov [rbp + 56], rax

 file_test$1075:
	; 1279 Call 24 printf 8
	mov qword [rbp + 24], file_test$1076
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1076:
	; 1280 PostCall 24

 file_test$1077:
	; 1281 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1078:
	; 1282 Parameter 48 pointer string_fileexists2022File2Ey223A2025s0A#
	mov qword [rbp + 48], @10367string_fileexists2022File2Ey223A2025s0A#

 file_test$1079:
	; 1283 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1080:
	; 1284 Parameter 80 pointer string_File2Ey#
	mov qword [rbp + 80], @10368string_File2Ey#

 file_test$1081:
	; 1285 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1082
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1082:
	; 1286 PostCall 56

 file_test$1083:
	; 1287 GetReturnValue £temporary4519

 file_test$1084:
	; 1288 Equal 1087 £temporary4519 integral4$0#
	cmp ebx, 0
	je file_test$1087

 file_test$1085:
	; 1291 Assign £temporary4521 string_Yes#
	mov rax, @10369string_Yes#

 file_test$1086:
	; 1292 Jump 1088
	jmp file_test$1088

 file_test$1087:
	; 1294 Assign £temporary4521 string_No#
	mov rax, @10370string_No#

 file_test$1088:
	; 1296 Parameter 56 pointer £temporary4521
	mov [rbp + 56], rax

 file_test$1089:
	; 1297 Call 24 printf 8
	mov qword [rbp + 24], file_test$1090
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1090:
	; 1298 PostCall 24

 file_test$1091:
	; 1299 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1092:
	; 1300 Parameter 48 pointer string_fileexists2022File2Ep223A2025s0A#
	mov qword [rbp + 48], @10372string_fileexists2022File2Ep223A2025s0A#

 file_test$1093:
	; 1301 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1094:
	; 1302 Parameter 80 pointer string_File2Ep#
	mov qword [rbp + 80], @10373string_File2Ep#

 file_test$1095:
	; 1303 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1096
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1096:
	; 1304 PostCall 56

 file_test$1097:
	; 1305 GetReturnValue £temporary4523

 file_test$1098:
	; 1306 Equal 1101 £temporary4523 integral4$0#
	cmp ebx, 0
	je file_test$1101

 file_test$1099:
	; 1309 Assign £temporary4525 string_Yes#
	mov rax, @10374string_Yes#

 file_test$1100:
	; 1310 Jump 1102
	jmp file_test$1102

 file_test$1101:
	; 1312 Assign £temporary4525 string_No#
	mov rax, @10375string_No#

 file_test$1102:
	; 1314 Parameter 56 pointer £temporary4525
	mov [rbp + 56], rax

 file_test$1103:
	; 1315 Call 24 printf 8
	mov qword [rbp + 24], file_test$1104
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1104:
	; 1316 PostCall 24

 file_test$1105:
	; 1317 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1106:
	; 1318 Parameter 48 pointer string_fileexists2022File2Ez223A2025s0A#
	mov qword [rbp + 48], @10377string_fileexists2022File2Ez223A2025s0A#

 file_test$1107:
	; 1319 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1108:
	; 1320 Parameter 80 pointer string_File2Ez#
	mov qword [rbp + 80], @10378string_File2Ez#

 file_test$1109:
	; 1321 Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1110
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1110:
	; 1322 PostCall 56

 file_test$1111:
	; 1323 GetReturnValue £temporary4527

 file_test$1112:
	; 1324 Equal 1115 £temporary4527 integral4$0#
	cmp ebx, 0
	je file_test$1115

 file_test$1113:
	; 1327 Assign £temporary4529 string_Yes#
	mov rax, @10379string_Yes#

 file_test$1114:
	; 1328 Jump 1116
	jmp file_test$1116

 file_test$1115:
	; 1330 Assign £temporary4529 string_No#
	mov rax, @10380string_No#

 file_test$1116:
	; 1332 Parameter 56 pointer £temporary4529
	mov [rbp + 56], rax

 file_test$1117:
	; 1333 Call 24 printf 8
	mov qword [rbp + 24], file_test$1118
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1118:
	; 1334 PostCall 24

 file_test$1119:
	; 1336 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$1120:
	; 1337 FunctionEnd file_test

section .data

@10716string_Hello0A#:
	; Initializer String Hello\n
	db "Hello", 10, 0

section .data

@10718string_PBookX2Etxt#:
	; Initializer String PBookX.txt
	db "PBookX.txt", 0

section .data

@10719string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@10723string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10724string_inOutFilePtr20213D20NULL#:
	; Initializer String inOutFilePtr != NULL
	db "inOutFilePtr != NULL", 0

section .data

@10725string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10727string_Temp0A#:
	; Initializer String Temp\n
	db "Temp", 10, 0

section .data

@10730string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@10731string_tempFilePtr20213D20NULL#:
	; Initializer String tempFilePtr != NULL
	db "tempFilePtr != NULL", 0

section .data

@10732string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefa\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@10737string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; Initializer String \n------------\n
	db 10, "------------", 10, 0

section .text

 temp_file:
	; 0 PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$1:
	; 1 Parameter 48 pointer string_Hello0A#
	mov qword [rbp + 48], @10716string_Hello0A#

 temp_file$2:
	; 2 Call 24 printf 0
	mov qword [rbp + 24], temp_file$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 temp_file$3:
	; 3 PostCall 24

 temp_file$4:
	; 4 PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$5:
	; 5 Parameter 56 pointer string_PBookX2Etxt#
	mov qword [rbp + 56], @10718string_PBookX2Etxt#

 temp_file$6:
	; 6 Parameter 64 pointer string_r2B#
	mov qword [rbp + 64], @10719string_r2B#

 temp_file$7:
	; 7 Call 32 fopen 0
	mov qword [rbp + 32], temp_file$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 temp_file$8:
	; 8 PostCall 32

 temp_file$9:
	; 9 GetReturnValue £temporary4557

 temp_file$10:
	; 10 Assign inOutFilePtr £temporary4557
	mov [rbp + 32], rbx

 temp_file$11:
	; 11 NotEqual 23 inOutFilePtr integral8$0#
	cmp qword [rbp + 32], 0
	jne temp_file$23

 temp_file$12:
	; 14 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$13:
	; 15 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 temp_file$14:
	; 16 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10723string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 temp_file$15:
	; 17 Parameter 80 pointer string_inOutFilePtr20213D20NULL#
	mov qword [rbp + 80], @10724string_inOutFilePtr20213D20NULL#

 temp_file$16:
	; 18 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10725string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 temp_file$17:
	; 19 Parameter 96 signed int integral4$369#
	mov dword [rbp + 96], 369

 temp_file$18:
	; 20 Call 40 fprintf 20
	mov qword [rbp + 40], temp_file$19
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 temp_file$19:
	; 21 PostCall 40

 temp_file$20:
	; 22 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$21:
	; 23 Call 40 abort 0
	mov qword [rbp + 40], temp_file$22
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 temp_file$22:
	; 24 PostCall 40

 temp_file$23:
	; 29 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$24:
	; 30 Parameter 64 pointer string_Temp0A#
	mov qword [rbp + 64], @10727string_Temp0A#

 temp_file$25:
	; 31 Call 40 printf 0
	mov qword [rbp + 40], temp_file$26
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 temp_file$26:
	; 32 PostCall 40

 temp_file$27:
	; 33 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$28:
	; 34 Call 40 tmpfile 0
	mov qword [rbp + 40], temp_file$29
	mov [rbp + 48], rbp
	add rbp, 40
	jmp tmpfile

 temp_file$29:
	; 35 PostCall 40

 temp_file$30:
	; 36 GetReturnValue £temporary4565

 temp_file$31:
	; 37 Assign tempFilePtr £temporary4565
	mov [rbp + 24], rbx

 temp_file$32:
	; 38 NotEqual 44 tempFilePtr integral8$0#
	cmp qword [rbp + 24], 0
	jne temp_file$44

 temp_file$33:
	; 41 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$34:
	; 42 Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 temp_file$35:
	; 43 Parameter 72 pointer string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#
	mov qword [rbp + 72], @10730string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 temp_file$36:
	; 44 Parameter 80 pointer string_tempFilePtr20213D20NULL#
	mov qword [rbp + 80], @10731string_tempFilePtr20213D20NULL#

 temp_file$37:
	; 45 Parameter 88 pointer string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#
	mov qword [rbp + 88], @10732string_C3A5CUsers5CStefa5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 temp_file$38:
	; 46 Parameter 96 signed int integral4$372#
	mov dword [rbp + 96], 372

 temp_file$39:
	; 47 Call 40 fprintf 20
	mov qword [rbp + 40], temp_file$40
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 temp_file$40:
	; 48 PostCall 40

 temp_file$41:
	; 49 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$42:
	; 50 Call 40 abort 0
	mov qword [rbp + 40], temp_file$43
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 temp_file$43:
	; 51 PostCall 40

 temp_file$44:
	; 58 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$45:
	; 59 Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$46:
	; 60 Call 40 fgetc 0
	mov qword [rbp + 40], temp_file$47
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fgetc

 temp_file$47:
	; 61 PostCall 40

 temp_file$48:
	; 62 GetReturnValue £temporary4572

 temp_file$49:
	; 63 IntegralToIntegral £temporary4573 £temporary4572
	cmp ebx, 0
	jge temp_file$50
	neg ebx
	neg bl

 temp_file$50:
	; 64 Assign c £temporary4573
	mov [rbp + 40], bl

 temp_file$51:
	; 65 IntegralToIntegral £temporary4574 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$52
	neg al
	neg eax

 temp_file$52:
	; 66 Equal 65 £temporary4574 integral4$minus1#
	cmp eax, -1
	je temp_file$65

 temp_file$53:
	; 73 PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$54:
	; 74 PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$55:
	; 75 IntegralToIntegral £temporary4578 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$56
	neg al
	neg eax

 temp_file$56:
	; 76 Parameter 65 signed int £temporary4578
	mov [rbp + 65], eax

 temp_file$57:
	; 77 Call 41 toupper 0
	mov qword [rbp + 41], temp_file$58
	mov [rbp + 49], rbp
	add rbp, 41
	jmp toupper

 temp_file$58:
	; 78 PostCall 41

 temp_file$59:
	; 79 GetReturnValue £temporary4579

 temp_file$60:
	; 80 Parameter 65 signed int £temporary4579
	mov [rbp + 65], ebx

 temp_file$61:
	; 81 Parameter 69 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 69], rax

 temp_file$62:
	; 82 Call 41 putc 0
	mov qword [rbp + 41], temp_file$63
	mov [rbp + 49], rbp
	add rbp, 41
	jmp putc

 temp_file$63:
	; 83 PostCall 41

 temp_file$64:
	; 85 Jump 44
	jmp temp_file$44

 temp_file$65:
	; 86 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$66:
	; 87 Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$67:
	; 88 Call 40 rewind 0
	mov qword [rbp + 40], temp_file$68
	mov [rbp + 48], rbp
	add rbp, 40
	jmp rewind

 temp_file$68:
	; 89 PostCall 40

 temp_file$69:
	; 90 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$70:
	; 91 Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$71:
	; 92 Parameter 72 pointer string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#
	mov qword [rbp + 72], @10737string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#

 temp_file$72:
	; 93 Call 40 fprintf 0
	mov qword [rbp + 40], temp_file$73
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 temp_file$73:
	; 94 PostCall 40

 temp_file$74:
	; 97 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$75:
	; 98 Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$76:
	; 99 Call 40 fgetc 0
	mov qword [rbp + 40], temp_file$77
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fgetc

 temp_file$77:
	; 100 PostCall 40

 temp_file$78:
	; 101 GetReturnValue £temporary4584

 temp_file$79:
	; 102 IntegralToIntegral £temporary4585 £temporary4584
	cmp ebx, 0
	jge temp_file$80
	neg ebx
	neg bl

 temp_file$80:
	; 103 Assign c £temporary4585
	mov [rbp + 40], bl

 temp_file$81:
	; 104 IntegralToIntegral £temporary4586 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$82
	neg al
	neg eax

 temp_file$82:
	; 105 Equal 90 £temporary4586 integral4$minus1#
	cmp eax, -1
	je temp_file$90

 temp_file$83:
	; 112 PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$84:
	; 113 IntegralToIntegral £temporary4590 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$85
	neg al
	neg eax

 temp_file$85:
	; 114 Parameter 65 signed int £temporary4590
	mov [rbp + 65], eax

 temp_file$86:
	; 115 Parameter 69 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 69], rax

 temp_file$87:
	; 116 Call 41 putc 0
	mov qword [rbp + 41], temp_file$88
	mov [rbp + 49], rbp
	add rbp, 41
	jmp putc

 temp_file$88:
	; 117 PostCall 41

 temp_file$89:
	; 119 Jump 74
	jmp temp_file$74

 temp_file$90:
	; 120 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$91:
	; 121 Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$92:
	; 122 Call 40 fclose 0
	mov qword [rbp + 40], temp_file$93
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 temp_file$93:
	; 123 PostCall 40

 temp_file$94:
	; 124 PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$95:
	; 125 Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$96:
	; 126 Call 40 fclose 0
	mov qword [rbp + 40], temp_file$97
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 temp_file$97:
	; 127 PostCall 40

 temp_file$98:
	; 129 Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 temp_file$99:
	; 130 FunctionEnd temp_file
