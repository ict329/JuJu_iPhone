//
//  JJRequestClient.m
//  JuJu
//
//  Created by ict on 13-7-7.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "JJRequestClient.h"
#import "AFHTTPRequestOperation.h"


static NSString * const kJJBaseURLString = @"http://192.168.1.101:5000/";

@implementation JJRequestClient



+ (JJRequestClient *)sharedClient {
    static JJRequestClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[JJRequestClient alloc] initWithBaseURL:[NSURL URLWithString:kJJBaseURLString]];
    });
    
    return _sharedClient;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
//	[self setDefaultHeader:@"Content-type" value:@"text/html"];
    
    // By default, the example ships with SSL pinning enabled for the app.net API pinned against the public key of adn.cer file included with the example. In order to make it easier for developers who are new to AFNetworking, SSL pinning is automatically disabled if the base URL has been changed. This will allow developers to hack around with the example, without getting tripped up by SSL pinning.
    if ([[url scheme] isEqualToString:@"https"] && [[url host] isEqualToString:@"alpha-api.app.net"]) {
        [self setDefaultSSLPinningMode:AFSSLPinningModePublicKey];
    }
    
    self.defaultSSLPinningMode = AFSSLPinningModeNone;
    
    return self;
}

@end
