
#import "JJManager.h"

@interface UserManager : JJManager

+ (BOOL)unLogin;
+ (NSString *)uid;
+ (NSString *)uname;
+ (NSString *)nick;

+ (PBUser_Builder *)user;
+ (PBUserBasic_Builder *)briefUser;
@end
