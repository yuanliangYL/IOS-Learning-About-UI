//
//  ViewController.m
//  NSUserDefault
//
//  Created by tarena on 16/6/3.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    创建用户偏好实例（NSUserdefault）
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
//    根据key把原来存的对应偏好设置的值取出来（如果第一次取，默认为0）
    NSInteger runCount = [ud  integerForKey:@"runCount"];
    NSLog(@"%zd",runCount);
//  floatForKey:
//  stringForKey:
//  doubleForKey:

    [ud setInteger:runCount+1 forKey:@"runCount"];
     NSLog(@"%zd",runCount);
//    setInteger
//    setObject:
//    setURL:
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
