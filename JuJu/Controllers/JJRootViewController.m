//
//  JJRootViewController.m
//  GHSidebarNav
//
//  Created by Greg Haines on 11/20/11.
//

#import "JJRootViewController.h"


#pragma mark -
#pragma mark Private Interface
@interface JJRootViewController ()
- (void)revealSidebar;
@end


#pragma mark -
#pragma mark Implementation
@implementation JJRootViewController

#pragma mark Memory Management
- (id)initWithTitle:(NSString *)title withRevealBlock:(RevealBlock)revealBlock {
    if (self = [super initWithNibName:nil bundle:nil]) {
		self.title = title;
		_revealBlock = [revealBlock copy];
		self.navigationItem.leftBarButtonItem = 
			[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction 
														  target:self
														  action:@selector(revealSidebar)];
	}
	return self;
}

#pragma mark UIViewController
- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
	self.view.backgroundColor = [UIColor lightGrayColor];
}

#pragma mark Private Methods


- (void)revealSidebar {
	_revealBlock();
}

@end
