//
//  NSString+BTPath.h
//  EyeCloud
//
//  Created by MacBookAir on 2018/4/20.
//  Copyright © 2018年 BruceTian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (BTPath)

/// 给当前文件追加文档路径
- (NSString *)bt_appendDocumentDir;

/// 给当前文件追加缓存路径
- (NSString *)bt_appendCacheDir;

/// 给当前文件追加临时路径
- (NSString *)bt_appendTempDir;

@end
