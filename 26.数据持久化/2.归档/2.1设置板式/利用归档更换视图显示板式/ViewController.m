//
//  ViewController.m
//  利用归档更换视图显示板式
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    用数组保存自定义View中的布局视图
    NSArray *subViews = self.myView.subviews;
//    将数组归档
    NSData *viewData = [NSKeyedArchiver archivedDataWithRootObject:subViews];
//    将归档文件保存到指定路径中
    [viewData writeToFile:@"/Users/apple/Desktop/UI/29.归档/views_4_4" atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
