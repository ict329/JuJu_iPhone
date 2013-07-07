// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "ProtocolBuffers.h"

#import "Basic.pb.h"

@class PBContact;
@class PBContact_Builder;
@class PBDevice;
@class PBDevice_Builder;
@class PBLocation;
@class PBLocation_Builder;
@class PBLog;
@class PBLog_Builder;
@class PBRegistion;
@class PBRegistion_Builder;
@class PBSNS;
@class PBSNS_Builder;
@class PBStatistic;
@class PBStatistic_Builder;
@class PBUser;
@class PBUserBasic;
@class PBUserBasic_Builder;
@class PBUser_Builder;
typedef enum {
  PBRelationFollow = 1,
  PBRelationFan = 2,
  PBRelationFriend = 3,
  PBRelationBlack = 4,
} PBRelation;

BOOL PBRelationIsValidValue(PBRelation value);

typedef enum {
  PBRegTypeNick = 1,
  PBRegTypeQq = 3,
  PBRegTypeRenren = 4,
  PBRegTypeEmail = 5,
} PBRegType;

BOOL PBRegTypeIsValidValue(PBRegType value);

typedef enum {
  PBUserRoleUser = 1,
  PBUserRoleAmdin = 2,
  PBUserRoleVip = 3,
  PBUserRoleForbidden = 4,
} PBUserRole;

BOOL PBUserRoleIsValidValue(PBUserRole value);

typedef enum {
  PBUserStatusOffline = 1,
  PBUserStatusOnline = 2,
  PBUserStatusHidden = 3,
} PBUserStatus;

BOOL PBUserStatusIsValidValue(PBUserStatus value);


@interface UserRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

@interface PBSNS : PBGeneratedMessage {
@private
  BOOL hasTelNumber_:1;
  BOOL hasQqNumber_:1;
  BOOL hasQqWeiboId_:1;
  BOOL hasQqWeiboNick_:1;
  BOOL hasSinaWeiboId_:1;
  BOOL hasSinaWeiboNick_:1;
  BOOL hasRenrenId_:1;
  BOOL hasRenrenNick_:1;
  NSString* telNumber;
  NSString* qqNumber;
  NSString* qqWeiboId;
  NSString* qqWeiboNick;
  NSString* sinaWeiboId;
  NSString* sinaWeiboNick;
  NSString* renrenId;
  NSString* renrenNick;
}
- (BOOL) hasTelNumber;
- (BOOL) hasQqNumber;
- (BOOL) hasQqWeiboId;
- (BOOL) hasQqWeiboNick;
- (BOOL) hasSinaWeiboId;
- (BOOL) hasSinaWeiboNick;
- (BOOL) hasRenrenId;
- (BOOL) hasRenrenNick;
@property (readonly, retain) NSString* telNumber;
@property (readonly, retain) NSString* qqNumber;
@property (readonly, retain) NSString* qqWeiboId;
@property (readonly, retain) NSString* qqWeiboNick;
@property (readonly, retain) NSString* sinaWeiboId;
@property (readonly, retain) NSString* sinaWeiboNick;
@property (readonly, retain) NSString* renrenId;
@property (readonly, retain) NSString* renrenNick;

+ (PBSNS*) defaultInstance;
- (PBSNS*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBSNS_Builder*) builder;
+ (PBSNS_Builder*) builder;
+ (PBSNS_Builder*) builderWithPrototype:(PBSNS*) prototype;

+ (PBSNS*) parseFromData:(NSData*) data;
+ (PBSNS*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBSNS*) parseFromInputStream:(NSInputStream*) input;
+ (PBSNS*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBSNS*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBSNS*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBSNS_Builder : PBGeneratedMessage_Builder {
@private
  PBSNS* result;
}

- (PBSNS*) defaultInstance;

- (PBSNS_Builder*) clear;
- (PBSNS_Builder*) clone;

- (PBSNS*) build;
- (PBSNS*) buildPartial;

- (PBSNS_Builder*) mergeFrom:(PBSNS*) other;
- (PBSNS_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBSNS_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasTelNumber;
- (NSString*) telNumber;
- (PBSNS_Builder*) setTelNumber:(NSString*) value;
- (PBSNS_Builder*) clearTelNumber;

- (BOOL) hasQqNumber;
- (NSString*) qqNumber;
- (PBSNS_Builder*) setQqNumber:(NSString*) value;
- (PBSNS_Builder*) clearQqNumber;

- (BOOL) hasQqWeiboId;
- (NSString*) qqWeiboId;
- (PBSNS_Builder*) setQqWeiboId:(NSString*) value;
- (PBSNS_Builder*) clearQqWeiboId;

- (BOOL) hasQqWeiboNick;
- (NSString*) qqWeiboNick;
- (PBSNS_Builder*) setQqWeiboNick:(NSString*) value;
- (PBSNS_Builder*) clearQqWeiboNick;

- (BOOL) hasSinaWeiboId;
- (NSString*) sinaWeiboId;
- (PBSNS_Builder*) setSinaWeiboId:(NSString*) value;
- (PBSNS_Builder*) clearSinaWeiboId;

- (BOOL) hasSinaWeiboNick;
- (NSString*) sinaWeiboNick;
- (PBSNS_Builder*) setSinaWeiboNick:(NSString*) value;
- (PBSNS_Builder*) clearSinaWeiboNick;

- (BOOL) hasRenrenId;
- (NSString*) renrenId;
- (PBSNS_Builder*) setRenrenId:(NSString*) value;
- (PBSNS_Builder*) clearRenrenId;

- (BOOL) hasRenrenNick;
- (NSString*) renrenNick;
- (PBSNS_Builder*) setRenrenNick:(NSString*) value;
- (PBSNS_Builder*) clearRenrenNick;
@end

@interface PBLog : PBGeneratedMessage {
@private
  BOOL hasLastLogLatitude_:1;
  BOOL hasLastLogLongitude_:1;
  BOOL hasLastLogDate_:1;
  BOOL hasLastLogIp_:1;
  Float32 lastLogLatitude;
  Float32 lastLogLongitude;
  int32_t lastLogDate;
  int32_t lastLogIp;
}
- (BOOL) hasLastLogDate;
- (BOOL) hasLastLogIp;
- (BOOL) hasLastLogLatitude;
- (BOOL) hasLastLogLongitude;
@property (readonly) int32_t lastLogDate;
@property (readonly) int32_t lastLogIp;
@property (readonly) Float32 lastLogLatitude;
@property (readonly) Float32 lastLogLongitude;

+ (PBLog*) defaultInstance;
- (PBLog*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBLog_Builder*) builder;
+ (PBLog_Builder*) builder;
+ (PBLog_Builder*) builderWithPrototype:(PBLog*) prototype;

+ (PBLog*) parseFromData:(NSData*) data;
+ (PBLog*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBLog*) parseFromInputStream:(NSInputStream*) input;
+ (PBLog*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBLog*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBLog*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBLog_Builder : PBGeneratedMessage_Builder {
@private
  PBLog* result;
}

- (PBLog*) defaultInstance;

- (PBLog_Builder*) clear;
- (PBLog_Builder*) clone;

- (PBLog*) build;
- (PBLog*) buildPartial;

- (PBLog_Builder*) mergeFrom:(PBLog*) other;
- (PBLog_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBLog_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasLastLogDate;
- (int32_t) lastLogDate;
- (PBLog_Builder*) setLastLogDate:(int32_t) value;
- (PBLog_Builder*) clearLastLogDate;

- (BOOL) hasLastLogIp;
- (int32_t) lastLogIp;
- (PBLog_Builder*) setLastLogIp:(int32_t) value;
- (PBLog_Builder*) clearLastLogIp;

- (BOOL) hasLastLogLatitude;
- (Float32) lastLogLatitude;
- (PBLog_Builder*) setLastLogLatitude:(Float32) value;
- (PBLog_Builder*) clearLastLogLatitude;

- (BOOL) hasLastLogLongitude;
- (Float32) lastLogLongitude;
- (PBLog_Builder*) setLastLogLongitude:(Float32) value;
- (PBLog_Builder*) clearLastLogLongitude;
@end

@interface PBRegistion : PBGeneratedMessage {
@private
  BOOL hasRegDate_:1;
  BOOL hasRegIp_:1;
  BOOL hasRegType_:1;
  int32_t regDate;
  int32_t regIp;
  PBRegType regType;
}
- (BOOL) hasRegDate;
- (BOOL) hasRegType;
- (BOOL) hasRegIp;
@property (readonly) int32_t regDate;
@property (readonly) PBRegType regType;
@property (readonly) int32_t regIp;

+ (PBRegistion*) defaultInstance;
- (PBRegistion*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBRegistion_Builder*) builder;
+ (PBRegistion_Builder*) builder;
+ (PBRegistion_Builder*) builderWithPrototype:(PBRegistion*) prototype;

+ (PBRegistion*) parseFromData:(NSData*) data;
+ (PBRegistion*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBRegistion*) parseFromInputStream:(NSInputStream*) input;
+ (PBRegistion*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBRegistion*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBRegistion*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBRegistion_Builder : PBGeneratedMessage_Builder {
@private
  PBRegistion* result;
}

- (PBRegistion*) defaultInstance;

- (PBRegistion_Builder*) clear;
- (PBRegistion_Builder*) clone;

- (PBRegistion*) build;
- (PBRegistion*) buildPartial;

- (PBRegistion_Builder*) mergeFrom:(PBRegistion*) other;
- (PBRegistion_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBRegistion_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasRegDate;
- (int32_t) regDate;
- (PBRegistion_Builder*) setRegDate:(int32_t) value;
- (PBRegistion_Builder*) clearRegDate;

- (BOOL) hasRegType;
- (PBRegType) regType;
- (PBRegistion_Builder*) setRegType:(PBRegType) value;
- (PBRegistion_Builder*) clearRegType;

- (BOOL) hasRegIp;
- (int32_t) regIp;
- (PBRegistion_Builder*) setRegIp:(int32_t) value;
- (PBRegistion_Builder*) clearRegIp;
@end

@interface PBDevice : PBGeneratedMessage {
@private
  BOOL hasDeviceId_:1;
  BOOL hasDeviceOs_:1;
  BOOL hasDeviceToken_:1;
  BOOL hasDeviceName_:1;
  NSString* deviceId;
  NSString* deviceOs;
  NSString* deviceToken;
  NSString* deviceName;
}
- (BOOL) hasDeviceId;
- (BOOL) hasDeviceOs;
- (BOOL) hasDeviceToken;
- (BOOL) hasDeviceName;
@property (readonly, retain) NSString* deviceId;
@property (readonly, retain) NSString* deviceOs;
@property (readonly, retain) NSString* deviceToken;
@property (readonly, retain) NSString* deviceName;

+ (PBDevice*) defaultInstance;
- (PBDevice*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBDevice_Builder*) builder;
+ (PBDevice_Builder*) builder;
+ (PBDevice_Builder*) builderWithPrototype:(PBDevice*) prototype;

+ (PBDevice*) parseFromData:(NSData*) data;
+ (PBDevice*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBDevice*) parseFromInputStream:(NSInputStream*) input;
+ (PBDevice*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBDevice*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBDevice*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBDevice_Builder : PBGeneratedMessage_Builder {
@private
  PBDevice* result;
}

- (PBDevice*) defaultInstance;

- (PBDevice_Builder*) clear;
- (PBDevice_Builder*) clone;

- (PBDevice*) build;
- (PBDevice*) buildPartial;

- (PBDevice_Builder*) mergeFrom:(PBDevice*) other;
- (PBDevice_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBDevice_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasDeviceId;
- (NSString*) deviceId;
- (PBDevice_Builder*) setDeviceId:(NSString*) value;
- (PBDevice_Builder*) clearDeviceId;

- (BOOL) hasDeviceOs;
- (NSString*) deviceOs;
- (PBDevice_Builder*) setDeviceOs:(NSString*) value;
- (PBDevice_Builder*) clearDeviceOs;

- (BOOL) hasDeviceToken;
- (NSString*) deviceToken;
- (PBDevice_Builder*) setDeviceToken:(NSString*) value;
- (PBDevice_Builder*) clearDeviceToken;

- (BOOL) hasDeviceName;
- (NSString*) deviceName;
- (PBDevice_Builder*) setDeviceName:(NSString*) value;
- (PBDevice_Builder*) clearDeviceName;
@end

@interface PBStatistic : PBGeneratedMessage {
@private
  BOOL hasFanCount_:1;
  BOOL hasFollowCount_:1;
  BOOL hasMyActivity_:1;
  BOOL hasNewFanCount_:1;
  BOOL hasNewFollowCount_:1;
  BOOL hasNewMessageCount_:1;
  BOOL hasNewFeedCount_:1;
  BOOL hasNewNoticeCount_:1;
  int32_t fanCount;
  int32_t followCount;
  int32_t myActivity;
  int32_t newFanCount;
  int32_t newFollowCount;
  int32_t newMessageCount;
  int32_t newFeedCount;
  int32_t newNoticeCount;
}
- (BOOL) hasFanCount;
- (BOOL) hasFollowCount;
- (BOOL) hasMyActivity;
- (BOOL) hasNewFanCount;
- (BOOL) hasNewFollowCount;
- (BOOL) hasNewMessageCount;
- (BOOL) hasNewFeedCount;
- (BOOL) hasNewNoticeCount;
@property (readonly) int32_t fanCount;
@property (readonly) int32_t followCount;
@property (readonly) int32_t myActivity;
@property (readonly) int32_t newFanCount;
@property (readonly) int32_t newFollowCount;
@property (readonly) int32_t newMessageCount;
@property (readonly) int32_t newFeedCount;
@property (readonly) int32_t newNoticeCount;

+ (PBStatistic*) defaultInstance;
- (PBStatistic*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBStatistic_Builder*) builder;
+ (PBStatistic_Builder*) builder;
+ (PBStatistic_Builder*) builderWithPrototype:(PBStatistic*) prototype;

+ (PBStatistic*) parseFromData:(NSData*) data;
+ (PBStatistic*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBStatistic*) parseFromInputStream:(NSInputStream*) input;
+ (PBStatistic*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBStatistic*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBStatistic*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBStatistic_Builder : PBGeneratedMessage_Builder {
@private
  PBStatistic* result;
}

- (PBStatistic*) defaultInstance;

- (PBStatistic_Builder*) clear;
- (PBStatistic_Builder*) clone;

- (PBStatistic*) build;
- (PBStatistic*) buildPartial;

- (PBStatistic_Builder*) mergeFrom:(PBStatistic*) other;
- (PBStatistic_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBStatistic_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasFanCount;
- (int32_t) fanCount;
- (PBStatistic_Builder*) setFanCount:(int32_t) value;
- (PBStatistic_Builder*) clearFanCount;

- (BOOL) hasFollowCount;
- (int32_t) followCount;
- (PBStatistic_Builder*) setFollowCount:(int32_t) value;
- (PBStatistic_Builder*) clearFollowCount;

- (BOOL) hasMyActivity;
- (int32_t) myActivity;
- (PBStatistic_Builder*) setMyActivity:(int32_t) value;
- (PBStatistic_Builder*) clearMyActivity;

- (BOOL) hasNewFanCount;
- (int32_t) newFanCount;
- (PBStatistic_Builder*) setNewFanCount:(int32_t) value;
- (PBStatistic_Builder*) clearNewFanCount;

- (BOOL) hasNewFollowCount;
- (int32_t) newFollowCount;
- (PBStatistic_Builder*) setNewFollowCount:(int32_t) value;
- (PBStatistic_Builder*) clearNewFollowCount;

- (BOOL) hasNewMessageCount;
- (int32_t) newMessageCount;
- (PBStatistic_Builder*) setNewMessageCount:(int32_t) value;
- (PBStatistic_Builder*) clearNewMessageCount;

- (BOOL) hasNewFeedCount;
- (int32_t) newFeedCount;
- (PBStatistic_Builder*) setNewFeedCount:(int32_t) value;
- (PBStatistic_Builder*) clearNewFeedCount;

- (BOOL) hasNewNoticeCount;
- (int32_t) newNoticeCount;
- (PBStatistic_Builder*) setNewNoticeCount:(int32_t) value;
- (PBStatistic_Builder*) clearNewNoticeCount;
@end

@interface PBUserBasic : PBGeneratedMessage {
@private
  BOOL hasGender_:1;
  BOOL hasBirthDate_:1;
  BOOL hasPbrelation_:1;
  BOOL hasUid_:1;
  BOOL hasUname_:1;
  BOOL hasNick_:1;
  BOOL hasAvatar_:1;
  BOOL hasIntroduction_:1;
  BOOL hasNoteName_:1;
  BOOL hasRole_:1;
  BOOL hasStatus_:1;
  BOOL gender_:1;
  int32_t birthDate;
  int32_t pbrelation;
  NSString* uid;
  NSString* uname;
  NSString* nick;
  NSString* avatar;
  NSString* introduction;
  NSString* noteName;
  PBUserRole role;
  PBUserStatus status;
  NSMutableArray* mutableTagsList;
  NSMutableArray* mutablePasswordList;
}
- (BOOL) hasUid;
- (BOOL) hasUname;
- (BOOL) hasNick;
- (BOOL) hasRole;
- (BOOL) hasGender;
- (BOOL) hasAvatar;
- (BOOL) hasStatus;
- (BOOL) hasIntroduction;
- (BOOL) hasBirthDate;
- (BOOL) hasPbrelation;
- (BOOL) hasNoteName;
@property (readonly, retain) NSString* uid;
@property (readonly, retain) NSString* uname;
@property (readonly, retain) NSString* nick;
@property (readonly) PBUserRole role;
- (BOOL) gender;
@property (readonly, retain) NSString* avatar;
@property (readonly) PBUserStatus status;
@property (readonly, retain) NSString* introduction;
@property (readonly) int32_t birthDate;
@property (readonly) int32_t pbrelation;
@property (readonly, retain) NSString* noteName;
- (NSArray*) tagsList;
- (NSString*) tagsAtIndex:(int32_t) index;
- (NSArray*) passwordList;
- (NSString*) passwordAtIndex:(int32_t) index;

+ (PBUserBasic*) defaultInstance;
- (PBUserBasic*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBUserBasic_Builder*) builder;
+ (PBUserBasic_Builder*) builder;
+ (PBUserBasic_Builder*) builderWithPrototype:(PBUserBasic*) prototype;

+ (PBUserBasic*) parseFromData:(NSData*) data;
+ (PBUserBasic*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBUserBasic*) parseFromInputStream:(NSInputStream*) input;
+ (PBUserBasic*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBUserBasic*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBUserBasic*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBUserBasic_Builder : PBGeneratedMessage_Builder {
@private
  PBUserBasic* result;
}

- (PBUserBasic*) defaultInstance;

- (PBUserBasic_Builder*) clear;
- (PBUserBasic_Builder*) clone;

- (PBUserBasic*) build;
- (PBUserBasic*) buildPartial;

- (PBUserBasic_Builder*) mergeFrom:(PBUserBasic*) other;
- (PBUserBasic_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBUserBasic_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasUid;
- (NSString*) uid;
- (PBUserBasic_Builder*) setUid:(NSString*) value;
- (PBUserBasic_Builder*) clearUid;

- (BOOL) hasUname;
- (NSString*) uname;
- (PBUserBasic_Builder*) setUname:(NSString*) value;
- (PBUserBasic_Builder*) clearUname;

- (BOOL) hasNick;
- (NSString*) nick;
- (PBUserBasic_Builder*) setNick:(NSString*) value;
- (PBUserBasic_Builder*) clearNick;

- (BOOL) hasRole;
- (PBUserRole) role;
- (PBUserBasic_Builder*) setRole:(PBUserRole) value;
- (PBUserBasic_Builder*) clearRole;

- (BOOL) hasGender;
- (BOOL) gender;
- (PBUserBasic_Builder*) setGender:(BOOL) value;
- (PBUserBasic_Builder*) clearGender;

- (BOOL) hasAvatar;
- (NSString*) avatar;
- (PBUserBasic_Builder*) setAvatar:(NSString*) value;
- (PBUserBasic_Builder*) clearAvatar;

- (BOOL) hasStatus;
- (PBUserStatus) status;
- (PBUserBasic_Builder*) setStatus:(PBUserStatus) value;
- (PBUserBasic_Builder*) clearStatus;

- (BOOL) hasIntroduction;
- (NSString*) introduction;
- (PBUserBasic_Builder*) setIntroduction:(NSString*) value;
- (PBUserBasic_Builder*) clearIntroduction;

- (BOOL) hasBirthDate;
- (int32_t) birthDate;
- (PBUserBasic_Builder*) setBirthDate:(int32_t) value;
- (PBUserBasic_Builder*) clearBirthDate;

- (NSArray*) tagsList;
- (NSString*) tagsAtIndex:(int32_t) index;
- (PBUserBasic_Builder*) replaceTagsAtIndex:(int32_t) index with:(NSString*) value;
- (PBUserBasic_Builder*) addTags:(NSString*) value;
- (PBUserBasic_Builder*) addAllTags:(NSArray*) values;
- (PBUserBasic_Builder*) clearTagsList;

- (NSArray*) passwordList;
- (NSString*) passwordAtIndex:(int32_t) index;
- (PBUserBasic_Builder*) replacePasswordAtIndex:(int32_t) index with:(NSString*) value;
- (PBUserBasic_Builder*) addPassword:(NSString*) value;
- (PBUserBasic_Builder*) addAllPassword:(NSArray*) values;
- (PBUserBasic_Builder*) clearPasswordList;

- (BOOL) hasPbrelation;
- (int32_t) pbrelation;
- (PBUserBasic_Builder*) setPbrelation:(int32_t) value;
- (PBUserBasic_Builder*) clearPbrelation;

- (BOOL) hasNoteName;
- (NSString*) noteName;
- (PBUserBasic_Builder*) setNoteName:(NSString*) value;
- (PBUserBasic_Builder*) clearNoteName;
@end

@interface PBUser : PBGeneratedMessage {
@private
  BOOL hasBasicInfo_:1;
  BOOL hasRegistion_:1;
  BOOL hasLogInfo_:1;
  BOOL hasDeviceInfo_:1;
  BOOL hasSnsInfo_:1;
  BOOL hasStatistic_:1;
  PBUserBasic* basicInfo;
  PBRegistion* registion;
  PBLog* logInfo;
  PBDevice* deviceInfo;
  PBSNS* snsInfo;
  PBStatistic* statistic;
}
- (BOOL) hasBasicInfo;
- (BOOL) hasRegistion;
- (BOOL) hasLogInfo;
- (BOOL) hasDeviceInfo;
- (BOOL) hasSnsInfo;
- (BOOL) hasStatistic;
@property (readonly, retain) PBUserBasic* basicInfo;
@property (readonly, retain) PBRegistion* registion;
@property (readonly, retain) PBLog* logInfo;
@property (readonly, retain) PBDevice* deviceInfo;
@property (readonly, retain) PBSNS* snsInfo;
@property (readonly, retain) PBStatistic* statistic;

+ (PBUser*) defaultInstance;
- (PBUser*) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (PBUser_Builder*) builder;
+ (PBUser_Builder*) builder;
+ (PBUser_Builder*) builderWithPrototype:(PBUser*) prototype;

+ (PBUser*) parseFromData:(NSData*) data;
+ (PBUser*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBUser*) parseFromInputStream:(NSInputStream*) input;
+ (PBUser*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (PBUser*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (PBUser*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface PBUser_Builder : PBGeneratedMessage_Builder {
@private
  PBUser* result;
}

- (PBUser*) defaultInstance;

- (PBUser_Builder*) clear;
- (PBUser_Builder*) clone;

- (PBUser*) build;
- (PBUser*) buildPartial;

- (PBUser_Builder*) mergeFrom:(PBUser*) other;
- (PBUser_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (PBUser_Builder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasBasicInfo;
- (PBUserBasic*) basicInfo;
- (PBUser_Builder*) setBasicInfo:(PBUserBasic*) value;
- (PBUser_Builder*) setBasicInfoBuilder:(PBUserBasic_Builder*) builderForValue;
- (PBUser_Builder*) mergeBasicInfo:(PBUserBasic*) value;
- (PBUser_Builder*) clearBasicInfo;

- (BOOL) hasRegistion;
- (PBRegistion*) registion;
- (PBUser_Builder*) setRegistion:(PBRegistion*) value;
- (PBUser_Builder*) setRegistionBuilder:(PBRegistion_Builder*) builderForValue;
- (PBUser_Builder*) mergeRegistion:(PBRegistion*) value;
- (PBUser_Builder*) clearRegistion;

- (BOOL) hasLogInfo;
- (PBLog*) logInfo;
- (PBUser_Builder*) setLogInfo:(PBLog*) value;
- (PBUser_Builder*) setLogInfoBuilder:(PBLog_Builder*) builderForValue;
- (PBUser_Builder*) mergeLogInfo:(PBLog*) value;
- (PBUser_Builder*) clearLogInfo;

- (BOOL) hasDeviceInfo;
- (PBDevice*) deviceInfo;
- (PBUser_Builder*) setDeviceInfo:(PBDevice*) value;
- (PBUser_Builder*) setDeviceInfoBuilder:(PBDevice_Builder*) builderForValue;
- (PBUser_Builder*) mergeDeviceInfo:(PBDevice*) value;
- (PBUser_Builder*) clearDeviceInfo;

- (BOOL) hasSnsInfo;
- (PBSNS*) snsInfo;
- (PBUser_Builder*) setSnsInfo:(PBSNS*) value;
- (PBUser_Builder*) setSnsInfoBuilder:(PBSNS_Builder*) builderForValue;
- (PBUser_Builder*) mergeSnsInfo:(PBSNS*) value;
- (PBUser_Builder*) clearSnsInfo;

- (BOOL) hasStatistic;
- (PBStatistic*) statistic;
- (PBUser_Builder*) setStatistic:(PBStatistic*) value;
- (PBUser_Builder*) setStatisticBuilder:(PBStatistic_Builder*) builderForValue;
- (PBUser_Builder*) mergeStatistic:(PBStatistic*) value;
- (PBUser_Builder*) clearStatistic;
@end

