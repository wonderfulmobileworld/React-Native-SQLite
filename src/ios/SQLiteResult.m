

#import <Foundation/Foundation.h>
#import "SQLiteResult.h"

@interface SQLiteResult ()

- (SQLiteResult *)initWithStatus:(SQLiteStatus)statusOrdinal message:(id)theMessage;

@end

@implementation SQLiteResult
@synthesize status, message;

- (SQLiteResult*)init
{
  return [self initWithStatus:SQLiteStatus_NO_RESULT message:nil];
}

- (SQLiteResult*)initWithStatus:(SQLiteStatus)statusOrdinal message:(id)theMessage
{
  self = [super init];
  if (self) {
    status = [NSNumber numberWithInt:statusOrdinal];
    message = theMessage;
  }
  return self;
}

+ (SQLiteResult*)resultWithStatus:(SQLiteStatus)statusOrdinal messageAsString:(NSString*)theMessage
{
  return [[self alloc] initWithStatus:statusOrdinal message:theMessage];
}

+ (SQLiteResult*)resultWithStatus:(SQLiteStatus)statusOrdinal messageAsArray:(NSArray*)theMessage
{
  return [[self alloc] initWithStatus:statusOrdinal message:theMessage];
}

+ (SQLiteResult*)resultWithStatus:(SQLiteStatus)statusOrdinal messageAsDictionary:(NSDictionary*)theMessage
{
  return [[self alloc] initWithStatus:statusOrdinal message:theMessage];
}



@end