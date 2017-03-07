//
//  MyViewController.m
//  做业2
//
//  Created by YuanLiang on 5/10/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property(nonatomic ,strong)UILabel *label;
//设置一个UILabel属性，让他可以被实例化，可以被整个类使用
//？？？为什么这里的UILabel属性的属性用strong修饰？？？
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    设置view背景色
    self.view.backgroundColor = [UIColor lightGrayColor];
//    设置label
    self.label = [[UILabel  alloc]init];
    self.label.frame = CGRectMake(80, 50, 250, 50);
    self.label.text =  @"109";
    self.label.textColor = [UIColor redColor];
    self.label.backgroundColor = [UIColor whiteColor];
    self.label.font = [UIFont systemFontOfSize:18];
    self.label.textAlignment = NSTextAlignmentCenter;
//    设置左按钮
    UIButton *leftBtn = [[UIButton alloc]init];
    leftBtn.frame = CGRectMake(50, 200, 100, 50);
    [leftBtn setTitle:@"左对齐" forState:UIControlStateNormal];
    [leftBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];;
    [leftBtn setBackgroundColor:[UIColor whiteColor]];
//    添加按钮事件响应
    [leftBtn addTarget:self action:@selector(clicktoLeftAlignment:) forControlEvents:UIControlEventTouchUpInside];
    
// 设置右按钮
    UIButton *rightBtn = [[UIButton alloc]init];
    rightBtn.frame = CGRectMake(250, 200, 100, 50);
    [rightBtn setTitle:@"右对齐" forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [rightBtn setBackgroundColor:[UIColor whiteColor]];
    [rightBtn addTarget:self action:@selector(clicktoRightAlignment:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.label];
    [self.view addSubview:leftBtn];
    [self.view addSubview:rightBtn];
    
}
-(void)clicktoLeftAlignment:(UIButton *)leftbtn
{
    self.label.textAlignment = NSTextAlignmentLeft;
}
-(void)clicktoRightAlignment:(UIButton *)rightbtn
{
    self.label.textAlignment = NSTextAlignmentRight;
}
@end
