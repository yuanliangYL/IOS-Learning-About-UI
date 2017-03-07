//
//  myViewController.m
//  demo3UITabel
//
//  Created by YuanLiang on 16/4/11.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    UILabel *label =[[UILabel alloc]init];
    label.text = @"label类的属性练习,很长的一段话能不能实现换行显示END";
    label.numberOfLines = 0;//赋值为零，表示在高度限制内，能有几行显示几行
    label.font = [UIFont systemFontOfSize:30];
    label.textColor = [UIColor redColor];
    label.backgroundColor = [UIColor greenColor];
//  label.highlightedTextColor = [UIColor yellowColor];
    label.frame = CGRectMake(50, 50, 300, 300);
    label.highlighted = YES;  
    
    
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
