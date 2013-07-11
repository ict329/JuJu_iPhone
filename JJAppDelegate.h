//
//  JJAppDelegate.h
//  GHSidebarNav
//
//  Created by Greg Haines on 11/20/11.
//

#import <Foundation/Foundation.h>

@class GHRevealViewController;
@class GHSidebarSearchViewController;
@class JJMenuViewController;

@interface JJAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) GHRevealViewController *revealController;
@property (nonatomic, strong) GHSidebarSearchViewController *searchController;
@property (nonatomic, strong) JJMenuViewController *menuController;

@end
