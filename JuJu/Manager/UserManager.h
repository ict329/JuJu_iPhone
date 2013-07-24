
#import "JJManager.h"
#import "User.pb.h"

@interface UserManager : JJManager

+ (BOOL)unLogin;
+ (NSString *)uid;
+ (NSString *)uname;
+ (NSString *)nick;

+ (PBUser_Builder *)user;
+ (void)setUser:(PBUser *)user;

+ (void)logout;

@end
