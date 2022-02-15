#import <Foundation/Foundation.h>

@interface Cell : NSObject
{
  @private int value;
  @private Cell* next;
}

-(id) init :(int) v :(Cell*) n;
-(int) getValue;
-(Cell*) getNext;
-(void) setNext :(Cell*) n;
@end

@implementation Cell
  -(id) init :(int) v :(Cell*) n {
    self = [super init];
    value = v;
    next = n;
    return self;
  }

-(int) getValue {
  return value;
}

-(Cell*) getNext {
  return next;
}

-(void) setNext :(Cell*) n {
  next = n;
}
@end

@interface TopEmpty : NSException
{
}

-(id) init;
-(NSString*) description;
@end

@implementation TopEmpty
  -(id) init {
    self = [super init];
    return self;
  }

-(NSString*) description {
  return @"Topping an Empty Stack.";
}
@end

@interface PopEmpty : NSException
{
}

-(id) init;
-(NSString*) description;
@end

@implementation PopEmpty
  -(id) init {
    self = [super init];
    return self;
  }

-(NSString*) description {
  return @"Popping an Empty Stack.";
}
@end

@interface Stack : NSObject
{
  @private Cell* first;
}

-(id) init;
-(BOOL) isEmpty;
-(void) push :(int) v;
-(int) top;
-(void) pop;
-(NSString*) description;
@end

@implementation Stack
  -(id) init {
    self = [super init];
    first = nil;
    return self;
  }

-(BOOL) isEmpty {
  return (first == nil);
}

-(void) push :(int) v {
   Cell* newCell = [[Cell alloc] init :v :first];
   first = newCell;
}

-(int) top {
  if (first != nil) {
    return [first getValue];
  }
  else {
    @throw [TopEmpty alloc];
  }
}

-(void) pop {
  if (first != nil) {
    first = [first getNext];
  }
  else {
    @throw [PopEmpty alloc];
  }
}

-(NSString*) description {
  NSString* text = [[NSString alloc] init];
  text = [text stringByAppendingString :@"["];

  Cell* cell = first;
  for (; cell != nil; cell = [cell getNext]) {
    if (cell != first) {
      text = [text stringByAppendingFormat :@", "];
    }

    text = [text stringByAppendingFormat :@"%i", [cell getValue]];
  }

  return [text stringByAppendingString :@"]"];
}
@end

int main (int argc, const char * argv[]) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];  
 [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];

  @try {
    Stack* s = [[Stack alloc] init];
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [s isEmpty]]);
    NSLog(@"%@", s);

    [s push :1];
    [s push :2];
    [s push :3];
    NSLog(@"%@", s);
    NSLog([NSString stringWithFormat :@"top: %i", [s top]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [s isEmpty]]);

    [s push :4];
    NSLog(@"%@", s);
    NSLog([NSString stringWithFormat :@"top: %i", [s top]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [s isEmpty]]);

    [s pop];
    [s pop];
    NSLog(@"%@", s);
    NSLog([NSString stringWithFormat :@"top: %i", [s top]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [s isEmpty]]);

    [s pop];
    [s pop];
    NSLog(@"%@", s);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [s isEmpty]]);
    [s pop];
    NSLog([NSString stringWithFormat :@"top: %i", [s top]]);
  }
  @catch (TopEmpty* exp){
    NSLog([exp description]);
  }
  @catch (PopEmpty* exp){
    NSLog([exp description]);
  }
  @finally{
    NSLog(@"Finally");
  }

  [pool drain];
  return 0;
}
