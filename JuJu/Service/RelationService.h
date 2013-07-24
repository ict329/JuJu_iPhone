//
//  RelationService.h
//  JuJu
//
//  Created by gamy on 13-7-24.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "JJService.h"

/*
 


 #define GET_FANS  @"api/relations/get_fans"
 #define GET_FOLLOWS  @"api/relations/get_follows"
 #define GET_BLACKS  @"api/relations/get_blacks"

 */

@interface RelationService : JJService

+ (void)followUser:(NSString *)fid handler:(ResultHandler)handler;
+ (void)unfollowUser:(NSString *)fid handler:(ResultHandler)handler;

+ (void)blackUser:(NSString *)fid handler:(ResultHandler)handler;
+ (void)unblackUser:(NSString *)fid handler:(ResultHandler)handler;

+ (void)markFriend:(NSString *)fid mark:(NSString *)mark handler:(ResultHandler)handler;

+ (void)getFollowsWithOffset:(NSUInteger)offset
                       count:(NSUInteger)count
                     handler:(ResultHandler)handler;

+ (void)getFansWithOffset:(NSUInteger)offset
                       count:(NSUInteger)count
                     handler:(ResultHandler)handler;


+ (void)getBlacksWithOffset:(NSUInteger)offset
                       count:(NSUInteger)count
                     handler:(ResultHandler)handler;

@end
