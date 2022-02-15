#import <Foundation/Foundation.h>

@interface Person : NSObject
{
  @private NSString* name;
}

-(id) init :(NSString*) n;
-(NSString*) description;
@end

@implementation Person
  -(id) init :(NSString*) n {
    self = [super init];
    name = n;
    return self;
  }

-(NSString*) description {
  return [NSString stringWithFormat :@"[Person %@]", name];
}
@end

@interface Student : Person
{
  @private NSString* university;
}

-(id) init :(NSString*) n :(NSString*) u;
-(NSString*) description;
@end

@implementation Student
-(id) init :(NSString*) n :(NSString*) u {
  self = [super init :n];
  university = u;
  return self;
}

-(NSString*) description {
  return [NSString stringWithFormat :@"[Student %@ %@]", university, [super description]];
}
@end

@interface Employee : Person
{
  @private NSString* company;
}

-(id) init :(NSString*) n :(NSString*) c;
-(NSString*) description;
@end

@implementation Employee
-(id) init :(NSString*) n :(NSString*) c {
  self = [super init :n];
  company = c;
  return self;
}

-(NSString*) description {
  return [NSString stringWithFormat :@"[Employee %@ %@]", company, [super description]];
}
@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];  
 [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];

  Person* p = [[Person alloc] init :@"Adam"];
  NSLog(@"%@", p);

  p = [[Student alloc] init :@"Bertil" :@"Umea"];
  NSLog(@"%@", p);

  p = [[Employee alloc] init :@"Ceaser" :@"IBM"];
  NSLog(@"%@", p);


  [pool drain];
  return 0;
}
