//
//  RelationService.m
//  JuJu
//
//  Created by gamy on 13-7-24.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "RelationService.h"


static NSString *kFollowList = @"kFollowList";
static NSString *kFanList = @"kFanList";
static NSString *kBlackList = @"kBlackList";

@implementation RelationService

+ (void)followUser:(NSString *)fid handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        [self getPath:FOLLOW parameters:@{FID: fid} remoteHandler:handler];
    }
}
+ (void)unfollowUser:(NSString *)fid handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        [self getPath:UNFOLLOW parameters:@{FID: fid} remoteHandler:handler];
    }    
}

+ (void)blackUser:(NSString *)fid handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        [self getPath:BLACK_USER parameters:@{FID: fid} remoteHandler:handler];
    }
}
+ (void)unblackUser:(NSString *)fid handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        [self getPath:UNBLACK_USER parameters:@{FID: fid} remoteHandler:handler];
    }
}

+ (void)markFriend:(NSString *)fid mark:(NSString *)mark handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        [self getPath:MARK_FRIEND parameters:@{FID: fid, MARK: mark} remoteHandler:handler];
    }
}

+ (void)getFollowsWithOffset:(NSUInteger)offset
                       count:(NSUInteger)count
                     handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        NSString *key = (offset == 0) ? kFollowList : nil;
        LoadDataCategory cate = (offset == 0) ? LoadCacheAndRemoteData : LoadRemoteData;
        
        [self getPath:GET_FOLLOWS
           parameters:@{OFFSET: @(offset), COUNT: @(count)}
             category:cate
            cachedKey:key
             isPublic:NO
        cachedHandler:handler
        remoteHandler:handler];
    }
}

+ (void)getFansWithOffset:(NSUInteger)offset
                    count:(NSUInteger)count
                  handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        NSString *key = (offset == 0) ? kFanList : nil;
        LoadDataCategory cate = (offset == 0) ? LoadCacheAndRemoteData : LoadRemoteData;
        
        [self getPath:GET_FANS
           parameters:@{OFFSET: @(offset), COUNT: @(count)}
             category:cate
            cachedKey:key
             isPublic:NO
        cachedHandler:handler
        remoteHandler:handler];
    }
}


+ (void)getBlacksWithOffset:(NSUInteger)offset
                      count:(NSUInteger)count
                    handler:(ResultHandler)handler
{
    if ([self checkLoginWithHandler:handler]) {
        NSString *key = (offset == 0) ? kBlackList : nil;
        LoadDataCategory cate = (offset == 0) ? LoadCacheAndRemoteData : LoadRemoteData;
        
        [self getPath:GET_BLACKS
           parameters:@{OFFSET: @(offset), COUNT: @(count)}
             category:cate
            cachedKey:key
             isPublic:NO
        cachedHandler:handler
        remoteHandler:handler];
    }
}
@end
