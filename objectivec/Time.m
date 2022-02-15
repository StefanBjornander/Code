#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];  
  //NSTimeZone* cachedTimeZone = [NSTimeZone defaultTimeZone];
 [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];
  NSLog(@"\n\nHelloObjectiveC");
  [pool drain];
  return 0;
}
