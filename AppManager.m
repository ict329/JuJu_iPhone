//
//  AppManager.m
//  JuJu
//
//  Created by gamy on 13-7-8.
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
                      @"FAVORITES"
                      ];
	NSArray *controllers = @[
                          @[
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"Profile" withRevealBlock:revealBlock]]
                              ],
                          @[
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"News Feed" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"Messages" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"Nearby" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"Events" withRevealBlock:revealBlock]],
                              [[UINavigationController alloc] initWithRootViewController:[[JJRootViewController alloc] initWithTitle:@"Friends" withRevealBlock:revealBlock]]
                              ]
                          ];
	NSArray *cellInfos = @[
                        @[
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"Profile", @"")}
                            ],
                        @[
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"News Feed", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"Messages", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"Nearby", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"Events", @"")},
                            @{kSidebarCellImageKey: [UIImage imageNamed:@"user.png"], kSidebarCellTextKey: NSLocalizedString(@"Friends", @"")},
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
	
	delegate.searchController = [[GHSidebarSearchViewController alloc] initWithSidebarViewController:delegate.revealController];
	delegate.searchController.view.backgroundColor = [UIColor clearColor];
    delegate.searchController.searchDelegate = self;
	delegate.searchController.searchBar.autocapitalizationType = UITextAutocapitalizationTypeNone;
	delegate.searchController.searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
	delegate.searchController.searchBar.backgroundImage = [UIImage imageNamed:@"searchBarBG.png"];
	delegate.searchController.searchBar.placeholder = NSLocalizedString(@"Search", @"");
	delegate.searchController.searchBar.tintColor = [UIColor colorWithRed:(58.0f/255.0f) green:(67.0f/255.0f) blue:(104.0f/255.0f) alpha:1.0f];
	for (UIView *subview in delegate.searchController.searchBar.subviews) {
		if ([subview isKindOfClass:[UITextField class]]) {
			UITextField *searchTextField = (UITextField *) subview;
			searchTextField.textColor = [UIColor colorWithRed:(154.0f/255.0f) green:(162.0f/255.0f) blue:(176.0f/255.0f) alpha:1.0f];
		}
	}
	[delegate.searchController.searchBar setSearchFieldBackgroundImage:[[UIImage imageNamed:@"searchTextBG.png"]
                                                                    resizableImageWithCapInsets:UIEdgeInsetsMake(16.0f, 17.0f, 16.0f, 17.0f)]
														  forState:UIControlStateNormal];
	[delegate.searchController.searchBar setImage:[UIImage imageNamed:@"searchBarIcon.png"] 
							 forSearchBarIcon:UISearchBarIconSearch 
										state:UIControlStateNormal];
	
	delegate.menuController = [[JJMenuViewController alloc] initWithSidebarViewController:delegate.revealController 
																		withSearchBar:delegate.searchController.searchBar 
																		  withHeaders:headers 
																	  withControllers:controllers 
																		withCellInfos:cellInfos];
	
    delegate.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    delegate.window.rootViewController = delegate.revealController;
    [delegate.window makeKeyAndVisible];
}
- (void)prepareDataWithAppDelegate:(JJAppDelegate *)delegate
{
    [MobClick startWithAppkey:@"51d99add56240b73a1057fcb" reportPolicy:SEND_INTERVAL channelId:@""];
}

- (void)saveDataBeforeExitWithAppDelegate:(JJAppDelegate *)delegate
{
    
}

#pragma mark GHSidebarSearchViewControllerDelegate
- (void)searchResultsForText:(NSString *)text withScope:(NSString *)scope callback:(SearchResultsBlock)callback {
	callback(@[@"Foo", @"Bar", @"Baz"]);
}

- (void)searchResult:(id)result selectedAtIndexPath:(NSIndexPath *)indexPath {
	NSLog(@"Selected Search Result - result: %@ indexPath: %@", result, indexPath);
}

- (UITableViewCell *)searchResultCellForEntry:(id)entry atIndexPath:(NSIndexPath *)indexPath inTableView:(UITableView *)tableView {
	static NSString* identifier = @"GHSearchMenuCell";
	JJMenuCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	if (!cell) {
		cell = [[JJMenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	}
	cell.textLabel.text = (NSString *)entry;
	cell.imageView.image = [UIImage imageNamed:@"user"];
	return cell;
}


@end
