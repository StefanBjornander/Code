$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,0$
    
    
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\math.h,0$
    
    
 
     
     




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

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,3$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\ctype.h,0$
    
    

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

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,4$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdarg.h,0$
    
    
 
      
                         
                                    
      
 
   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,5$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stddef.h,0$
    
    
 
           
     
     
     
     
 
   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,6$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\file.h,0$
    
    
 
     
     
 
     
     

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

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,7$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\temp.h,0$
    
    
 
     
     

FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4  ] ) ;

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,8$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\scanf.h,0$
    
    
 
     
     
 
     

int scanf ( const char * format , ... ) ;
int vscanf ( const char * format , char *  arg_list ) ;
int fscanf ( FILE * inStream , const char * format , ... ) ;
int vfscanf ( FILE * inStream , const char * format , char *  arg_list ) ;
int sscanf ( char * inString , const char * format , ... ) ;
int vsscanf ( char * inString , const char * format , char *  arg_list ) ;

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,9$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\printf.h,0$
    
    
 
     
     

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

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\stdio.h,10$
        
 
   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\CharacterTest.c,0$
        
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\ctype.h,0$
    
    

      
      
      
      
      
      
      
      
      
      
      
      
      

   
 
$C:\Users\Stefa\Documents\vagrant\homestead\code\code\CharacterTest.c,1$
        
 
                            

void character_testX ( char c ) {
printf ( "ascii %i\n" , ( int ) c ) ;

printf ( "islower('%c') = %s\n" , c , ( islower ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isupper('%c') = %s\n" , c , ( isupper ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isalpha('%c') = %s\n" , c , ( isalpha ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isdigit('%c') = %s\n" , c , ( isdigit ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isalnum('%c') = %s\n" , c , ( isalnum ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isxdigit('%c') = %s\n" , c , ( isxdigit ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isgraph('%c') = %s\n" , c , ( isgraph ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isprint('%c') = %s\n" , c , ( isprint ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "ispunct('%c') = %s\n" , c , ( ispunct ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "iscntrl('%c') = %s\n" , c , ( iscntrl ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;
printf ( "isspace('%c') = %s\n" , c , ( isspace ( ( int ) c ) != 0 ) ? "Yes" : "No" )  ;

printf ( "tolower('%c') = '%c'\n" , c , ( char ) tolower ( c ) ) ;
printf ( "toupper('%c') = '%c'\n\n" , c , ( char ) toupper ( c ) ) ;
}

void character_test ( ) {
character_testX ( 'a' ) ;
character_testX ( 'B' ) ;
character_testX ( '1' ) ;
character_testX ( '.' ) ;
character_testX ( '\n' ) ;
character_testX ( 'f' ) ;
character_testX ( 'g' ) ;
} 
