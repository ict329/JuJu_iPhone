#import "UserManager.h"


@interface UserManager()

@end

static PBUser_Builder *_user;


@implementation UserManager 


+ (void)setUser:(PBUser *)user
{
    if (user) {
       _user = [PBUser builderWithPrototype:user];
    }
}

+ (BOOL)unLogin
{
    return [[self uid] length] == 0;
}

+ (NSString *)uid
{
    return [[self user] uid];
}
+ (NSString *)uname
{
    return [[[self user] basicInfo] uname];
}
+ (NSString *)nick
{
    return [[[self user] basicInfo] nick];
}

+ (PBUser_Builder *)user
{
    return _user;
}

+ (void)logout
{
    _user = nil;
}
@end

