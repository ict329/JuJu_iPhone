//
//  JJPushedViewController.m
//  GHSidebarNav
//
//  Created by Greg Haines on 11/29/11.
//

#import "JJPushedViewController.h"
#import "JJRequestClient.h"


#import "Basic.pb.h"

#pragma mark -
#pragma mark Implementation
@implementation JJPushedViewController

#pragma mark Memory Management
- (id)initWithTitle:(NSString *)title {
	if (self = [super initWithNibName:nil bundle:nil]) {
		self.title = title;
	}
	return self;
}

- (void)testPB
{
    PBLocation_Builder *builder = [[PBLocation_Builder alloc] init];
    
    [builder setCountryCode:123];
    [builder setProvince:@"GD"];
    [builder setCity:@"广州"];
    [builder setLongitude:124.4];
    [builder setLatitude:12.34];
    
    PBLocation * location = [builder build];

    NSLog(@"location = {contry = %d, province = %@, city = %@, longt = %f, lat = %f", location.countryCode, location.province, location.city, location.longitude, location.latitude);
}

- (void)testRequest
{
    JJRequestClient *client = [JJRequestClient sharedClient];
    
    
    
    [client getPath:@"location" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"class = %@ response = %@", [responseObject class], responseObject);
        PBLocation *location = [PBLocation parseFromData:responseObject];
        NSLog(@"location = {contry = %d, province = %@, city = %@, longt = %f, lat = %f", location.countryCode, location.province, location.city, location.longitude, location.latitude);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"error = %@", error);        
    }];
}

#pragma mark UIViewController
- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
	UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
	view.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
	view.backgroundColor = [UIColor redColor];
	[self.view addSubview:view];
    
    [self testRequest];
//    [self testPB];
}

@end
