#import "GlobalManager.h"
#import "UserManager.h"
#import "User.pb.h"

@interface GlobalManager()

@end



@implementation GlobalManager 


static Buri *_userBuri = nil;
static NSString *_uid = nil;
static THLevelDB *_userTHDB = nil;


+ (Buri *)systemBuri
{
    static dispatch_once_t onceToken;
    static Buri *_systemBuri = nil;
    dispatch_once(&onceToken, ^{
        _systemBuri = [Buri databaseInLibraryWithName:@"System.buri"];
    });
    return _systemBuri;
}

+ (Buri *)userBuri
{
    NSString *uid = [UserManager uid];
    if ([uid length] == 0) {
        return nil;
    }
    if (![_uid isEqualToString:uid]) {
        NSString *name = [NSString stringWithFormat:@"%@.buri", uid];
        _userBuri = [Buri databaseInLibraryWithName:name];
        _uid = uid;
    }
    return _userBuri;
}

+ (THLevelDB *)systemTHDB
{
    static dispatch_once_t onceToken;
    static THLevelDB *_systemTHDB = nil;
    dispatch_once(&onceToken, ^{
        _systemTHDB = [THLevelDB levelDBWithName:@"System.thdb"];
    });
    return _systemTHDB;

}
+ (THLevelDB *)userTHDB
{
    NSString *uid = [UserManager uid];
    if ([uid length] == 0) {
        return nil;
    }
    if (![_uid isEqualToString:uid]) {
        NSString *name = [NSString stringWithFormat:@"%@.buri.thdb", uid];        
        _userTHDB = [THLevelDB levelDBWithName:name];
    }
    return _userTHDB;
}


@end

