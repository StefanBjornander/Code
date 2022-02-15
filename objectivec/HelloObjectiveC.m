#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];  
 [NSTimeZone setDefaultTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT"]];
  NSLog(@"Hello, Objective-C!");
  [pool drain];
  return 0;
}
