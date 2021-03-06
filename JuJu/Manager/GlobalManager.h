
#import "JJManager.h"
#import "BuriBucket.h"
#import "THLevelDB.h"


@interface GlobalManager : JJManager

+ (Buri *)systemBuri;
+ (Buri *)userBuri;

+ (THLevelDB *)systemTHDB;
+ (THLevelDB *)userTHDB;

+ (CLLocationCoordinate2D)location;
+ (void)setLocation:(CLLocationCoordinate2D)location;

@end
