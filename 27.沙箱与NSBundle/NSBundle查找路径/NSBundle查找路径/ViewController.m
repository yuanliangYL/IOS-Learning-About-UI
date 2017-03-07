//
//  ViewController.m
//  NSBundle查找路径
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
// 

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    获取当前bundle对应的资源包的路径
    NSString *path = [[NSBundle mainBundle]bundlePath];
    NSLog(@"%@",path);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
