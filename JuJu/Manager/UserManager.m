#import "UserManager.h"


@interface UserManager()

@end



@implementation UserManager 

+ (NSString *)uid
{
    return [self uid];
}
+ (NSString *)uname
{
    return [[self briefUser] uname];
}
+ (NSString *)nick
{
    return [[self briefUser] nick];
}


+ (PBUserBasic_Builder *)briefUser
{
    static dispatch_once_t onceToken;
    static PBUserBasic_Builder *basicBuilder;
    dispatch_once(&onceToken, ^{
        basicBuilder = [[PBUserBasic_Builder alloc] init];
        [basicBuilder setUname:@"LALA"];
        [basicBuilder setNick:@"ICT"];
        [basicBuilder setGender:YES];
        [basicBuilder setAvatar:@"http://image.test.com/1.png"];
    });
    
    
    
    return basicBuilder;
}

+ (PBUser_Builder *)user
{
    static dispatch_once_t onceToken;
    static PBUser_Builder *builder;
    dispatch_once(&onceToken, ^{
        builder = [[PBUser_Builder alloc] init];
        [builder setUid:@"123"];
        [builder setBasicInfoBuilder:[self briefUser]];
    });
    return builder;
}

@end

