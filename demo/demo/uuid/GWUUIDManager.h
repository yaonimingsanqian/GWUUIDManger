//
//  GWUUIDManager.h
//  demo
//
//  Created by shawn on 7/26/16.
//  Copyright © 2016 shawn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GWUUIDManager : NSObject

+(void)saveUUID:(NSString *)uuid;
+(NSString *)getUUID;
+(void)deleteUUID;

@end
