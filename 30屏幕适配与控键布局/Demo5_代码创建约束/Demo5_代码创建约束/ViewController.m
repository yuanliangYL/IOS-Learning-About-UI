//
//  ViewController.m
//  Demo5_代码创建约束
//
//  Created by tarena on 16/6/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.backgroundColor = [UIColor redColor];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.backgroundColor = [UIColor greenColor];
    
    
    //手动创建约束对象，一定要关闭AutoResizing
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    button2.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    
    
    //button1 距离 左边20
    NSLayoutConstraint *c1 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
    
     //button1 距离 上面20
    NSLayoutConstraint *c2 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
   
    //button1 的宽度 和 button2的宽度
    NSLayoutConstraint *c3 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:button2 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    //button1 的高度 为 40
    NSLayoutConstraint *c4 = [NSLayoutConstraint constraintWithItem:button1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40];
    
    [self.view addConstraint:c1];
    [self.view addConstraint:c2];
    [self.view addConstraint:c3];
    [self.view addConstraint:c4];
    
    
    //button2 的左边 距离 button1的右边间隔10
    NSLayoutConstraint *c5 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeRight multiplier:1 constant:10];
    //button2 的顶部 和 button1的顶部 相同
      NSLayoutConstraint *c6 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    
    //button2 的右边 和 self.view的右边 间隔20
    NSLayoutConstraint *c7 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:-20];
    
    //button2 的高度 和 button1 的高度相等
      NSLayoutConstraint *c8 = [NSLayoutConstraint constraintWithItem:button2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:button1 attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    [self.view addConstraint:c5];
    [self.view addConstraint:c6];
    [self.view addConstraint:c7];
    [self.view addConstraint:c8];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




