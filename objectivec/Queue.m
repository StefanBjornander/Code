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

@interface FrontEmpty : NSException
{
}

-(id) init;
-(NSString*) description;
@end

@implementation FrontEmpty
  -(id) init {
    self = [super init];
    return self;
  }

-(NSString*) description {
  return @"Fronting an Empty Queue.";
}
@end

@interface RemoveEmpty : NSException
{
}

-(id) init;
-(NSString*) description;
@end

@implementation RemoveEmpty
  -(id) init {
    self = [super init];
    return self;
  }

-(NSString*) description {
  return @"Removing an Empty Queue.";
}
@end

@interface Queue : NSObject
{
  @private Cell* first;
  @private Cell* last;
}

-(id) init;
-(BOOL) isEmpty;
-(void) add :(int) v;
-(int) front;
-(void) remove;
-(NSString*) description;
@end

@implementation Queue
  -(id) init {
    self = [super init];
    first = last = nil;
    return self;
  }

-(BOOL) isEmpty {
  return (first == nil);
}

-(void) add :(int) v {
   Cell* newCell = [[Cell alloc] init :v :nil];

   if (last == nil) {
     first = last = newCell;
   }
   else {
     [last setNext :newCell];
     last = newCell;
   }
}

-(int) front {
  if (first != nil) {
    return [first getValue];
  }
  else {
    @throw [FrontEmpty alloc];
  }
}

-(void) remove {
  if (first != nil) {
    first = [first getNext];

    if (first == nil) {
      last = nil;
    }
  }
  else {
    @throw [RemoveEmpty alloc];
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
    Queue* q = [[Queue alloc] init];
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [q isEmpty]]);
    NSLog(@"%@", q);

    [q add :1];
    [q add :2];
    [q add :3];
    NSLog(@"%@", q);
    NSLog([NSString stringWithFormat :@"front: %i", [q front]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [q isEmpty]]);

    [q add :4];
    NSLog(@"%@", q);
    NSLog([NSString stringWithFormat :@"front: %i", [q front]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [q isEmpty]]);

    [q remove];
    [q remove];
    NSLog(@"%@", q);
    NSLog([NSString stringWithFormat :@"front: %i", [q front]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [q isEmpty]]);

    [q remove];
    [q remove];
    NSLog(@"%@", q);
    [q remove];
    NSLog([NSString stringWithFormat :@"front: %i", [q front]]);
    NSLog([NSString stringWithFormat :@"isEmpty: %i", [q isEmpty]]);
  }
  @catch (FrontEmpty* exp) {
    NSLog([exp description]);
  }
  @catch (RemoveEmpty* exp) {
    NSLog([exp description]);
  }
  @finally{
    NSLog(@"Finally");
  }

  [pool drain];
  return 0;
}
