//
//  ViewController.m
//  归档
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
/**********************准备工作**************************/
//    创建
//    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//    v.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:v];
//   
////    把归档对象转data
////    Archiver ：['ɑ:kaiv]  n.归档 存储服务器，压缩程式
//    NSData *data  = [NSKeyedArchiver archivedDataWithRootObject:v];
//    
//    [data writeToFile:@"/Users/apple/Desktop/UI/29.归档/UIView.arch" atomically:YES];
    
/**********************反归档**************************/
//    先将二进制数据加载出来
    NSData *data = [NSData dataWithContentsOfFile:@"/Users/apple/Desktop/UI/29.归档/UIView.arch"];
//    反归档，把data转回uiview对象
    UIView * view = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    [self.view addSubview:view];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
