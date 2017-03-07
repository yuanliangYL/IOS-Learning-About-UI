//
//  ViewController.m
//  Masonry测试
//
//  Created by tarena on 16/7/4.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *v = [UIView new];
    v.backgroundColor = [UIColor redColor];
    [self.view addSubview:v];
    
    
 
//  1.  添加约束的方法    ********************
    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        //上
//        make.top.equalTo(self.view).offset(10);
////        左
//        make.left.equalTo(self.view).offset(10);
//        //下
//        make.bottom.equalTo(self.view).offset(-10);
////        右
//        make.right.equalTo(self.view).offset(-10);
        
        
//        或者
           UIEdgeInsets inset = UIEdgeInsetsMake(10, 10, 10, 10);
////       添加四个边的约束
        make.edges.equalTo(self.view).insets(inset);
    }];
    
//    2.界面中添加显示到中间的控件 ********************
    UIView *v2 = [UIView new];
    
    v2.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:v2];
    
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
//        设置中心点的约束
        make.center.equalTo(self.view);
        
//        设置大小
//        make.width.mas_equalTo(@(100));
//        make.height.mas_equalTo(@(200));
        //或者
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    
//    3.两个控件高度固定相等 间距相等 宽度自动改变
    
    UIView *leftView = [UIView new];
    leftView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:leftView];
    
    
    UIView *rightView = [UIView new];
    rightView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:rightView];
    
    
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.left.equalTo(self.view).offset(10);
        make.height.mas_equalTo(@(100));
        make.width.equalTo(rightView);
        //添加和rightView的间距
        make.right.mas_equalTo(rightView.mas_left).with.offset(-10);
        
        
    }];
    
    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self.view).offset(20);
        make.left.mas_equalTo(leftView.mas_right).with.offset(10);
        make.height.equalTo(leftView);
        
        make.right.equalTo(self.view).offset(-10);
        
        make.width.equalTo(leftView);
        
    }];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
