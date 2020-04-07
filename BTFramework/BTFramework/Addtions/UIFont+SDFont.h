//
//  UIFont+SDFont.h
//  PrizeClaw
//
//  Created by shansander on 2017/12/6.
//  Copyright © 2017年 shansander. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (SDFont)

+ (UIFont *)autoFontWithPX:(CGFloat)px;

+ (UIFont *)autoBoldFontWithPX:(CGFloat)px;

+ (UIFont *)autoMediumFontWithPX:(CGFloat)px;


+ (CGFloat)newFont:(CGFloat)px;

@end
