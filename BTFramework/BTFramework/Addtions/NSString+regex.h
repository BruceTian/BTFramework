//
//  NSString+regex.h
//  EyeCloud
//
//  Created by MacBookAir on 2018/4/26.
//  Copyright © 2018年 BruceTian. All rights reserved.
// 正则表达式

#import <Foundation/Foundation.h>

@interface NSString (regex)

/**
 判断是不是合法邮箱

 @param email 输入的邮箱账号
 @return 是否符合规则
 */
+ (BOOL)validateEmail:(NSString *)email;


/**
 匹配密码 10~16位英文和数字组合

 @param passwd 输入的密码
 @return 是否符合规则
 */
+ (BOOL)validatePasswd:(NSString *)passwd;
@end
