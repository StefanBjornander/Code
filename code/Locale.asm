	global enMessageList
	global setlocale
	global localeconv

	extern strcmp
	extern $StackTop


section .data

@1282string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@1283string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@1284string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@1285string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@1286string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@1287string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@1288string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@1289$enShortDayList:
	; Initializer Pointer @1282string_Sun#
	dq @1282string_Sun#
	; Initializer Pointer @1283string_Mon#
	dq @1283string_Mon#
	; Initializer Pointer @1284string_Tue#
	dq @1284string_Tue#
	; Initializer Pointer @1285string_Wed#
	dq @1285string_Wed#
	; Initializer Pointer @1286string_Thu#
	dq @1286string_Thu#
	; Initializer Pointer @1287string_Fri#
	dq @1287string_Fri#
	; Initializer Pointer @1288string_Sat#
	dq @1288string_Sat#
	; InitializerZero 0

section .data

@1290string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@1291string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@1292string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@1293string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@1294string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@1295string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@1296string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@1297$enLongDayList:
	; Initializer Pointer @1290string_Sunday#
	dq @1290string_Sunday#
	; Initializer Pointer @1291string_Monday#
	dq @1291string_Monday#
	; Initializer Pointer @1292string_Tuesday#
	dq @1292string_Tuesday#
	; Initializer Pointer @1293string_Wednesday#
	dq @1293string_Wednesday#
	; Initializer Pointer @1294string_Thursday#
	dq @1294string_Thursday#
	; Initializer Pointer @1295string_Friday#
	dq @1295string_Friday#
	; Initializer Pointer @1296string_Saturday#
	dq @1296string_Saturday#
	; InitializerZero 0

section .data

@1298string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@1299string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@1300string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@1301string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@1302string_May#:
	; Initializer String May
	db "May", 0

section .data

@1303string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@1304string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@1305string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@1306string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@1307string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@1308string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@1309string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@1310$enShortMonthList:
	; Initializer Pointer @1298string_Jan#
	dq @1298string_Jan#
	; Initializer Pointer @1299string_Feb#
	dq @1299string_Feb#
	; Initializer Pointer @1300string_Mar#
	dq @1300string_Mar#
	; Initializer Pointer @1301string_Apr#
	dq @1301string_Apr#
	; Initializer Pointer @1302string_May#
	dq @1302string_May#
	; Initializer Pointer @1303string_Jun#
	dq @1303string_Jun#
	; Initializer Pointer @1304string_Jul#
	dq @1304string_Jul#
	; Initializer Pointer @1305string_Aug#
	dq @1305string_Aug#
	; Initializer Pointer @1306string_Sep#
	dq @1306string_Sep#
	; Initializer Pointer @1307string_Oct#
	dq @1307string_Oct#
	; Initializer Pointer @1308string_Nov#
	dq @1308string_Nov#
	; Initializer Pointer @1309string_Dec#
	dq @1309string_Dec#
	; InitializerZero 0

section .data

@1311string_January#:
	; Initializer String January
	db "January", 0

section .data

@1312string_February#:
	; Initializer String February
	db "February", 0

section .data

@1313string_March#:
	; Initializer String March
	db "March", 0

section .data

@1314string_April#:
	; Initializer String April
	db "April", 0

section .data

@1315string_May#:
	; Initializer String May
	db "May", 0

section .data

@1316string_June#:
	; Initializer String June
	db "June", 0

section .data

@1317string_July#:
	; Initializer String July
	db "July", 0

section .data

@1318string_August#:
	; Initializer String August
	db "August", 0

section .data

@1319string_September#:
	; Initializer String September
	db "September", 0

section .data

@1320string_October#:
	; Initializer String October
	db "October", 0

section .data

@1321string_November#:
	; Initializer String November
	db "November", 0

section .data

@1322string_December#:
	; Initializer String December
	db "December", 0

section .data

@1323$enLongMonthList:
	; Initializer Pointer @1311string_January#
	dq @1311string_January#
	; Initializer Pointer @1312string_February#
	dq @1312string_February#
	; Initializer Pointer @1313string_March#
	dq @1313string_March#
	; Initializer Pointer @1314string_April#
	dq @1314string_April#
	; Initializer Pointer @1315string_May#
	dq @1315string_May#
	; Initializer Pointer @1316string_June#
	dq @1316string_June#
	; Initializer Pointer @1317string_July#
	dq @1317string_July#
	; Initializer Pointer @1318string_August#
	dq @1318string_August#
	; Initializer Pointer @1319string_September#
	dq @1319string_September#
	; Initializer Pointer @1320string_October#
	dq @1320string_October#
	; Initializer Pointer @1321string_November#
	dq @1321string_November#
	; Initializer Pointer @1322string_December#
	dq @1322string_December#
	; InitializerZero 0

section .data

@1346string_no20error#:
	; Initializer String no error
	db "no error", 0

section .data

@1347string_function20number20invalid#:
	; Initializer String function number invalid
	db "function number invalid", 0

section .data

@1348string_file20not20found#:
	; Initializer String file not found
	db "file not found", 0

section .data

@1349string_path20not20found#:
	; Initializer String path not found
	db "path not found", 0

section .data

@1350string_no20handle20available#:
	; Initializer String no handle available
	db "no handle available", 0

section .data

@1351string_access20denied#:
	; Initializer String access denied
	db "access denied", 0

section .data

@1352string_out20of20domain#:
	; Initializer String out of domain
	db "out of domain", 0

section .data

@1353string_out20of20range#:
	; Initializer String out of range
	db "out of range", 0

section .data

@1354string_invalid20multibyte20sequence#:
	; Initializer String invalid multibyte sequence
	db "invalid multibyte sequence", 0

section .data

@1355string_error20while20opening#:
	; Initializer String error while opening
	db "error while opening", 0

section .data

@1356string_error20while20flushing#:
	; Initializer String error while flushing
	db "error while flushing", 0

section .data

@1357string_error20while20closing#:
	; Initializer String error while closing
	db "error while closing", 0

section .data

@1358string_open20mode20invalid#:
	; Initializer String open mode invalid
	db "open mode invalid", 0

section .data

@1359string_error20while20writing#:
	; Initializer String error while writing
	db "error while writing", 0

section .data

@1360string_error20while20reading#:
	; Initializer String error while reading
	db "error while reading", 0

section .data

@1361string_error20while20seeking#:
	; Initializer String error while seeking
	db "error while seeking", 0

section .data

@1362string_error20while20telling#:
	; Initializer String error while telling
	db "error while telling", 0

section .data

@1363string_error20while20sizing#:
	; Initializer String error while sizing
	db "error while sizing", 0

section .data

@1364string_error20while20removing20file#:
	; Initializer String error while removing file
	db "error while removing file", 0

section .data

@1365string_error20while20renaming20file#:
	; Initializer String error while renaming file
	db "error while renaming file", 0

section .data

enMessageList:
	; Initializer Pointer @1346string_no20error#
	dq @1346string_no20error#
	; Initializer Pointer @1347string_function20number20invalid#
	dq @1347string_function20number20invalid#
	; Initializer Pointer @1348string_file20not20found#
	dq @1348string_file20not20found#
	; Initializer Pointer @1349string_path20not20found#
	dq @1349string_path20not20found#
	; Initializer Pointer @1350string_no20handle20available#
	dq @1350string_no20handle20available#
	; Initializer Pointer @1351string_access20denied#
	dq @1351string_access20denied#
	; Initializer Pointer @1352string_out20of20domain#
	dq @1352string_out20of20domain#
	; Initializer Pointer @1353string_out20of20range#
	dq @1353string_out20of20range#
	; Initializer Pointer @1354string_invalid20multibyte20sequence#
	dq @1354string_invalid20multibyte20sequence#
	; Initializer Pointer @1355string_error20while20opening#
	dq @1355string_error20while20opening#
	; Initializer Pointer @1356string_error20while20flushing#
	dq @1356string_error20while20flushing#
	; Initializer Pointer @1357string_error20while20closing#
	dq @1357string_error20while20closing#
	; Initializer Pointer @1358string_open20mode20invalid#
	dq @1358string_open20mode20invalid#
	; Initializer Pointer @1359string_error20while20writing#
	dq @1359string_error20while20writing#
	; Initializer Pointer @1360string_error20while20reading#
	dq @1360string_error20while20reading#
	; Initializer Pointer @1361string_error20while20seeking#
	dq @1361string_error20while20seeking#
	; Initializer Pointer @1362string_error20while20telling#
	dq @1362string_error20while20telling#
	; Initializer Pointer @1363string_error20while20sizing#
	dq @1363string_error20while20sizing#
	; Initializer Pointer @1364string_error20while20removing20file#
	dq @1364string_error20while20removing20file#
	; Initializer Pointer @1365string_error20while20renaming20file#
	dq @1365string_error20while20renaming20file#
	; InitializerZero 0

section .data

@1368string_abcdefghijklmnopqrstuvwxyz#:
	; Initializer String abcdefghijklmnopqrstuvwxyz
	db "abcdefghijklmnopqrstuvwxyz", 0

section .data

@1369string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
	; Initializer String ABCDEFGHIJKLMNOPQRSTUVWXYZ
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0

section .data

@1370$en_US_utf8:
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 1
	dd 1
	; Initializer Pointer @1289$enShortDayList
	dq @1289$enShortDayList
	; Initializer Pointer @1297$enLongDayList
	dq @1297$enLongDayList
	; Initializer Pointer @1310$enShortMonthList
	dq @1310$enShortMonthList
	; Initializer Pointer @1323$enLongMonthList
	dq @1323$enLongMonthList
	; Initializer Pointer @1368string_abcdefghijklmnopqrstuvwxyz#
	dq @1368string_abcdefghijklmnopqrstuvwxyz#
	; Initializer Pointer @1369string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq @1369string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; Initializer Pointer enMessageList
	dq enMessageList
	; InitializerZero 0

section .data

@1373string_#:
	; Initializer String 
	db 0

section .data

@1375string_C#:
	; Initializer String C
	db "C", 0

section .data

@1377string_US#:
	; Initializer String US
	db "US", 0

section .data

@1379$g_sArray:
	; Initializer Pointer @1373string_#
	dq @1373string_#
	; Initializer Pointer @1370$en_US_utf8
	dq @1370$en_US_utf8
	; InitializerZero 0
	; Initializer Pointer @1375string_C#
	dq @1375string_C#
	; Initializer Pointer @1370$en_US_utf8
	dq @1370$en_US_utf8
	; InitializerZero 0
	; Initializer Pointer @1377string_US#
	dq @1377string_US#
	; Initializer Pointer @1370$en_US_utf8
	dq @1370$en_US_utf8
	; InitializerZero 0
	; InitializerZero 0

section .data

@1386$g_sSize:
	; Initializer SignedInt 6
	dd 6

section .data

@1391$g_currStructPtr:
	; Initializer Pointer @1379$g_sArray
	dq @1379$g_sArray

section .data

@1407integral4$16#:
	; Initializer SignedInt 16
	dd 16

section .data

@1410integral4$16#:
	; Initializer SignedInt 16
	dd 16

section .text

 setlocale:
	; Equal 4 g_currStructPtr integral8$0#
	cmp qword [@1391$g_currStructPtr], 0
	je setlocale$4

 setlocale$1:
	; Dereference £temporary365 g_currStructPtr 0
	mov rsi, [@1391$g_currStructPtr]

 setlocale$2:
	; Assign £temporary366 £temporary365.name
	mov rax, [rsi]

 setlocale$3:
	; Jump 5
	jmp setlocale$5

 setlocale$4:
	; Assign £temporary366 integral8$0#
	mov rax, 0

 setlocale$5:
	; Assign oldName £temporary366
	mov [rbp + 40], rax

 setlocale$6:
	; Assign g_currStructPtr integral8$0#
	mov qword [@1391$g_currStructPtr], 0

 setlocale$7:
	; Equal 30 newName integral8$0#
	cmp qword [rbp + 28], 0
	je setlocale$30

 setlocale$8:
	; Assign index integral4$0#
	mov dword [rbp + 36], 0

 setlocale$9:
	; GreaterThanEqual 30 index g_sSize
	mov eax, [@1386$g_sSize]
	cmp [rbp + 36], eax
	jge setlocale$30

 setlocale$10:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setlocale$11:
	; Parameter 72 pointer newName
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 setlocale$12:
	; Multiply £temporary370 index integral4$16#
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [@1407integral4$16#]

 setlocale$13:
	; IntegralToIntegral £temporary371 £temporary370
	mov rbx, 4294967295
	and rax, rbx

 setlocale$14:
	; Add £temporary372 g_sArray £temporary371
	mov rsi, @1379$g_sArray
	add rsi, rax

 setlocale$15:
	; Dereference £temporary373 £temporary372 0

 setlocale$16:
	; Parameter 80 pointer £temporary373.name
	mov rax, [rsi]
	mov [rbp + 80], rax

 setlocale$17:
	; Call 48 strcmp 0
	mov qword [rbp + 48], setlocale$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strcmp

 setlocale$18:
	; PostCall 48

 setlocale$19:
	; GetReturnValue £temporary374

 setlocale$20:
	; NotEqual 28 £temporary374 integral4$0#
	cmp ebx, 0
	jne setlocale$28

 setlocale$21:
	; Multiply £temporary376 index integral4$16#
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [@1410integral4$16#]

 setlocale$22:
	; IntegralToIntegral £temporary377 £temporary376
	mov rbx, 4294967295
	and rax, rbx

 setlocale$23:
	; Add £temporary378 g_sArray £temporary377
	mov rsi, @1379$g_sArray
	add rsi, rax

 setlocale$24:
	; Dereference £temporary379 £temporary378 0

 setlocale$25:
	; Address £temporary380 £temporary379

 setlocale$26:
	; Assign g_currStructPtr £temporary380
	mov [@1391$g_currStructPtr], rsi

 setlocale$27:
	; Jump 30
	jmp setlocale$30

 setlocale$28:
	; Add index index integral4$1#
	inc dword [rbp + 36]

 setlocale$29:
	; Jump 9
	jmp setlocale$9

 setlocale$30:
	; Return oldName
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setlocale$31:
	; FunctionEnd setlocale

section .text

 localeconv:
	; Equal 4 g_currStructPtr integral8$0#
	cmp qword [@1391$g_currStructPtr], 0
	je localeconv$4

 localeconv$1:
	; Dereference £temporary386 g_currStructPtr 0
	mov rsi, [@1391$g_currStructPtr]

 localeconv$2:
	; Assign £temporary387 £temporary386.localePtr
	mov rbx, [rsi + 8]

 localeconv$3:
	; Jump 5
	jmp localeconv$5

 localeconv$4:
	; Assign £temporary387 integral8$0#
	mov rbx, 0

 localeconv$5:
	; Return £temporary387
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localeconv$6:
	; FunctionEnd localeconv
