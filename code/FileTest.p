$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,0$
    
    
 
     
     




extern double exp ( double x ) ;
extern double log ( double x ) ;
extern double log10 ( double x ) ;

extern double pow ( double x , double y ) ;
extern double ldexp ( double x , int exponent ) ;
extern double frexp ( double x , int * exponent ) ;

extern double sqrt ( double x ) ;
extern double modf ( double x , double * integral ) ;
extern double fmod ( double x , double y ) ;

extern double sin ( double x ) ;
extern double cos ( double x ) ;
extern double tan ( double x ) ;

extern double sinh ( double x ) ;
extern double cosh ( double x ) ;
extern double tanh ( double x ) ;

extern double asin ( double x ) ;
extern double acos ( double x ) ;
extern double atan ( double x ) ;
extern double atan2 ( double x , double y ) ;

extern double floor ( double x ) ;
extern double ceil ( double x ) ;
extern double round ( double x ) ;
extern double fabs ( double x ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,0$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
    
    
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,0$
    
    
 
     
     




      
      
      

         
         
          

      
          
         

      
      
      

      
      
      

      
      
      
         

      
      
      
      

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,3$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,0$
    
    

extern int islower ( int c ) ;
extern int isupper ( int c ) ;
extern int isalpha ( int c ) ;
extern int isdigit ( int c ) ;
extern int isalnum ( int c ) ;
extern int isxdigit ( int c ) ;
extern int isgraph ( int c ) ;
extern int isprint ( int c ) ;
extern int ispunct ( int c ) ;
extern int iscntrl ( int c ) ;
extern int isspace ( int c ) ;
extern int tolower ( int c ) ;
extern int toupper ( int c ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,4$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,0$
    
    
 
      
                         
                                    
      
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,5$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
    
    
 
           
     
     
     
     
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,6$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\file.h,0$
    
    
 
     
     
 
     
     

typedef struct {
int  open ;
unsigned int handle ;
char name [ 16  ] , ungetc ;
int errno ;
unsigned int position , size ;
int  temporary ;
} FILE ;

extern FILE * stdin , * stdout , * stderr ;

extern enum { EEXIST , ENOENT , EACCES };
extern enum { SEEK_SET , SEEK_CUR , SEEK_END };
extern enum { READ , WRITE , READ_WRITE };

         

int  fileexists ( const char * name ) ;
FILE * fopen ( const char * filename , const char * mode ) ;
FILE * freopen ( const char * filename , const char * mode , FILE * stream ) ;
int fflush ( FILE * stream ) ;
int fclose ( FILE * stream ) ;
int remove ( const char * name ) ;
int rename ( const char * oldName , const char * newName ) ;
int setvbuf ( FILE * stream , char * buffer , int mode , int  size ) ;
void setbuf ( FILE * stream , char * buffer ) ;
int fgetc ( FILE * stream ) ;
char * fgets ( char * s , int n , FILE * stream ) ;
int fputc ( int i , FILE * stream ) ;
int fputs ( const char * s , FILE * stream ) ;
int getchar ( void ) ;
char * gets ( char * s ) ;
int putchar ( int c ) ;
int puts ( const char * s ) ;
int ungetc ( int c , FILE * stream ) ;
int  fread ( void * ptr , int  size , int  nobj , FILE * stream ) ;
int  fwrite ( const void * ptr , int  size , int  nobj , FILE * stream ) ;
int fseek ( FILE * stream , int offset , int origin ) ;
int ftell ( FILE * stream ) ;
void rewind ( FILE * stream ) ;
int fgetpos ( FILE * stream , int  * ptr ) ;
int fsetpos ( FILE * stream , const int  * ptr ) ;
void clearerr ( FILE * stream ) ;
int  feof ( FILE * stream ) ;
int ferror ( FILE * stream ) ;
void perror ( const char * s ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,7$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\temp.h,0$
    
    
 
     
     

FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4  ] ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,8$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,0$
    
    
 
     
     
 
     

int scanf ( const char * format , ... ) ;
int vscanf ( const char * format , char *  arg_list ) ;
int fscanf ( FILE * inStream , const char * format , ... ) ;
int vfscanf ( FILE * inStream , const char * format , char *  arg_list ) ;
int sscanf ( char * inString , const char * format , ... ) ;
int vsscanf ( char * inString , const char * format , char *  arg_list ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,0$
    
    
 
     
     

extern int g_outStatus , g_charCount ;
extern void * g_outDevice ;

int putc ( int c , FILE * stream ) ;
int fputc ( int c , FILE * stream ) ;
int putchar ( int c ) ;

int printf ( const char * format , ... ) ;
int vprintf ( const char * format , char *  arg_list ) ;
int fprintf ( FILE * outStream , const char * format , ... ) ;
int vfprintf ( FILE * outStream , const char * format , char *  arg_list ) ;
int sprintf ( char * outString , const char * format , ... ) ;
int vsprintf ( char * outString , const char * format , char *  arg_list ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
        
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,1$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,0$
    
    

      
      
      
      
      
      
      
      
      
      
      
      
      

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,2$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,0$
    
    





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,3$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.h,0$
    
    
 
     

extern char * strcpy ( char * target , const char * source ) ;
extern char * strncpy ( char * target , const char * source , int  size ) ;
extern char * strcat ( char * target , const char * source ) ;
extern char * strncat ( char * target , const char * source , int  size ) ;
extern int strcmp ( const char * left , const char * right ) ;
extern int strncmp ( const char * left , const char * right , int  size ) ;
extern char * strchr ( const char * text , int i ) ;
extern char * strrchr ( const char * text , int i ) ;
extern int  strspn ( const char * mainString , const char * charSet ) ;
extern int  strcspn ( const char * mainString , const char * charSet ) ;
extern char * strpbrk ( const char * mainString , const char * charSet ) ;
extern char * strstr ( const char * mainString , const char * subString ) ;
extern int  strlen ( const char * string ) ;
extern char * strerror ( int error ) ;
extern char * strtok ( char * string , const char * charSet ) ;
extern void * memcpy ( void * target , const void * source , int  size ) ;
extern void * memmove ( void * target , const void * source , int  size ) ;
extern int memcmp ( const void * left , const void * right , int  size ) ;
extern void * memchr ( const void * block , int i , int  size ) ;
extern void * memset ( void * block , int i , int  size ) ;

   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,4$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,0$
    
    
 
    
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
    
    
 
        
        
        
        
        
        
        
        
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,4$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,0$
    
    
 
     
           

double atof ( const char * s ) ;
int atoi ( const char * s ) ;
long atol ( const char * s ) ;

double strtod ( const char * s , char ** endp ) ;
long strtol ( const char * s , char ** endp , int base ) ;
unsigned long strtoul ( const char * s , char ** endp , int base ) ;

int rand ( void ) ;
void srand ( unsigned int seed ) ;

char * getenv ( const char * name ) ;
int system ( const char * command ) ;

void abort ( void ) ;
void exit ( int status ) ;

typedef void ( * FUNC_PTR ) ( void ) ;
int atexit ( FUNC_PTR fcn ) ;

     
     

int abs ( int value ) ;
long labs ( long value ) ;

void * malloc ( int  size ) ;
void * realloc ( void * ptr , int  newSize ) ;
void * calloc ( int  num , int  size ) ;
void free ( void * ptr ) ;

void qsort ( void * valueList , int  listSize , int  valueSize ,
int ( * compare ) ( const void * , const void * ) ) ;
void * bsearch ( const void * key , const void * valueList ,
int  listSize , int  valueSize ,
int ( * compare ) ( const void * , const void * ) ) ;

long labs ( long value ) ;
int abs ( int value ) ;

typedef struct {
int quot , rem ;
} div_t ;

div_t div ( int num , int denum ) ;

typedef struct {
long quot , rem ;
} ldiv_t ;

ldiv_t ldiv ( long num , long denum ) ; 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,5$
        
                               
 
   
      
   
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,5$
        

extern int filecreate ( const char * name ) ;

void file_test ( ) {
{ FILE * inFilePtr = fopen ( "in.txt" , "r" ) ;
FILE * outFilePtr = fopen ( "outX.txt" , "w" ) ;

if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 14 ) ; abort ( ) ; }  ;
if ( ! ( outFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 15 ) ; abort ( ) ; }  ;



while ( ! feof ( inFilePtr ) ) {
double value ;
fscanf ( inFilePtr , "%lf" , & value ) ;
printf ( "X1 %f\n" , sqrt ( value ) ) ;
fprintf ( outFilePtr , "X2 %f\n" , sqrt ( value ) ) ;
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
fclose ( outFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "in.txt" , "r" ) ;
FILE * outFilePtr = fopen ( "outY.txt" , "w" ) ;

if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 34 ) ; abort ( ) ; }  ;
if ( ! ( outFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 35 ) ; abort ( ) ; }  ;



{ int size = 0 , index ;
fscanf ( inFilePtr , "%i" , & size ) ;
printf ( "size %i\n" , size ) ;
fprintf ( outFilePtr , "Y size %i\n" , size ) ;

for ( index = 0 ; index < size ; ++ index ) {
double value ;
fscanf ( inFilePtr , "%lf" , & value ) ;
printf ( "Y1 %f\n" , sqrt ( value ) ) ;
fprintf ( outFilePtr , "Y2 %f\n" , sqrt ( value ) ) ;
}

printf ( "\n" ) ;
}

fclose ( inFilePtr ) ;
fclose ( outFilePtr ) ;
}

{ char * sourceFile = "Y" ;

if ( remove ( sourceFile ) == 0 ) {
printf ( "\"%s\" has been removed\n" , sourceFile ) ;
}
else {
printf ( "Error \"%s\" %i: %s.\n" , sourceFile , errno , strerror ( errno ) ) ;
}
}

{ char * sourceFile = "X" ;
char * targetFile = "Y" ;

FILE * filePtr = fopen ( sourceFile , "w" ) ;
fprintf ( filePtr , "Hello X" ) ;
fclose ( filePtr ) ;

if ( rename ( sourceFile , targetFile ) == 0 ) {
printf ( "\"%s\" has been renamed to \"%s\".\n" , sourceFile , targetFile ) ;
}
else {
printf ( "Error \"%s\" \"%s\" %i: %s.\n" , sourceFile , targetFile , errno , strerror ( errno ) ) ;
}
}

{ char * sourceFile = "X2" ;
char * targetFile = "Y2" ;

if ( rename ( sourceFile , targetFile ) == 0 ) {
printf ( "\"%s\" has been renamed to \"%s\".\n" , sourceFile , targetFile ) ;
}
else {
printf ( "Error \"%s\" \"%s\" %i: %s.\n" , sourceFile , targetFile , errno , strerror ( errno ) ) ;
}
}

{ char * targetFile = "Z" ;

FILE * filePtr = fopen ( targetFile , "w" ) ;
fprintf ( filePtr , "Hello Z" ) ;
fclose ( filePtr ) ;

if ( remove ( targetFile ) == 0 ) {
printf ( "\"%s\" has been removed.\n" , targetFile ) ;
}
else {
printf ( "Error \"%s\" %i: %s.\n" , targetFile , errno , strerror ( errno ) ) ;
}
}

{ char * targetFile = "Z2" ;

if ( remove ( targetFile ) == 0 ) {
printf ( "\"%s\" has been removed.\n" , targetFile ) ;
}
else {
printf ( "Error \"%s\" %i: %s.\n" , targetFile , errno , strerror ( errno ) ) ;
}
}

{ FILE * inFilePtr = fopen ( "PBook.txt" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 119 ) ; abort ( ) ; }  ;



printf ( "\n%-24s %-24s\n" , "Name" , "Phone" ) ;
printf ( "%-24s %-24s\n" , "========================" ,
"========================" ) ;

{ int count , size ;
fscanf ( inFilePtr , "%i" , & size ) ;
printf ( "size %i\n" , size ) ;

for ( count = 0 ; count < size ; ++ count ) {
char name [ 20 ] , phone [ 20 ];

fscanf ( inFilePtr , "%s%s" , name , phone ) ;
printf ( "%-24s %-24s\n" , name , phone ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}




























{ FILE * outFilePtr = fopen ( "TestX.bin" , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 171 ) ; abort ( ) ; }  ;

{ int size = 10 , index ;
fwrite ( & size , sizeof size , 1 , outFilePtr ) ;

for ( index = 0 ; index < size ; ++ index ) {
double value = ( double ) ( index * index ) ;
fwrite ( & value , sizeof value , 1 , outFilePtr ) ;
}

fclose ( outFilePtr ) ;
}
}

{ FILE * inFilePtr = fopen ( "TestX.bin" , "r" ) ;
int size , index ;

if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 188 ) ; abort ( ) ; }  ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size1: %i\n" , size ) ;

for ( index = 0 ; index < size ; ++ index ) {
double value ;
fread ( & value , sizeof value , 1 , inFilePtr ) ;
printf ( "index1: %i: value %f\n" , index , value ) ;
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * outFilePtr = fopen ( "TestY.bin" , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 203 ) ; abort ( ) ; }  ;

{ int size = 10 , index ;

for ( index = 0 ; index < size ; ++ index ) {
double value = ( double ) ( index * index ) ;
fwrite ( & value , sizeof value , 1 , outFilePtr ) ;
}

fclose ( outFilePtr ) ;
}
}

{ FILE * inFilePtr = fopen ( "TestY.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 217 ) ; abort ( ) ; }  ;

{ int index = 0 ;
double value ;

while ( fread ( & value , sizeof value , 1 , inFilePtr ) > 0 ) {
printf ( "index2: %i: value %f\n" , index ++ , value ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "TestY.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 232 ) ; abort ( ) ; }  ;

{ int index = 0 ;

while ( ! feof ( inFilePtr ) ) {
double value ;
fread ( & value , sizeof value , 1 , inFilePtr ) ;
printf ( "index3: %i: value %f\n" , index ++ , value ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "TestX.bin" , "r" ) ;
int size ;

if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 250 ) ; abort ( ) ; }  ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size4: %i total %i\n" , size , size * sizeof ( double ) ) ;

{ int total = size * sizeof ( double ) , index ;
double * p = malloc ( total ) ;
double * endPtr = p + size ;
if ( ! ( p != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "p != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 257 ) ; abort ( ) ; }  ;
printf ( "malloc4: %u %u %u\n" , p , total , endPtr ) ;
fread ( p , total , 1 , inFilePtr ) ;

for ( index = 0 ; index < size ; ++ index ) {
printf ( "index4: %i: value %f\n" , index , p [ index ] ) ;
}

printf ( "\n" ) ;
free ( p ) ;
}
fclose ( inFilePtr ) ;
}

{ struct _Person {
char name [ 48 ];
int phone ;
};

struct _Person personVector []={{ "Adam Bertilsson" , 12345 } ,
{ "Bertil Ceasarsson" , 23456 } ,
{ "Ceasar Davidsson" , 24567 }};
struct _Person person ;

FILE * outFilePtr = fopen ( "Block.bin" , "w" ) ;
FILE * inFilePtr = fopen ( "Block.bin" , "r" ) ;

if ( ! ( outFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 284 ) ; abort ( ) ; }  ;
if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 285 ) ; abort ( ) ; }  ;

fwrite ( personVector , sizeof personVector , 1 , outFilePtr ) ;
fclose ( outFilePtr ) ;

while ( ! feof ( inFilePtr ) ) {
fread ( & person , sizeof ( struct _Person ) , 1 , inFilePtr ) ;

printf ( "Name  : %s\n" , person . name ) ;
printf ( "Phone : %d\n" , person . phone ) ;
}

fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "outx.txt" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 301 ) ; abort ( ) ; }  ;

{ int size = fseek ( inFilePtr , 0 , SEEK_END ) ;
while ( ftell ( inFilePtr ) > 1 ) {
fseek ( inFilePtr , -- size , SEEK_SET ) ;
putchar ( fgetc ( inFilePtr ) ) ;
}
}

fclose ( inFilePtr ) ;
}

                   
 printf ( "fileexists \"X\": %s\n" , fileexists ( "X" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"Y\": %s\n" , fileexists ( "Y" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"Main.asm\": %s\n" , fileexists ( "Main.asm" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"MainX.asm\": %s\n" , fileexists ( "MainX.asm" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"Main.c\": %s\n" , fileexists ( "Main.c" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"MainX.c\": %s\n" , fileexists ( "MainX.c" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"File.c\": %s\n" , fileexists ( "File.c" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"File.x\": %s\n" , fileexists ( "File.x" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"File.h\": %s\n" , fileexists ( "File.h" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"File.y\": %s\n" , fileexists ( "File.y" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"File.p\": %s\n" , fileexists ( "File.p" ) ? "Yes" : "No" )  ;
printf ( "fileexists \"File.z\": %s\n" , fileexists ( "File.z" ) ? "Yes" : "No" )  ;




































}

void temp_file ( void ) {
printf ( "Hello\n" ) ;

{ FILE * tempFilePtr ;
FILE * inOutFilePtr = fopen ( "PBookX.txt" , "r+" ) ;
if ( ! ( inOutFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inOutFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 369 ) ; abort ( ) ; }  ;
printf ( "Temp\n" ) ;
tempFilePtr = tmpfile ( ) ;
if ( ! ( tempFilePtr != ( ( void * ) 0 )  ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "tempFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 372 ) ; abort ( ) ; }  ;

while ( 1  ) {
char c = ( char ) fgetc ( inOutFilePtr )  ;

if ( c == -1  ) {
break ;
}

putc ( toupper ( c ) , tempFilePtr ) ;
}

rewind ( tempFilePtr ) ;
fprintf ( inOutFilePtr , "\n------------\n" ) ;

while ( 1  ) {
char c = ( char ) fgetc ( tempFilePtr )  ;

if ( c == -1  ) {
break ;
}

putc ( c , inOutFilePtr ) ;
}

fclose ( inOutFilePtr ) ;
fclose ( tempFilePtr ) ;
}
} 
