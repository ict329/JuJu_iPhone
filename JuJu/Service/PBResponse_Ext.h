//
//  PBResponse_Ext.h
//  JuJu
//
//  Created by gamy on 13-7-24.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "Response.pb.h"

@interface PBResponse (Ext)

+ (PBResponse *)unloginResponse;
+ (PBResponse *)networkErrorResponse;
+ (PBResponse *)timeoutResponse;

@end
