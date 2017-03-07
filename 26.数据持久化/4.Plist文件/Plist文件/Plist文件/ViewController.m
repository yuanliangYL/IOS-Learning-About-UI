//
//  ViewController.m
//  Plist文件
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
//    把内存当中的对象（数组、字典）保存成plist文件
    NSArray *names = @[@"库里",@"汤普森",@"格林",@"伊戈达拉",@"李文斯顿"];
   [names writeToFile:@"/Users/apple/Desktop/UI/26.Plist文件/names.plist" atomically:YES];
    
//    把plist文件加载到内存中成为字典和数组
    NSString *path= [[NSBundle mainBundle]pathForResource:@"names" ofType:@"plist"];
    
    NSArray *newArray = [NSArray arrayWithContentsOfFile:path];
    
    NSLog(@"%@",newArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
