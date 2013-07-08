//
//  JJService.h
//  JuJu
//
//  Created by gamy on 13-7-8.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PBResponse;

typedef void(^ResultHandler)(PBResponse *response, BOOL fromCached);

@interface JJService : NSObject

+ (void)getPath:(NSString *)path
     parameters:(NSDictionary *)parameters
     fromCached:(BOOL)fromCached
      cachedKey:(NSString *)cachedKey
  resultHandler:(ResultHandler)handler;

+ (void)postPath:(NSString *)path
     parameters:(NSDictionary *)parameters
     fromCached:(BOOL)fromCached
      cachedKey:(NSString *)cachedKey
  resultHandler:(ResultHandler)handler;



@end
