//
//  AppManager.h
//  JuJu
//
//  Created by ict on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GHSidebarSearchViewControllerDelegate.h"

@class JJAppDelegate;

@interface AppManager : NSObject//<GHSidebarSearchViewControllerDelegate>

+ (id)sharedManager;

- (void)launchWithNewVersion:(NSString *)version appDelegate:(JJAppDelegate *)delegate;
- (void)prepareControllersWithAppDelegate:(JJAppDelegate *)delegate;
- (void)prepareDataWithAppDelegate:(JJAppDelegate *)delegate;
- (void)saveDataBeforeExitWithAppDelegate:(JJAppDelegate *)delegate;

@end
