//
//  UIBarButtonItem+BTAddtion.h
//  DemoFrameWork
//
//  Created by MacBookAir on 2017/12/9.
//  Copyright © 2017年 BruceTian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BTAddtion)

/**
 创建一个UIBarButtionItem

 @param title title
 @param fontSize 字体大小
 @param target target
 @param action action
 @param isBack 是否是返回按钮
 @return UIBarButtionItem
 */
+ (instancetype)itemWithTitle:(NSString *)title fontSize:(NSInteger)fontSize target:(id)target action:(SEL)action isBack:(BOOL)isBack;
@end
