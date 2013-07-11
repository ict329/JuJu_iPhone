//
//  JJRequestClient.h
//  JuJu
//
//  Created by ict on 13-7-7.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFHTTPClient.h"

@interface JJRequestClient : AFHTTPClient

+ (JJRequestClient *)sharedClient;

@end
