// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Response.pb.h"

@implementation ResponseRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [ResponseRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [BasicRoot registerAllExtensions:registry];
    [UserRoot registerAllExtensions:registry];
    [ActionRoot registerAllExtensions:registry];
    [MessageRoot registerAllExtensions:registry];
    extensionRegistry = [registry retain];
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

BOOL PBResultCodeIsValidValue(PBResultCode value) {
  switch (value) {
    case PBResultCodeUnknowError:
    case PBResultCodeSuccess:
    case PBResultCodeSystemError:
    case PBResultCodeParsePbError:
    case PBResultCodeParameterError:
    case PBResultCodeAuthError:
    case PBResultCodeNetworkError:
    case PBResultCodeTimeoutError:
    case PBResultCodeUnloginError:
    case PBResultCodeUserNotExistsError:
    case PBResultCodePasswordIncorrectError:
    case PBResultCodeUserStatusExceptionError:
    case PBResultCodeUnameExistsError:
    case PBResultCodeActionNotExistsError:
    case PBResultCodeActionStatusExceptionError:
      return YES;
    default:
      return NO;
  }
}
@interface PBResponse ()
@property PBResultCode code;
@property (retain) NSString* errorMessage;
@property BOOL hasMore;
@property (retain) NSMutableArray* mutableActionsList;
@property (retain) NSMutableArray* mutableMessagesList;
@property (retain) NSMutableArray* mutableUsersList;
@property (retain) NSMutableArray* mutableActivitysList;
@property (retain) NSMutableArray* mutableCommentsList;
@property (retain) NSMutableArray* mutableBriefUsersList;
@property (retain) PBUser* user;
@property (retain) PBAction* action;
@property (retain) PBMerchant* merchant;
@end

@implementation PBResponse

- (BOOL) hasCode {
  return !!hasCode_;
}
- (void) setHasCode:(BOOL) value {
  hasCode_ = !!value;
}
@synthesize code;
- (BOOL) hasErrorMessage {
  return !!hasErrorMessage_;
}
- (void) setHasErrorMessage:(BOOL) value {
  hasErrorMessage_ = !!value;
}
@synthesize errorMessage;
- (BOOL) hasHasMore {
  return !!hasHasMore_;
}
- (void) setHasHasMore:(BOOL) value {
  hasHasMore_ = !!value;
}
- (BOOL) hasMore {
  return !!hasMore_;
}
- (void) setHasMore:(BOOL) value {
  hasMore_ = !!value;
}
@synthesize mutableActionsList;
@synthesize mutableMessagesList;
@synthesize mutableUsersList;
@synthesize mutableActivitysList;
@synthesize mutableCommentsList;
@synthesize mutableBriefUsersList;
- (BOOL) hasUser {
  return !!hasUser_;
}
- (void) setHasUser:(BOOL) value {
  hasUser_ = !!value;
}
@synthesize user;
- (BOOL) hasAction {
  return !!hasAction_;
}
- (void) setHasAction:(BOOL) value {
  hasAction_ = !!value;
}
@synthesize action;
- (BOOL) hasMerchant {
  return !!hasMerchant_;
}
- (void) setHasMerchant:(BOOL) value {
  hasMerchant_ = !!value;
}
@synthesize merchant;
- (void) dealloc {
  self.errorMessage = nil;
  self.mutableActionsList = nil;
  self.mutableMessagesList = nil;
  self.mutableUsersList = nil;
  self.mutableActivitysList = nil;
  self.mutableCommentsList = nil;
  self.mutableBriefUsersList = nil;
  self.user = nil;
  self.action = nil;
  self.merchant = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.code = PBResultCodeUnknowError;
    self.errorMessage = @"";
    self.hasMore = NO;
    self.user = [PBUser defaultInstance];
    self.action = [PBAction defaultInstance];
    self.merchant = [PBMerchant defaultInstance];
  }
  return self;
}
static PBResponse* defaultPBResponseInstance = nil;
+ (void) initialize {
  if (self == [PBResponse class]) {
    defaultPBResponseInstance = [[PBResponse alloc] init];
  }
}
+ (PBResponse*) defaultInstance {
  return defaultPBResponseInstance;
}
- (PBResponse*) defaultInstance {
  return defaultPBResponseInstance;
}
- (NSArray*) actionsList {
  return mutableActionsList;
}
- (PBAction*) actionsAtIndex:(int32_t) index {
  id value = [mutableActionsList objectAtIndex:index];
  return value;
}
- (NSArray*) messagesList {
  return mutableMessagesList;
}
- (PBMessage*) messagesAtIndex:(int32_t) index {
  id value = [mutableMessagesList objectAtIndex:index];
  return value;
}
- (NSArray*) usersList {
  return mutableUsersList;
}
- (PBUser*) usersAtIndex:(int32_t) index {
  id value = [mutableUsersList objectAtIndex:index];
  return value;
}
- (NSArray*) activitysList {
  return mutableActivitysList;
}
- (PBActivity*) activitysAtIndex:(int32_t) index {
  id value = [mutableActivitysList objectAtIndex:index];
  return value;
}
- (NSArray*) commentsList {
  return mutableCommentsList;
}
- (PBComment*) commentsAtIndex:(int32_t) index {
  id value = [mutableCommentsList objectAtIndex:index];
  return value;
}
- (NSArray*) briefUsersList {
  return mutableBriefUsersList;
}
- (PBBriefUser*) briefUsersAtIndex:(int32_t) index {
  id value = [mutableBriefUsersList objectAtIndex:index];
  return value;
}
- (BOOL) isInitialized {
  if (!self.hasCode) {
    return NO;
  }
  for (PBAction* element in self.actionsList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  for (PBMessage* element in self.messagesList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  for (PBUser* element in self.usersList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  for (PBActivity* element in self.activitysList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  for (PBComment* element in self.commentsList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  for (PBBriefUser* element in self.briefUsersList) {
    if (!element.isInitialized) {
      return NO;
    }
  }
  if (self.hasUser) {
    if (!self.user.isInitialized) {
      return NO;
    }
  }
  if (self.hasAction) {
    if (!self.action.isInitialized) {
      return NO;
    }
  }
  if (self.hasMerchant) {
    if (!self.merchant.isInitialized) {
      return NO;
    }
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasCode) {
    [output writeEnum:1 value:self.code];
  }
  if (self.hasErrorMessage) {
    [output writeString:2 value:self.errorMessage];
  }
  if (self.hasHasMore) {
    [output writeBool:3 value:self.hasMore];
  }
  for (PBAction* element in self.actionsList) {
    [output writeMessage:10 value:element];
  }
  for (PBMessage* element in self.messagesList) {
    [output writeMessage:11 value:element];
  }
  for (PBUser* element in self.usersList) {
    [output writeMessage:12 value:element];
  }
  for (PBActivity* element in self.activitysList) {
    [output writeMessage:13 value:element];
  }
  for (PBComment* element in self.commentsList) {
    [output writeMessage:14 value:element];
  }
  for (PBBriefUser* element in self.briefUsersList) {
    [output writeMessage:15 value:element];
  }
  if (self.hasUser) {
    [output writeMessage:50 value:self.user];
  }
  if (self.hasAction) {
    [output writeMessage:51 value:self.action];
  }
  if (self.hasMerchant) {
    [output writeMessage:52 value:self.merchant];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (int32_t) serializedSize {
  int32_t size = memoizedSerializedSize;
  if (size != -1) {
    return size;
  }

  size = 0;
  if (self.hasCode) {
    size += computeEnumSize(1, self.code);
  }
  if (self.hasErrorMessage) {
    size += computeStringSize(2, self.errorMessage);
  }
  if (self.hasHasMore) {
    size += computeBoolSize(3, self.hasMore);
  }
  for (PBAction* element in self.actionsList) {
    size += computeMessageSize(10, element);
  }
  for (PBMessage* element in self.messagesList) {
    size += computeMessageSize(11, element);
  }
  for (PBUser* element in self.usersList) {
    size += computeMessageSize(12, element);
  }
  for (PBActivity* element in self.activitysList) {
    size += computeMessageSize(13, element);
  }
  for (PBComment* element in self.commentsList) {
    size += computeMessageSize(14, element);
  }
  for (PBBriefUser* element in self.briefUsersList) {
    size += computeMessageSize(15, element);
  }
  if (self.hasUser) {
    size += computeMessageSize(50, self.user);
  }
  if (self.hasAction) {
    size += computeMessageSize(51, self.action);
  }
  if (self.hasMerchant) {
    size += computeMessageSize(52, self.merchant);
  }
  size += self.unknownFields.serializedSize;
  memoizedSerializedSize = size;
  return size;
}
+ (PBResponse*) parseFromData:(NSData*) data {
  return (PBResponse*)[[[PBResponse builder] mergeFromData:data] build];
}
+ (PBResponse*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PBResponse*)[[[PBResponse builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (PBResponse*) parseFromInputStream:(NSInputStream*) input {
  return (PBResponse*)[[[PBResponse builder] mergeFromInputStream:input] build];
}
+ (PBResponse*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PBResponse*)[[[PBResponse builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PBResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (PBResponse*)[[[PBResponse builder] mergeFromCodedInputStream:input] build];
}
+ (PBResponse*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (PBResponse*)[[[PBResponse builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (PBResponse_Builder*) builder {
  return [[[PBResponse_Builder alloc] init] autorelease];
}
+ (PBResponse_Builder*) builderWithPrototype:(PBResponse*) prototype {
  return [[PBResponse builder] mergeFrom:prototype];
}
- (PBResponse_Builder*) builder {
  return [PBResponse builder];
}
@end

@interface PBResponse_Builder()
@property (retain) PBResponse* result;
@end

@implementation PBResponse_Builder
@synthesize result;
- (void) dealloc {
  self.result = nil;
  [super dealloc];
}
- (id) init {
  if ((self = [super init])) {
    self.result = [[[PBResponse alloc] init] autorelease];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (PBResponse_Builder*) clear {
  self.result = [[[PBResponse alloc] init] autorelease];
  return self;
}
- (PBResponse_Builder*) clone {
  return [PBResponse builderWithPrototype:result];
}
- (PBResponse*) defaultInstance {
  return [PBResponse defaultInstance];
}
- (PBResponse*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (PBResponse*) buildPartial {
  PBResponse* returnMe = [[result retain] autorelease];
  self.result = nil;
  return returnMe;
}
- (PBResponse_Builder*) mergeFrom:(PBResponse*) other {
  if (other == [PBResponse defaultInstance]) {
    return self;
  }
  if (other.hasCode) {
    [self setCode:other.code];
  }
  if (other.hasErrorMessage) {
    [self setErrorMessage:other.errorMessage];
  }
  if (other.hasHasMore) {
    [self setHasMore:other.hasMore];
  }
  if (other.mutableActionsList.count > 0) {
    if (result.mutableActionsList == nil) {
      result.mutableActionsList = [NSMutableArray array];
    }
    [result.mutableActionsList addObjectsFromArray:other.mutableActionsList];
  }
  if (other.mutableMessagesList.count > 0) {
    if (result.mutableMessagesList == nil) {
      result.mutableMessagesList = [NSMutableArray array];
    }
    [result.mutableMessagesList addObjectsFromArray:other.mutableMessagesList];
  }
  if (other.mutableUsersList.count > 0) {
    if (result.mutableUsersList == nil) {
      result.mutableUsersList = [NSMutableArray array];
    }
    [result.mutableUsersList addObjectsFromArray:other.mutableUsersList];
  }
  if (other.mutableActivitysList.count > 0) {
    if (result.mutableActivitysList == nil) {
      result.mutableActivitysList = [NSMutableArray array];
    }
    [result.mutableActivitysList addObjectsFromArray:other.mutableActivitysList];
  }
  if (other.mutableCommentsList.count > 0) {
    if (result.mutableCommentsList == nil) {
      result.mutableCommentsList = [NSMutableArray array];
    }
    [result.mutableCommentsList addObjectsFromArray:other.mutableCommentsList];
  }
  if (other.mutableBriefUsersList.count > 0) {
    if (result.mutableBriefUsersList == nil) {
      result.mutableBriefUsersList = [NSMutableArray array];
    }
    [result.mutableBriefUsersList addObjectsFromArray:other.mutableBriefUsersList];
  }
  if (other.hasUser) {
    [self mergeUser:other.user];
  }
  if (other.hasAction) {
    [self mergeAction:other.action];
  }
  if (other.hasMerchant) {
    [self mergeMerchant:other.merchant];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (PBResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (PBResponse_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSet_Builder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    int32_t tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        int32_t value = [input readEnum];
        if (PBResultCodeIsValidValue(value)) {
          [self setCode:value];
        } else {
          [unknownFields mergeVarintField:1 value:value];
        }
        break;
      }
      case 18: {
        [self setErrorMessage:[input readString]];
        break;
      }
      case 24: {
        [self setHasMore:[input readBool]];
        break;
      }
      case 82: {
        PBAction_Builder* subBuilder = [PBAction builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addActions:[subBuilder buildPartial]];
        break;
      }
      case 90: {
        PBMessage_Builder* subBuilder = [PBMessage builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addMessages:[subBuilder buildPartial]];
        break;
      }
      case 98: {
        PBUser_Builder* subBuilder = [PBUser builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addUsers:[subBuilder buildPartial]];
        break;
      }
      case 106: {
        PBActivity_Builder* subBuilder = [PBActivity builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addActivitys:[subBuilder buildPartial]];
        break;
      }
      case 114: {
        PBComment_Builder* subBuilder = [PBComment builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addComments:[subBuilder buildPartial]];
        break;
      }
      case 122: {
        PBBriefUser_Builder* subBuilder = [PBBriefUser builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addBriefUsers:[subBuilder buildPartial]];
        break;
      }
      case 402: {
        PBUser_Builder* subBuilder = [PBUser builder];
        if (self.hasUser) {
          [subBuilder mergeFrom:self.user];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setUser:[subBuilder buildPartial]];
        break;
      }
      case 410: {
        PBAction_Builder* subBuilder = [PBAction builder];
        if (self.hasAction) {
          [subBuilder mergeFrom:self.action];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setAction:[subBuilder buildPartial]];
        break;
      }
      case 418: {
        PBMerchant_Builder* subBuilder = [PBMerchant builder];
        if (self.hasMerchant) {
          [subBuilder mergeFrom:self.merchant];
        }
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self setMerchant:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (BOOL) hasCode {
  return result.hasCode;
}
- (PBResultCode) code {
  return result.code;
}
- (PBResponse_Builder*) setCode:(PBResultCode) value {
  result.hasCode = YES;
  result.code = value;
  return self;
}
- (PBResponse_Builder*) clearCode {
  result.hasCode = NO;
  result.code = PBResultCodeUnknowError;
  return self;
}
- (BOOL) hasErrorMessage {
  return result.hasErrorMessage;
}
- (NSString*) errorMessage {
  return result.errorMessage;
}
- (PBResponse_Builder*) setErrorMessage:(NSString*) value {
  result.hasErrorMessage = YES;
  result.errorMessage = value;
  return self;
}
- (PBResponse_Builder*) clearErrorMessage {
  result.hasErrorMessage = NO;
  result.errorMessage = @"";
  return self;
}
- (BOOL) hasHasMore {
  return result.hasHasMore;
}
- (BOOL) hasMore {
  return result.hasMore;
}
- (PBResponse_Builder*) setHasMore:(BOOL) value {
  result.hasHasMore = YES;
  result.hasMore = value;
  return self;
}
- (PBResponse_Builder*) clearHasMore {
  result.hasHasMore = NO;
  result.hasMore = NO;
  return self;
}
- (NSArray*) actionsList {
  if (result.mutableActionsList == nil) { return [NSArray array]; }
  return result.mutableActionsList;
}
- (PBAction*) actionsAtIndex:(int32_t) index {
  return [result actionsAtIndex:index];
}
- (PBResponse_Builder*) replaceActionsAtIndex:(int32_t) index with:(PBAction*) value {
  [result.mutableActionsList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (PBResponse_Builder*) addAllActions:(NSArray*) values {
  if (result.mutableActionsList == nil) {
    result.mutableActionsList = [NSMutableArray array];
  }
  [result.mutableActionsList addObjectsFromArray:values];
  return self;
}
- (PBResponse_Builder*) clearActionsList {
  result.mutableActionsList = nil;
  return self;
}
- (PBResponse_Builder*) addActions:(PBAction*) value {
  if (result.mutableActionsList == nil) {
    result.mutableActionsList = [NSMutableArray array];
  }
  [result.mutableActionsList addObject:value];
  return self;
}
- (NSArray*) messagesList {
  if (result.mutableMessagesList == nil) { return [NSArray array]; }
  return result.mutableMessagesList;
}
- (PBMessage*) messagesAtIndex:(int32_t) index {
  return [result messagesAtIndex:index];
}
- (PBResponse_Builder*) replaceMessagesAtIndex:(int32_t) index with:(PBMessage*) value {
  [result.mutableMessagesList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (PBResponse_Builder*) addAllMessages:(NSArray*) values {
  if (result.mutableMessagesList == nil) {
    result.mutableMessagesList = [NSMutableArray array];
  }
  [result.mutableMessagesList addObjectsFromArray:values];
  return self;
}
- (PBResponse_Builder*) clearMessagesList {
  result.mutableMessagesList = nil;
  return self;
}
- (PBResponse_Builder*) addMessages:(PBMessage*) value {
  if (result.mutableMessagesList == nil) {
    result.mutableMessagesList = [NSMutableArray array];
  }
  [result.mutableMessagesList addObject:value];
  return self;
}
- (NSArray*) usersList {
  if (result.mutableUsersList == nil) { return [NSArray array]; }
  return result.mutableUsersList;
}
- (PBUser*) usersAtIndex:(int32_t) index {
  return [result usersAtIndex:index];
}
- (PBResponse_Builder*) replaceUsersAtIndex:(int32_t) index with:(PBUser*) value {
  [result.mutableUsersList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (PBResponse_Builder*) addAllUsers:(NSArray*) values {
  if (result.mutableUsersList == nil) {
    result.mutableUsersList = [NSMutableArray array];
  }
  [result.mutableUsersList addObjectsFromArray:values];
  return self;
}
- (PBResponse_Builder*) clearUsersList {
  result.mutableUsersList = nil;
  return self;
}
- (PBResponse_Builder*) addUsers:(PBUser*) value {
  if (result.mutableUsersList == nil) {
    result.mutableUsersList = [NSMutableArray array];
  }
  [result.mutableUsersList addObject:value];
  return self;
}
- (NSArray*) activitysList {
  if (result.mutableActivitysList == nil) { return [NSArray array]; }
  return result.mutableActivitysList;
}
- (PBActivity*) activitysAtIndex:(int32_t) index {
  return [result activitysAtIndex:index];
}
- (PBResponse_Builder*) replaceActivitysAtIndex:(int32_t) index with:(PBActivity*) value {
  [result.mutableActivitysList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (PBResponse_Builder*) addAllActivitys:(NSArray*) values {
  if (result.mutableActivitysList == nil) {
    result.mutableActivitysList = [NSMutableArray array];
  }
  [result.mutableActivitysList addObjectsFromArray:values];
  return self;
}
- (PBResponse_Builder*) clearActivitysList {
  result.mutableActivitysList = nil;
  return self;
}
- (PBResponse_Builder*) addActivitys:(PBActivity*) value {
  if (result.mutableActivitysList == nil) {
    result.mutableActivitysList = [NSMutableArray array];
  }
  [result.mutableActivitysList addObject:value];
  return self;
}
- (NSArray*) commentsList {
  if (result.mutableCommentsList == nil) { return [NSArray array]; }
  return result.mutableCommentsList;
}
- (PBComment*) commentsAtIndex:(int32_t) index {
  return [result commentsAtIndex:index];
}
- (PBResponse_Builder*) replaceCommentsAtIndex:(int32_t) index with:(PBComment*) value {
  [result.mutableCommentsList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (PBResponse_Builder*) addAllComments:(NSArray*) values {
  if (result.mutableCommentsList == nil) {
    result.mutableCommentsList = [NSMutableArray array];
  }
  [result.mutableCommentsList addObjectsFromArray:values];
  return self;
}
- (PBResponse_Builder*) clearCommentsList {
  result.mutableCommentsList = nil;
  return self;
}
- (PBResponse_Builder*) addComments:(PBComment*) value {
  if (result.mutableCommentsList == nil) {
    result.mutableCommentsList = [NSMutableArray array];
  }
  [result.mutableCommentsList addObject:value];
  return self;
}
- (NSArray*) briefUsersList {
  if (result.mutableBriefUsersList == nil) { return [NSArray array]; }
  return result.mutableBriefUsersList;
}
- (PBBriefUser*) briefUsersAtIndex:(int32_t) index {
  return [result briefUsersAtIndex:index];
}
- (PBResponse_Builder*) replaceBriefUsersAtIndex:(int32_t) index with:(PBBriefUser*) value {
  [result.mutableBriefUsersList replaceObjectAtIndex:index withObject:value];
  return self;
}
- (PBResponse_Builder*) addAllBriefUsers:(NSArray*) values {
  if (result.mutableBriefUsersList == nil) {
    result.mutableBriefUsersList = [NSMutableArray array];
  }
  [result.mutableBriefUsersList addObjectsFromArray:values];
  return self;
}
- (PBResponse_Builder*) clearBriefUsersList {
  result.mutableBriefUsersList = nil;
  return self;
}
- (PBResponse_Builder*) addBriefUsers:(PBBriefUser*) value {
  if (result.mutableBriefUsersList == nil) {
    result.mutableBriefUsersList = [NSMutableArray array];
  }
  [result.mutableBriefUsersList addObject:value];
  return self;
}
- (BOOL) hasUser {
  return result.hasUser;
}
- (PBUser*) user {
  return result.user;
}
- (PBResponse_Builder*) setUser:(PBUser*) value {
  result.hasUser = YES;
  result.user = value;
  return self;
}
- (PBResponse_Builder*) setUserBuilder:(PBUser_Builder*) builderForValue {
  return [self setUser:[builderForValue build]];
}
- (PBResponse_Builder*) mergeUser:(PBUser*) value {
  if (result.hasUser &&
      result.user != [PBUser defaultInstance]) {
    result.user =
      [[[PBUser builderWithPrototype:result.user] mergeFrom:value] buildPartial];
  } else {
    result.user = value;
  }
  result.hasUser = YES;
  return self;
}
- (PBResponse_Builder*) clearUser {
  result.hasUser = NO;
  result.user = [PBUser defaultInstance];
  return self;
}
- (BOOL) hasAction {
  return result.hasAction;
}
- (PBAction*) action {
  return result.action;
}
- (PBResponse_Builder*) setAction:(PBAction*) value {
  result.hasAction = YES;
  result.action = value;
  return self;
}
- (PBResponse_Builder*) setActionBuilder:(PBAction_Builder*) builderForValue {
  return [self setAction:[builderForValue build]];
}
- (PBResponse_Builder*) mergeAction:(PBAction*) value {
  if (result.hasAction &&
      result.action != [PBAction defaultInstance]) {
    result.action =
      [[[PBAction builderWithPrototype:result.action] mergeFrom:value] buildPartial];
  } else {
    result.action = value;
  }
  result.hasAction = YES;
  return self;
}
- (PBResponse_Builder*) clearAction {
  result.hasAction = NO;
  result.action = [PBAction defaultInstance];
  return self;
}
- (BOOL) hasMerchant {
  return result.hasMerchant;
}
- (PBMerchant*) merchant {
  return result.merchant;
}
- (PBResponse_Builder*) setMerchant:(PBMerchant*) value {
  result.hasMerchant = YES;
  result.merchant = value;
  return self;
}
- (PBResponse_Builder*) setMerchantBuilder:(PBMerchant_Builder*) builderForValue {
  return [self setMerchant:[builderForValue build]];
}
- (PBResponse_Builder*) mergeMerchant:(PBMerchant*) value {
  if (result.hasMerchant &&
      result.merchant != [PBMerchant defaultInstance]) {
    result.merchant =
      [[[PBMerchant builderWithPrototype:result.merchant] mergeFrom:value] buildPartial];
  } else {
    result.merchant = value;
  }
  result.hasMerchant = YES;
  return self;
}
- (PBResponse_Builder*) clearMerchant {
  result.hasMerchant = NO;
  result.merchant = [PBMerchant defaultInstance];
  return self;
}
@end

