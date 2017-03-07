//
//  ViewController.m
//  Masonry练习
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
    
    UIView *v1 = [UIView new];
    v1.backgroundColor = [UIColor redColor];
    [self.view addSubview:v1];
    UIView *v2 = [UIView new];
    v2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:v2];
    UIView *v3 = [UIView new];
    v3.backgroundColor = [UIColor redColor];
    [self.view addSubview:v3];
    
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.view).offset(20);
        make.height.mas_equalTo(@(100));
        make.width.equalTo(v3);
        make.right.mas_equalTo(v2.mas_left).with.offset(-10);
        
    }];
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.left.mas_equalTo(v1.mas_right).with.offset(10);
        
        make.height.mas_equalTo(@(150));
        make.width.equalTo(@(100));
        
        
        make.right.mas_equalTo(v3.mas_left).with.offset(-10);
        
    }];
    [v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
        
        make.left.mas_equalTo(v2.mas_right).with.offset(10);
        
        make.height.mas_equalTo(@(100));
        make.width.equalTo(v1);
        
        
       
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
