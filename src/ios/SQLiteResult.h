

typedef enum {
  SQLiteStatus_NO_RESULT = 0,
  SQLiteStatus_OK,
  SQLiteStatus_ERROR
} SQLiteStatus;


@interface SQLiteResult : NSObject {}

@property (nonatomic, strong, readonly) NSNumber* status;
@property (nonatomic, strong, readonly) id message;

+ (SQLiteResult*)resultWithStatus:(SQLiteStatus)statusOrdinal messageAsString:(NSString*)theMessage;
+ (SQLiteResult*)resultWithStatus:(SQLiteStatus)statusOrdinal messageAsArray:(NSArray*)theMessage;
+ (SQLiteResult*)resultWithStatus:(SQLiteStatus)statusOrdinal messageAsDictionary:(NSDictionary*)theMessage;

@end