
#import "JJManager.h"

@interface UserManager : JJManager

+ (NSString *)uid;
+ (NSString *)uname;
+ (NSString *)nick;

+ (PBUser_Builder *)user;
+ (PBUserBasic_Builder *)briefUser;
@end
