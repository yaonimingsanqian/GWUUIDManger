//
//  GWUUIDManager.m
//  demo
//
//  Created by shawn on 7/26/16.
//  Copyright © 2016 shawn. All rights reserved.
//

#import "GWUUIDManager.h"
#import "GWKeyChainManager.h"

@implementation GWUUIDManager



+(void)saveUUID:(NSString *)uuid{
    NSString *KEY_IN_KEYCHAIN = [[NSBundle mainBundle]bundleIdentifier];
    if (uuid && uuid.length > 0) {
        [GWKeyChainManager save:KEY_IN_KEYCHAIN data:uuid];
    }
}


+(NSString *)getUUID{
    NSString *KEY_IN_KEYCHAIN = [[NSBundle mainBundle]bundleIdentifier];
    //先获取keychain里面的UUID字段，看是否存在
    NSString *uuid = (NSString *)[GWKeyChainManager load:KEY_IN_KEYCHAIN];
    
    //如果不存在则为首次获取UUID，所以获取保存。
    if (!uuid || uuid.length == 0) {
        CFUUIDRef puuid = CFUUIDCreate( nil );
        
        CFStringRef uuidString = CFUUIDCreateString( nil, puuid );
        
        uuid = [NSString stringWithFormat:@"%@", uuidString];
        
        [self saveUUID:uuid];
        
        CFRelease(puuid);
        
        CFRelease(uuidString);
    }
    
    return uuid;
}



+(void)deleteUUID{
    NSString *KEY_IN_KEYCHAIN = [[NSBundle mainBundle]bundleIdentifier];
    [GWKeyChainManager delete:KEY_IN_KEYCHAIN];
}
@end
