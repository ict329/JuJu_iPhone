//
//  PBResponse_Ext.h
//  JuJu
//
//  Created by gamy on 13-7-24.
//  Copyright (c) 2013年 ict. All rights reserved.
//

#import "PBResponse_Ext.h"

@implementation PBResponse (Ext)


+ (PBResponse *)responseWithCode:(PBResultCode)code message:(NSString *)message
{
    PBResponse_Builder *builder = [[PBResponse_Builder alloc] init];
    [builder setCode:code];
    [builder setErrorMessage:message];
    return [builder build];
}

+ (PBResponse *)unloginResponse
{
    return [self responseWithCode:PBResultCodeUnloginError message:@"You need to login."];
}
+ (PBResponse *)networkErrorResponse
{
    return [self responseWithCode:PBResultCodeNetworkError message:@"Network Error."];
}
+ (PBResponse *)timeoutResponse
{
    return [self responseWithCode:PBResultCodeTimeoutError message:@"Time Out."];    
}


@end
