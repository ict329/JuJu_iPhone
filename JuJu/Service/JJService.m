//
//  JJService.m
//  JuJu
//
//  Created by ict on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "JJService.h"
#import "JJRequestClient.h"
#import "Response.pb.h"


//used to cached the request
static NSMutableArray *requestList = nil;

@implementation JJService


#pragma mark-- load && cache data

+ (NSData *)loadDataForKey:(NSString *)key isPublic:(BOOL)isPublic
{
    if ([key length] == 0) {
        return nil;
    }
    THLevelDB *db = isPublic ? [GlobalManager systemTHDB] : [GlobalManager userTHDB];
    return [db dataForKey:key];
}

+ (void)cacheData:(NSData *)data forKey:(NSString *)key isPublic:(BOOL)isPublic
{
    if ([key length] == 0) {
        return;
    }
    THLevelDB *db = isPublic ? [GlobalManager systemTHDB] : [GlobalManager userTHDB];
    [db setData:data forKey:key];
}



#pragma mark- construct the response

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
       category:(LoadDataCategory)category
      cachedKey:(NSString *)cachedKey
       isPublic:(BOOL)isPublic
  cachedHandler:(ResultHandler)cachedHandler
  remoteHandler:(ResultHandler)remoteHandler
{
    
    JJDebug(@"<getPath> path = %@, parameters = %@", path, parameters);
    __block PBResponse *response = nil;
    if ((category | LoadCachedData) != 0) {
        NSData *data = [JJService loadDataForKey:cachedKey isPublic:isPublic];
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
        if (cachedHandler != NULL) {
            cachedHandler(response, YES);
        }
    }
    if ((category | LoadRemoteData) != 0) {
        [[JJRequestClient sharedClient] getPath:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
 
            JJDebug(@"<getPath> path = %@, response length = %d", path, [responseObject length]);
            if (responseObject) {
                @try {
                    response = [PBResponse parseFromData:responseObject];
                    [JJService cacheData:responseObject forKey:cachedKey isPublic:isPublic];
                }
                @catch (NSException *exception) {
                    response = [JJService emptyResponseWithCode:PBResultCodeParsePbError];
                }
            }else{
                response = [JJService emptyResponse];
            }
            if (remoteHandler != NULL) {
                remoteHandler(response, NO);
            }
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            response = [JJService emptyResponseWithCode:error.code];
            if (remoteHandler != NULL) {
                remoteHandler(response, NO);
            }
        }];
    }
}

+ (void)postPath:(NSString *)path
      parameters:(NSDictionary *)parameters
        category:(LoadDataCategory)category
       cachedKey:(NSString *)cachedKey
        isPublic:(BOOL)isPublic
   cachedHandler:(ResultHandler)cachedHandler
   remoteHandler:(ResultHandler)remoteHandler
{
 
    JJDebug(@"<postPath> path = %@, parameters = %@", path, parameters);
    __block PBResponse *response = nil;
    if ((category | LoadCachedData) != 0) {
        NSData *data = [JJService loadDataForKey:cachedKey isPublic:isPublic];
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
        if (cachedHandler != NULL) {
            cachedHandler(response, YES);
        }
    }
    
    if ((category | LoadRemoteData) != 0) {
        
        [[JJRequestClient sharedClient] postPath:path parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
 
            JJDebug(@"<postPath> path = %@, response length = %d", path, [responseObject length]);
            if (responseObject) {
                @try {
                    response = [PBResponse parseFromData:responseObject];
                    [JJService cacheData:responseObject forKey:cachedKey isPublic:isPublic];
                    
                }
                @catch (NSException *exception) {
                    response = [JJService emptyResponseWithCode:PBResultCodeParsePbError];
                }
            }else{
                response = [JJService emptyResponse];
            }
            if (remoteHandler != NULL) {
                remoteHandler(response, NO);
            }
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            response = [JJService emptyResponseWithCode:error.code];
            if (remoteHandler != NULL) {
                remoteHandler(response, NO);
            }
        }];
    }

}

+ (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
  remoteHandler:(ResultHandler)remoteHandler
{
    [self getPath:path parameters:parameters
         category:LoadRemoteData
        cachedKey:nil
         isPublic:NO
    cachedHandler:NULL
    remoteHandler:remoteHandler];
}


+ (void)postPath:(NSString *)path
      parameters:(NSDictionary *)parameters
   remoteHandler:(ResultHandler)remoteHandler
{
    [self postPath:path parameters:parameters
         category:LoadRemoteData
        cachedKey:nil
         isPublic:NO
    cachedHandler:NULL
    remoteHandler:remoteHandler];
}



+ (BOOL)checkLoginWithHandler:(ResultHandler)handler
{
    if ([UserManager unLogin]) {
        if (handler != NULL) {
            handler([PBResponse unloginResponse], NO);
        }
        return NO;
    }
    return YES;
}

@end
