//
//  ProfileController.h
//  JuJu
//
//  Created by ict on 13-7-25.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "JJRootViewController.h"

@interface ProfileController : JJRootViewController
@property (weak, nonatomic) IBOutlet UITextField *uname;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;
- (IBAction)reg:(id)sender;
- (IBAction)logout:(id)sender;
@end
