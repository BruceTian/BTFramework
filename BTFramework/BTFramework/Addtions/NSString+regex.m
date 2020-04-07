//
//  NSString+regex.m
//  EyeCloud
//
//  Created by MacBookAir on 2018/4/26.
//  Copyright © 2018年 BruceTian. All rights reserved.
//  正则表达式

#import "NSString+regex.h"

@implementation NSString (regex)


+ (BOOL)validateEmail:(NSString *)email//验证是否是邮箱
{
    
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:email];
    
}

+ (BOOL)validatePasswd:(NSString *)passwd
{
    NSString *pwdRegex = @"^(?=.*?[a-zA-Z])(?=.*?[0-9])[a-zA-Z0-9]{10,16}$";
    
    NSPredicate *pwdTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pwdRegex];
    
    return [pwdTest evaluateWithObject:passwd];
}

@end
