//
//  ProfileController.m
//  JuJu
//
//  Created by gamy on 13-7-25.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "ProfileController.h"
#import "UserService.h"
#import "UserManager.h"
#import <ShareSDK/ShareSDK.h>


@interface ProfileController ()

@end

@implementation ProfileController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [[AppManager sharedManager] updateLocation];
//    [[AppManager sharedManager] performSelector:@selector(updateLocation) withObject:nil afterDelay:3];
//    [[AppManager sharedManager] performSelectorOnMainThread:@selector(updateLocation) withObject:nil waitUntilDone:YES];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setUname:nil];
    [self setPassword:nil];
    [super viewDidUnload];
}
- (IBAction)reg:(id)sender {
    [UserService registerUser:self.uname.text password:self.password.text handler:^(PBResponse *response, BOOL fromCached) {
        if ([response isSuccess]) {
            [UserManager setUser:response.user];
            JJDebug(@"<Register> uid = %@, uname = %@",[UserManager uid], [UserManager uname]);
            JJDebug(@"%@",[response message]);
        }else{
            JJDebug(@"%@",[response message]);
        }
    }];
}
- (IBAction)login:(id)sender {
    [UserService loginWithUserName:self.uname.text password:self.password.text handler:^(PBResponse *response, BOOL fromCached) {
        if ([response isSuccess]) {
            [UserManager setUser:response.user];
            JJDebug(@"<Login> uid = %@, uname = %@",[UserManager uid], [UserManager uname]);
            JJDebug(@"%@",[response message]);
        }else{
            JJDebug(@"<Login> failed, code = %d",response.code);
            JJDebug(@"%@",[response message]);            
        }
    }];
}
- (IBAction)logout:(id)sender {
    [UserService logoutWithHandler:^(PBResponse *response, BOOL fromCached) {
        JJDebug(@"%@",[response message]);
        if ([response isSuccess]) {
            [UserManager logout];
        }
    }];
}


- (IBAction)share:(id)sender {
    //定义菜单分享列表
    NSArray *shareList = [ShareSDK getShareListWithType:ShareTypeSinaWeibo, ShareTypeWeixiSession, ShareTypeWeixiTimeline, nil];

    NSString *imagePath =  [[NSBundle mainBundle] pathForResource:@"ShareSDK"
                                                           ofType:@"jpg"];
    //构造分享内容
    id<ISSContent> publishContent = [ShareSDK content:@"分享内容"
                                       defaultContent:@"默认分享内容，没内容时显示"
                                                image:[ShareSDK imageWithPath:imagePath]
                                                title:@"ShareSDK"
                                                  url:@"http://www.sharesdk.cn"
                                          description:@"这是一条测试信息"
                                            mediaType:SSPublishContentMediaTypeNews];
    
    [ShareSDK showShareActionSheet:nil
                         shareList:shareList
                           content:publishContent
                     statusBarTips:YES
                       authOptions:nil
                      shareOptions: nil
                            result:^(ShareType type, SSPublishContentState state, id<ISSStatusInfo> statusInfo, id<ICMErrorInfo> error, BOOL end) {
                                if (state == SSPublishContentStateSuccess)
                                {
                                    NSLog(@"分享成功");
                                }
                                else if (state == SSPublishContentStateFail)
                                {
                                    NSLog(@"分享失败,错误码:%d,错误描述:%@", [error errorCode],  [error errorDescription]);
                                }
                            }];
}
@end
