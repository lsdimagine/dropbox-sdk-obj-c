///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBAUTHRouteObjects.h"
#import "DBAUTHRoutes.h"
#import "DBRequestErrors.h"
#import "DBStoneBase.h"
#import "DBTransportClient.h"

@implementation DBAUTHRouteObjects

static DBRoute *DBAUTHTokenRevoke;

+ (DBRoute *)DBAUTHTokenRevoke {
  if (!DBAUTHTokenRevoke) {
    DBAUTHTokenRevoke = [[DBRoute alloc] init:@"token/revoke"
                                   namespace_:@"auth"
                                   deprecated:@NO
                                   resultType:nil
                                    errorType:nil
                                        attrs:@{
                                          @"host" : @"api",
                                          @"style" : @"rpc"
                                        }
                             arraySerialBlock:nil
                           arrayDeserialBlock:nil];
  }
  return DBAUTHTokenRevoke;
}

@end
