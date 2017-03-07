//
//  ViewController.m
//  Layer
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    iv.image = [UIImage imageNamed:@"08.jpg"];
    [self.view addSubview:iv];
//    边框颜色
    iv.layer.borderColor = [UIColor redColor].CGColor;
//    边框粗细
    iv.layer.borderWidth = 2;
//    圆角
//    iv.layer.cornerRadius = 15;
//    内切圆显示
    iv.layer.cornerRadius = iv.bounds.size.height / 2;
//    让超出圆角的位置删除,实现圆角
    iv .layer.masksToBounds = YES;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
