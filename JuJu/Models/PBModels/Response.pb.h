// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

#import "Basic.pb.h"
#import "User.pb.h"
#import "Action.pb.h"
#import "Message.pb.h"

@class PBAction;
@class PBAction_Builder;
@class PBActivity;
@class PBActivity_Builder;
@class PBAlbum;
@class PBAlbum_Builder;
@class PBBriefUser;
@class PBBriefUser_Builder;
@class PBComment;
@class PBComment_Builder;
@class PBContact;
@class PBContact_Builder;
@class PBDevice;
@class PBDevice_Builder;
@class PBLocation;
@class PBLocation_Builder;
@class PBLog;
@class PBLog_Builder;
@class PBMerchant;
@class PBMerchant_Builder;
@class PBMessage;
@class PBMessage_Builder;
@class PBPromotion;
@class PBPromotion_Builder;
@class PBRegistration;
@class PBRegistration_Builder;
@class PBResponse;
@class PBResponse_Builder;
@class PBSNS;
@class PBSNS_Builder;
@class PBStatistic;
@class PBStatistic_Builder;
@class PBUser;
@class PBUserBasic;
@class PBUserBasic_Builder;
@class PBUser_Builder;
typedef enum {
  PBResultCodeUnknowError = -1,
  PBResultCodeSuccess = 0,
  PBResultCodeSystemError = 1,
  PBResultCodeParsePbError = 2,
  PBResultCodeParameterError = 3,
  PBResultCodeAuthError = 4,
  PBResultCodeNetworkError = 5,
  PBResultCodeTimeoutError = 6,
  PBResultCodeUnloginError = 7,
  PBResultCodeUserNotExistsError = 10001,
  PBResultCodePasswordIncorrectError = 10002,
  PBResultCodeUserStatusExceptionError = 10003,
  PBResultCodeUnameExistsError = 10004,
  PBResultCodeActionNotExistsError = 20001,
  PBResultCodeActionStatusExceptionError = 20002,
} PBResultCode;

BOOL PBResultCodeIsValidValue(PBResultCode value);


@interface ResponseRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface PBResponse : PBGeneratedMessage {
@private
  BOOL hasHasMore_:1;
  BOOL hasErrorMessage_:1;
  BOOL hasUser_:1;
  BOOL hasAction_:1;
  BOOL hasMerchant_:1;
  BOOL hasCode_:1;
  BOOL hasMore_:1;
  NSString* errorMessage;
  PBUser* user;
  PBAction* action;
  PBMerchant* merchant;
  PBResultCode code;
  NSMutableArray* mutableActionsList;
  NSMutableArray* mutableMessagesList;
  NSMutableArray* mutableUsersList;
  NSMutableArray* mutableActivitysList;
  NSMutableArray* mutableCommentsList;
  NSMutableArray* mutableBriefUsersList;
}
- (BOOL) hasCode;
- (BOOL) hasErrorMessage;
- (BOOL) hasHasMore;
- (BOOL) hasUser;
- (BOOL) hasAction;
- (BOOL) hasMerchant;
@property (readonly) PBResultCode code;
@property (readonly, retain) NSString* errorMessage;
- (BOOL) hasMore;
@property (readonly, retain) PBUser* user;
@property (readonly, retain) PBAction* action;
@property (readonly, retain) PBMerchant* merchant;
- (NSArray*) actionsList;
- (PBAction*) actionsAtIndex:(int32_t) index;
- (NSArray*) messagesList;
- (PBMessage*) messagesAtIndex:(int32_t) index;
- (NSArray*) usersList;
- (PBUser*) usersAtIndex:(int32_t) index;
- (NSArray*) activitysList;
- (PBActivity*) activitysAtIndex:(int32_t) index;
- (NSArray*) commentsList;
- (PBComment*) commentsAtIndex:(int32_t) index;
- (NSArray*) briefUsersList;
- (PBBriefUser*) briefUsersAtIndex:(int32_t) index;

+ (PBResponse*) defaultInstance;
- (PBResponse*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBResponse_Builder*) builder;
+ (PBResponse_Builder*) builder;
+ (PBResponse_Builder*) builderWithPrototype:(PBResponse*) prototype;

+ (PBResponse*) parseFromData:(NSData*) data;
+ (PBResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBResponse*) parseFromInputStream:(NSInputStream*) input;
+ (PBResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBResponse_Builder : PBGeneratedMessage_Builder {
@private
  PBResponse* result;
}

- (PBResponse*) defaultInstance;

- (PBResponse_Builder*) clear;
- (PBResponse_Builder*) clone;

- (PBResponse*) build;
- (PBResponse*) buildPartial;

- (PBResponse_Builder*) mergeFrom:(PBResponse*) other;
- (PBResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasCode;
- (PBResultCode) code;
- (PBResponse_Builder*) setCode:(PBResultCode) value;
- (PBResponse_Builder*) clearCode;

- (BOOL) hasErrorMessage;
- (NSString*) errorMessage;
- (PBResponse_Builder*) setErrorMessage:(NSString*) value;
- (PBResponse_Builder*) clearErrorMessage;

- (BOOL) hasHasMore;
- (BOOL) hasMore;
- (PBResponse_Builder*) setHasMore:(BOOL) value;
- (PBResponse_Builder*) clearHasMore;

- (NSArray*) actionsList;
- (PBAction*) actionsAtIndex:(int32_t) index;
- (PBResponse_Builder*) replaceActionsAtIndex:(int32_t) index with:(PBAction*) value;
- (PBResponse_Builder*) addActions:(PBAction*) value;
- (PBResponse_Builder*) addAllActions:(NSArray*) values;
- (PBResponse_Builder*) clearActionsList;

- (NSArray*) messagesList;
- (PBMessage*) messagesAtIndex:(int32_t) index;
- (PBResponse_Builder*) replaceMessagesAtIndex:(int32_t) index with:(PBMessage*) value;
- (PBResponse_Builder*) addMessages:(PBMessage*) value;
- (PBResponse_Builder*) addAllMessages:(NSArray*) values;
- (PBResponse_Builder*) clearMessagesList;

- (NSArray*) usersList;
- (PBUser*) usersAtIndex:(int32_t) index;
- (PBResponse_Builder*) replaceUsersAtIndex:(int32_t) index with:(PBUser*) value;
- (PBResponse_Builder*) addUsers:(PBUser*) value;
- (PBResponse_Builder*) addAllUsers:(NSArray*) values;
- (PBResponse_Builder*) clearUsersList;

- (NSArray*) activitysList;
- (PBActivity*) activitysAtIndex:(int32_t) index;
- (PBResponse_Builder*) replaceActivitysAtIndex:(int32_t) index with:(PBActivity*) value;
- (PBResponse_Builder*) addActivitys:(PBActivity*) value;
- (PBResponse_Builder*) addAllActivitys:(NSArray*) values;
- (PBResponse_Builder*) clearActivitysList;

- (NSArray*) commentsList;
- (PBComment*) commentsAtIndex:(int32_t) index;
- (PBResponse_Builder*) replaceCommentsAtIndex:(int32_t) index with:(PBComment*) value;
- (PBResponse_Builder*) addComments:(PBComment*) value;
- (PBResponse_Builder*) addAllComments:(NSArray*) values;
- (PBResponse_Builder*) clearCommentsList;

- (NSArray*) briefUsersList;
- (PBBriefUser*) briefUsersAtIndex:(int32_t) index;
- (PBResponse_Builder*) replaceBriefUsersAtIndex:(int32_t) index with:(PBBriefUser*) value;
- (PBResponse_Builder*) addBriefUsers:(PBBriefUser*) value;
- (PBResponse_Builder*) addAllBriefUsers:(NSArray*) values;
- (PBResponse_Builder*) clearBriefUsersList;

- (BOOL) hasUser;
- (PBUser*) user;
- (PBResponse_Builder*) setUser:(PBUser*) value;
- (PBResponse_Builder*) setUserBuilder:(PBUser_Builder*) builderForValue;
- (PBResponse_Builder*) mergeUser:(PBUser*) value;
- (PBResponse_Builder*) clearUser;

- (BOOL) hasAction;
- (PBAction*) action;
- (PBResponse_Builder*) setAction:(PBAction*) value;
- (PBResponse_Builder*) setActionBuilder:(PBAction_Builder*) builderForValue;
- (PBResponse_Builder*) mergeAction:(PBAction*) value;
- (PBResponse_Builder*) clearAction;

- (BOOL) hasMerchant;
- (PBMerchant*) merchant;
- (PBResponse_Builder*) setMerchant:(PBMerchant*) value;
- (PBResponse_Builder*) setMerchantBuilder:(PBMerchant_Builder*) builderForValue;
- (PBResponse_Builder*) mergeMerchant:(PBMerchant*) value;
- (PBResponse_Builder*) clearMerchant;
@end

