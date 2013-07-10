//
//  JJService.h
//  JuJu
//
//  Created by gamy on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.pb.h"

@class PBResponse;

typedef void(^ResultHandler)(PBResponse *response, BOOL fromCached);

typedef enum{
    
    LoadRemoteData = 0x1 << 0,
    LoadCachedData = 0x1 << 1,
    LoadCacheAndRemoteData = LoadRemoteData | LoadCachedData,
    
}LoadDataCategory;

@interface JJService : NSObject

+ (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
       category:(LoadDataCategory)category
      cachedKey:(NSString *)cachedKey
       isPublic:(BOOL)isPublic
  cachedHandler:(ResultHandler)cachedHandler
  remoteHandler:(ResultHandler)remoteHandler;

+ (void)postPath:(NSString *)path
     parameters:(NSDictionary *)parameters
       category:(LoadDataCategory)category
      cachedKey:(NSString *)cachedKey
       isPublic:(BOOL)isPublic
  cachedHandler:(ResultHandler)cachedHandler
  remoteHandler:(ResultHandler)remoteHandler;


@end
