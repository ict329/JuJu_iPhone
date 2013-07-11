//
//  AppManager.m
//  JuJu
//
//  Created by ict on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "AppManager.h"
#import "JJAppDelegate.h"
#import "JJMenuCell.h"
#import "JJMenuViewController.h"
#import "JJRootViewController.h"
#import "GHRevealViewController.h"
#import "GHSidebarSearchViewController.h"
#import "GHSidebarSearchViewControllerDelegate.h"
#import "BuriBucket.h"
#import "THLevelDB.h"
#import "UserService.h"

@implementation AppManager

+ (id)sharedManager
{
    static AppManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[AppManager alloc] init];
    });
    return _sharedManager;
}


- (void)launchWithNewVersion:(NSString *)version appDelegate:(JJAppDelegate *)delegate
{
    
}
- (void)prepareControllersWithAppDelegate:(JJAppDelegate *)delegate
{    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:NO];
	
	UIColor *bgColor = [UIColor colorWithRed:(50.0f/255.0f) green:(57.0f/255.0f) blue:(74.0f/255.0f) alpha:1.0f];
	delegate.revealController = [[GHRevealViewController alloc] initWithNibName:nil bundle:nil];
	delegate.revealController.view.backgroundColor = bgColor;
	
	RevealBlock revealBlock = ^(){
		[delegate.revealController toggleSidebar:!delegate.revealController.sidebarShowing
									duration:kGHRevealSidebarDefaultAnimationDuration];
	};
	
	NSArray *headers = @[
                      [NSNull null],
                      @"选项"
                      ];
	NSArray *controllers = @[
                          @[
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"个人主页" withRevealBlock:revealBlock]]
                              ],
                          @[
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"动态" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"消息" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"好友" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"广场" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"更多" withRevealBlock:revealBlock]]
                              ]
                          ];
	NSArray *cellInfos = @[
                        @[
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"个人主页", @"")}
                            ],
                        @[
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"动态", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"消息", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"好友", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"广场", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"更多", @"")},
                            ]
                        ];
	
	// Add drag feature to each root navigation controller
	[controllers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
		[((NSArray *)obj) enumerateObjectsUsingBlock:^(id obj2, NSUInteger idx2, BOOL *stop2){
			UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:delegate.revealController
																						 action:@selector(dragContentView:)];
			panGesture.cancelsTouchesInView = YES;
			[((UINavigationController *)obj2).navigationBar addGestureRecognizer:panGesture];
		}];
	}];

	delegate.menuController = [[JJMenuViewController alloc] initWithSidebarViewController:delegate.revealController 
																		withSearchBar:nil
																		  withHeaders:headers 
																	  withControllers:controllers 
																		withCellInfos:cellInfos];
	
    delegate.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    delegate.window.rootViewController = delegate.revealController;
    [delegate.window makeKeyAndVisible];
}

- (void)handlerTimer
{
    [UserService test];
    [self performSelector:@selector(handlerTimer) withObject:nil afterDelay:10];    
}

- (void)prepareDataWithAppDelegate:(JJAppDelegate *)delegate
{
    [MobClick startWithAppkey:@"51d99add56240b73a1057fcb" reportPolicy:SEND_INTERVAL channelId:@""];
    [UserService test];
    [self performSelector:@selector(handlerTimer) withObject:nil afterDelay:10];
}

- (void)saveDataBeforeExitWithAppDelegate:(JJAppDelegate *)delegate
{

}
@end
