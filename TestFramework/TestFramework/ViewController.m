//
//  ViewController.m
//  TestFramework
//
//  Created by Bruce on 2020/4/3.
//  Copyright © 2020 Bruce. All rights reserved.
//

#import "ViewController.h"
#import <BTFramework/BTFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MyLog * myLog = [[MyLog alloc] init];
    [myLog print];
    
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    [HttpTool get:@"https://www.baidu.com" parameter:params success:^(id  _Nonnull responseObject) {
        
    } faliure:^(NSError * _Nonnull error) {
        
    }];
}


@end
