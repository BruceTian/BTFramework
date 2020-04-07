//
//  UIBarButtonItem+BTAddtion.m
//  DemoFrameWork
//
//  Created by MacBookAir on 2017/12/9.
//  Copyright © 2017年 BruceTian. All rights reserved.
//

#import "UIBarButtonItem+BTAddtion.h"
#import "UIButton+BTAddtion.h"

@implementation UIBarButtonItem (BTAddtion)

+ (instancetype)itemWithTitle:(NSString *)title fontSize:(NSInteger)fontSize target:(id)target action:(SEL)action isBack:(BOOL)isBack
{
    UIButton * btn = [UIButton bt_textButton:title fontSize:fontSize normalColor:[UIColor darkGrayColor] highlightedColor:[UIColor darkGrayColor]];
    if (isBack) {
        NSString * imageName = @"shoping_back";
        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_highlighted",imageName]] forState:UIControlStateHighlighted];
        [btn sizeToFit];
    }
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return  [[UIBarButtonItem alloc]initWithCustomView:btn];
}
@end
