//
//  NSString+BTAddtion.m
//  EyeCloud
//
//  Created by MacBookAir on 2018/3/29.
//  Copyright © 2018年 BruceTian. All rights reserved.
//

#import "NSString+BTAddtion.h"

@implementation NSString (BTAddtion)

/**
 获App版本号
 */
+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}


/**
 获取app名称
 */
+ (NSString *)appName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}


/// json字符串转为字典
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    
    if (jsonString == nil) {
        
        return nil;
        
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSError *err;
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    
    if(err) {
        NSLog(@"json解析失败：%@",err);
        
        return nil;
    }
    
    return dic;
    
}

///字典转json
+ (NSString *)dictionaryToJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

///字典转json 不带格式
+ (NSString *)dictionaryToNoPrettyJson:(NSDictionary *)dic
{
    NSError *parseError = nil;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:kNilOptions error:&parseError];
    
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

///获取指定时间和当前时间相差的秒数
+ (NSTimeInterval)getDifferenceInterval:(NSString *)timeString
{
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate * date = [formatter dateFromString:timeString];
    //计算和当前时间相差的秒数
    NSTimeInterval interval = [date timeIntervalSinceNow];
    return interval;
}

/// 将日期字符串转化为 xx前
+ (NSString *)customTimeString:(NSString *)timeString
{
//    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
//    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    NSDate * date = [formatter dateFromString:timeString];
    //计算和当前时间相差的秒数
    NSTimeInterval interval = -[self getDifferenceInterval:timeString];
   
    NSInteger daySecond = 60 * 60 * 24;
    NSInteger days = interval / daySecond;
    NSInteger hour = interval / 3600;
    NSInteger mins = interval / 60;
    if (days > 0) {
        if (days < 3) {
            return [NSString stringWithFormat:@"%zd天前",days];
        }else
        {
            return [timeString substringToIndex:10];
        }
    }
    
    if (hour > 0) {
        return [NSString stringWithFormat:@"%zd小时前",hour];
    }
    if (mins > 0) {
        return [NSString stringWithFormat:@"%zd分钟前",mins];
    }
    if (interval < 60) {
        return @"刚刚";
    }
    return nil;
}

@end
