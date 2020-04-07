//
//  UIColor+BTAddtion.m
//  DemoFrameWork
//
//  Created by MacBookAir on 2017/12/9.
//  Copyright © 2017年 BruceTian. All rights reserved.
//

#import "UIColor+BTAddtion.h"

@implementation UIColor (BTAddtion)

+ (UIColor *)bt_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue
{
    return [UIColor colorWithRed:red/ 255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
}

+ (UIColor *)bt_randomColor
{
    return [UIColor bt_colorWithRed:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(256)];
}


+ (UIColor *)bt_colorWithHexColorString:(NSString *)hexColorString{
    if ([hexColorString length] <6){//长度不合法
        return [UIColor clearColor];
    }
    NSString *tempString=[hexColorString lowercaseString];
    if ([tempString hasPrefix:@"0X"] || [tempString hasPrefix:@"0x"]){//检查开头是0x
        tempString = [tempString substringFromIndex:2];
    }
    else if ([tempString hasPrefix:@"#"]){//检查开头是#
        tempString = [tempString substringFromIndex:1];
    }
    if ([tempString length] != 6){
        return [UIColor clearColor];
    }
    //分解三种颜色的值
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    // r
    NSString *rString = [tempString substringWithRange:range];
    // g
    range.location = 2;
    NSString *gString = [tempString substringWithRange:range];
    // b
    range.location = 4;
    NSString *bString = [tempString substringWithRange:range];
    //取三种颜色值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString]scanHexInt:&r];
    [[NSScanner scannerWithString:gString]scanHexInt:&g];
    [[NSScanner scannerWithString:bString]scanHexInt:&b];
    return [UIColor colorWithRed:((float) r /255.0f)
                           green:((float) g /255.0f)
                            blue:((float) b /255.0f)
                           alpha:1.0f];
}
@end
