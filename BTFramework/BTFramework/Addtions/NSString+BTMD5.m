//
//  NSString+BTMD5.m
//  EyeCloud
//
//  Created by MacBookAir on 2018/9/20.
//  Copyright © 2018年 BruceTian. All rights reserved.
//

#import "NSString+BTMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (BTMD5)

+ (NSString *) md5:(NSString *)originStr
{
    
    const char *cStr = [originStr UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, strlen(cStr), result); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
    
}
@end