//
//  UserService.m
//  JuJu
//
//  Created by ict on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "UserService.h"
#import "ServiceConstants.h"

@implementation UserService

+ (void)registerUser:(NSString *)userName
            password:(NSString *)password
             handler:(ResultHandler)handler
{
    [JJService getPath:REGISTER
            parameters:@{UNAME:userName, PASSWORD:password,
              LATITUDE:@([GlobalManager location].latitude),
             LONGITUDE:@([GlobalManager location].longitude)}
     
         remoteHandler:handler];
}

+ (void)loginWithUserName:(NSString *)userName
                 password:(NSString *)password
                  handler:(ResultHandler)handler
{
    [JJService getPath:LOGIN
            parameters:@{UNAME:userName,
              PASSWORD:password,
              LATITUDE:@([GlobalManager location].latitude),
              LONGITUDE:@([GlobalManager location].longitude)}
         remoteHandler:handler];
}

+ (void)loginWithSNS:(PBRegType)type //sns type not include nick and email
                 sid:(NSString *)sid
               snick:(NSString *)snick
               token:(NSString *)token
             handler:(ResultHandler)handler
{
    
}

+ (void)logoutWithHandler:(ResultHandler)handler
{
    [JJService getPath:LOGOUT parameters:nil remoteHandler:handler];
}

+ (void)getProfile:(NSString *)fid
           handler:(ResultHandler)handler
{
    [JJService getPath:GET_PROFILE parameters:@{FID: fid} remoteHandler:handler];
}

+ (void)updateDeviceWithHandler:(ResultHandler)handler
{
//    [MobClick ]
}


@end

