//
//  UserService.m
//  JuJu
//
//  Created by gamy on 13-7-8.
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

@end
