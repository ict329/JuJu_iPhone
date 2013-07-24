//
//  UserService.h
//  JuJu
//
//  Created by ict on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "JJService.h"
#import "User.pb.h"

@interface UserService : JJService

/*
#define UPDATE_PROFILE  @"api/users/update_profile"
#define BIND_SNS  @"api/users/bind_sns"
*/

+ (void)registerUser:(NSString *)userName
            password:(NSString *)password
             handler:(ResultHandler)handler;

+ (void)loginWithUserName:(NSString *)userName
                 password:(NSString *)password
                  handler:(ResultHandler)handler;

+ (void)loginWithSNS:(PBRegType)type //sns type not include nick and email
                 sid:(NSString *)sid
               snick:(NSString *)snick
               token:(NSString *)token
             handler:(ResultHandler)handler;

+ (void)logoutWithHandler:(ResultHandler)handler;;

+ (void)getProfile:(NSString *)fid
           handler:(ResultHandler)handler;

+ (void)updateDeviceWithHandler:(ResultHandler)handler;

@end
