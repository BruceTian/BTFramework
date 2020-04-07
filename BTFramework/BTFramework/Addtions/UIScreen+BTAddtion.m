//
//  UIScreen+BTAddtion.m
//  DemoFrameWork
//
//  Created by MacBookAir on 2017/12/9.
//  Copyright © 2017年 BruceTian. All rights reserved.
//

#import "UIScreen+BTAddtion.h"

@implementation UIScreen (BTAddtion)

+ (CGFloat)bt_screenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)bt_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)bt_creenScale
{
    return [UIScreen mainScreen].scale;
}
@end
