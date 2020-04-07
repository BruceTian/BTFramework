//
//  UIFont+SDFont.m
//  PrizeClaw
//
//  Created by shansander on 2017/12/6.
//  Copyright © 2017年 shansander. All rights reserved.
//

#import "UIFont+SDFont.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation UIFont (SDFont)

+ (UIFont *)autoFontWithPX:(CGFloat)px{
    return [UIFont systemFontOfSize:[self newFont:px]];
}

+ (UIFont *)autoBoldFontWithPX:(CGFloat)px{
    //    return [UIFont boldSystemFontOfSize:[self newFont:px]];
    
    if (@available(ios 8.2, *)) {
        return [UIFont systemFontOfSize:[self newFont:px] weight:UIFontWeightBold];
    }else{
        return [UIFont boldSystemFontOfSize:[self newFont:px]];
    }
}
+ (UIFont *)autoMediumFontWithPX:(CGFloat)px{
    //    return [UIFont boldSystemFontOfSize:[self newFont:px]];
    
    if (@available(ios 8.2, *)) {
        return [UIFont systemFontOfSize:[self newFont:px] weight:UIFontWeightMedium];
    }else{
        return [UIFont boldSystemFontOfSize:[self newFont:px]];
    }
}

+ (CGFloat)newFont:(CGFloat)px{
    CGFloat f = px/2;
    if (SCREEN_WIDTH<375) {
        f-=2;
    }else if (SCREEN_WIDTH>375){
        f+=1;
    }
    return f;
}

@end
