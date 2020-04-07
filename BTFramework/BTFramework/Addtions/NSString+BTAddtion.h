//
//  NSString+BTAddtion.h
//  EyeCloud
//
//  Created by MacBookAir on 2018/3/29.
//  Copyright © 2018年 BruceTian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (BTAddtion)

/**
 获App版本号
 */
+ (NSString *)appVersion;


/**
 获取app名称
 */
+ (NSString *)appName;

/**
 json字符串转为字典

 @param jsonString josn字符串
 @return 结果字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

/**
 字典转json

 @param dic 字典
 @return 结果字符串
 */
+ (NSString *)dictionaryToJson:(NSDictionary *)dic;

/**
 字典转json 不带格式
 
 @param dic 字典
 @return 结果字符串
 */
+ (NSString *)dictionaryToNoPrettyJson:(NSDictionary *)dic;

/**
 获取指定时间和当前时间相差的秒数

 @param timeString 时间字符串 如 2000-09-03 20:30:45
 @return 相差的秒数 如果小于0 传入的时间小于当前时间
 */
+ (NSTimeInterval)getDifferenceInterval:(NSString *)timeString;


/**
 将日期字符串转化为 xx前

 @param timeString 时间字符串 如 2000-09-03 20:30:45
 @return 格式化后的字符串
 */
+ (NSString *)customTimeString:(NSString *)timeString;

@end
