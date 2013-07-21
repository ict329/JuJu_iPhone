//
//  JJAppDelegate.m
//  GHSidebarNav
//
//  Created by Greg Haines on 11/20/11.
//

#import "JJAppDelegate.h"

#import "AppManager.h"

#import "JJRequestClient.h"

#pragma mark -
#pragma mark Private Interface
@interface JJAppDelegate () 

@end


#pragma mark -
#pragma mark Implementation
@implementation JJAppDelegate

#pragma mark Properties
@synthesize window;
@synthesize revealController, searchController, menuController;

- (void)test:(NSTimer *)timer
{
    [[JJRequestClient sharedClient] getPath:@"api/users/get" parameters:NULL success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSString *str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        JJDebug(@"get: response = %@",str);
    } failure:NULL];

}

#pragma mark UIApplicationDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    [[JJRequestClient sharedClient] setbas]
    [[JJRequestClient sharedClient] getPath:@"api/users/set" parameters:@{@"uid":@"from_client111adsfja"} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSString *str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        JJDebug(@"set: response = %@",str);
        
        [NSTimer scheduledTimerWithTimeInterval:20 target:self selector:@selector(test:) userInfo:nil repeats:YES];
        
    } failure:NULL];
    

    
    
    [[AppManager sharedManager] prepareDataWithAppDelegate:self];
    [[AppManager sharedManager] prepareControllersWithAppDelegate:self];

    return YES;
}



- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [[AppManager sharedManager] saveDataBeforeExitWithAppDelegate:self];
}

// one of these will be called after calling -registerForRemoteNotifications
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error
{
    
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}
- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}




@end
