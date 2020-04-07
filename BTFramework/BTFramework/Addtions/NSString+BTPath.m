//
//  NSString+BTPath.m
//  EyeCloud
//
//  Created by MacBookAir on 2018/4/20.
//  Copyright © 2018年 BruceTian. All rights reserved.
//

#import "NSString+BTPath.h"

@implementation NSString (BTPath)

- (NSString *)bt_appendDocumentDir {
    NSString *dir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    return [dir stringByAppendingPathComponent:self];
}

- (NSString *)bt_appendCacheDir {
    NSString *dir = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    
    return [dir stringByAppendingPathComponent:self];
}

- (NSString *)bt_appendTempDir {
    NSString *dir = NSTemporaryDirectory();
    
    return [dir stringByAppendingPathComponent:self];
}
@end
