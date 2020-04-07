//
//  NSString+BTMD5.h
//  EyeCloud
//
//  Created by MacBookAir on 2018/9/20.
//  Copyright © 2018年 BruceTian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (BTMD5)

/**
 MD5加密字符串

 @param originStr 要加密的字符
 @return 加密后的字符
 */
+ (NSString *) md5:(NSString *)originStr;
@end

NS_ASSUME_NONNULL_END
