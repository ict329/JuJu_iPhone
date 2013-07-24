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
@end
