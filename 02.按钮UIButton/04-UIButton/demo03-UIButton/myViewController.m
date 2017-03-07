//
//  myViewController.m
//  demo03-UIButton
//
//  Created by YuanLiang on 16/4/11.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "myViewController.h"

@interface myViewController ()
@property (nonatomic,strong)UILabel * label;
//此属性的作用域范围是，在类内的任何一个方法中
//都能访问，并且使用 self.label这个名字来访问
@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    UIButton *button = [[UIButton alloc]init];
    
    UILabel *label = [[UILabel alloc]init];
    self.label = label;
    label.frame = CGRectMake(50, 50, 200, 100);
    label.text = @"hello,world";
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
    

    UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    button.frame = CGRectMake(100, 150, 200, 50);
    [button setTitle:@"正常状态" forState:UIControlStateNormal];
    [button setTitle:@"高亮状态" forState:UIControlStateHighlighted];
    button.backgroundColor = [UIColor lightGrayColor];

    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];//时间响应
    
    [self.view addSubview:button];
    
    
}
-(void)clickButton:(UIButton *)btu
{
   self.label.text = @"你好，世界！";
}

- (void)didReceiveMemoryWarning//一旦收到内存警告，该方法被执行
{
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
