//
//  MyLog.m
//  BTFramework
//
//  Created by Bruce on 2020/4/3.
//  Copyright © 2020 Bruce. All rights reserved.
//

#import "MyLog.h"

@implementation MyLog

- (void)print
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSLog(@"This is print Hello world");
//    NSLog(@"AppName == %@",[NSString appName]);
}
@end
