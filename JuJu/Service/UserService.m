//
//  UserService.m
//  JuJu
//
//  Created by ict on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "UserService.h"


@implementation UserService

+ (void)registerUser:(NSString *)userName
            password:(NSString *)password
             handler:(ResultHandler)handler
{
    
}

+ (void)loginWithUserName:(NSString *)userName
                 password:(NSString *)password
                  handler:(ResultHandler)handler
{
    
}

+ (void)loginWithSNS:(PBRegType)type //sns type not include nick and email
                 sid:(NSString *)sid
               snick:(NSString *)snick
               token:(NSString *)token
             handler:(ResultHandler)handler
{
    
}

+ (void)logout
{
    
}

+ (void)test
{
    
    PBResponse_Builder *builder = [[PBResponse_Builder alloc] init];
    [builder setCode:PBResultCodeSuccess];
    [builder setErrorMessage:@"haha, return it!!!"];
    PBResponse *response = [builder build];
    NSDictionary *paras = @{@"data":[response data]};
    
    [JJService postPath:@"post"
            parameters:paras
              category:LoadCacheAndRemoteData
             cachedKey:@""
              isPublic:YES
         cachedHandler:NULL
         remoteHandler:^(PBResponse *response, BOOL fromCached) {
             JJDebug(@"CODE = %d, MSG = %@", response.code, response.errorMessage);
//             PBUserBasic *basic = response.user.basicInfo;
//             JJDebug(@"<Remote>  basic user name = %@, nick = %@ ", basic.uname, basic.nick);

    }];
}

@end
