//
//  JJService.m
//  JuJu
//
//  Created by gamy on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "JJService.h"
#import "JJRequestClient.h"
#import "Response.pb.h"


//used to cached the request
static NSMutableArray *requestList = nil;

@implementation JJService

//+ (void)addRequest

+ (NSData *)loadDataForKey:(NSString *)key
{
    return nil;
}
+ (void)cacheData:(NSData *)data forKey:(NSString *)key
{
    
}

+ (PBResponse *)emptyResponseWithCode:(PBResultCode)code
{
    PBResponse_Builder *buider = [[PBResponse_Builder alloc] init];
    [buider setCode:code];
    return [buider build];

}
+ (PBResponse *)emptyResponse
{
    static dispatch_once_t onceToken;
    static PBResponse *response = nil;
    dispatch_once(&onceToken, ^{
        response = [JJService emptyResponseWithCode:PBResultCodeSuccess];
    });
    return response;
}

+ (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
     fromCached:(BOOL)fromCached
      cachedKey:(NSString *)cachedKey
  resultHandler:(ResultHandler)handler
{
    __block PBResponse *response = nil;
    if (fromCached) {
        NSData *data = [JJService loadDataForKey:cachedKey];
        if (data) {
            @try {
                response = [PBResponse parseFromData:data];
            }
            @catch (NSException *exception) {
                response = [JJService emptyResponseWithCode:PBResultCodeParsePbError];
            }
        }else{
            response = [JJService emptyResponse];
        }
        handler(response, fromCached);
    }else{
        [[JJRequestClient sharedClient] getPath:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
            if (responseObject) {
                @try {
                    response = [PBResponse parseFromData:responseObject];
                    [JJService cacheData:responseObject forKey:cachedKey];
                }
                @catch (NSException *exception) {
                    response = [JJService emptyResponseWithCode:PBResultCodeParsePbError];
                }
            }else{
                response = [JJService emptyResponse];
            }
            handler(response, fromCached);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            response = [JJService emptyResponseWithCode:error.code];
            handler(response, fromCached);
        }];
    }
    
}

+ (void)postPath:(NSString *)path
      parameters:(NSDictionary *)parameters
      fromCached:(BOOL)fromCached
       cachedKey:(NSString *)cachedKey
   resultHandler:(ResultHandler)handler
{
    __block PBResponse *response = nil;
    if (fromCached) {
        NSData *data = [JJService loadDataForKey:cachedKey];
        if (data) {
            @try {
                response = [PBResponse parseFromData:data];
            }
            @catch (NSException *exception) {
                response = [JJService emptyResponseWithCode:PBResultCodeParsePbError];
            }
        }else{
            response = [JJService emptyResponse];
        }
        handler(response, fromCached);
    }else{
        [[JJRequestClient sharedClient] postPath:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
            if (responseObject) {
                @try {
                    response = [PBResponse parseFromData:responseObject];
                    [JJService cacheData:responseObject forKey:cachedKey];
                }
                @catch (NSException *exception) {
                    response = [JJService emptyResponseWithCode:PBResultCodeParsePbError];
                }
            }else{
                response = [JJService emptyResponse];
            }
            handler(response, fromCached);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            response = [JJService emptyResponseWithCode:error.code];
            handler(response, fromCached);
        }];
    }
}

@end
