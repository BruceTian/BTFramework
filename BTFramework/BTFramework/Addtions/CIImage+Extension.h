//
//  CIImage+Extension.h
//  01-生成二维码
//
//  Created by BruceTian on 15/12/25.
//  Copyright © 2015年 BruceTian. All rights reserved.
//

#import <CoreImage/CoreImage.h>
#import <UIKit/UIKit.h>

@interface CIImage (Extension)

- (UIImage *)createNonInterpolatedWithSize:(CGFloat)size;

@end
