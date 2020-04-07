//
//  UIColor+BTAddtion.h
//  DemoFrameWork
//
//  Created by MacBookAir on 2017/12/9.
//  Copyright © 2017年 BruceTian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (BTAddtion)

/**
 根据RGB颜色值生成相应的颜色
 */
+ (UIColor *)bt_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue;


/**
 *  将16进制颜色转为UIColor对象
 *
 *  @param hexColorString 十六进制颜色字符串
 *
 *  @return UIColor对象
 */
+ (UIColor *)bt_colorWithHexColorString:(NSString *)hexColorString;


/**
 生成随机颜色
 */
+ (UIColor *)bt_randomColor;

@end
