//
//  MyViewController.m
//  05InterfaceBuild
//
//  Created by YuanLiang on 16/4/12.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"
//Interface Builder
@interface MyViewController ()//this is a extention
@property (nonatomic,weak) IBOutlet UILabel *label;
@property(nonatomic,weak)IBOutlet UIButton *button;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.backgroundColor = [UIColor blueColor];
    [self.button addTarget:self action:@selector(changeText) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.frame = CGRectMake(0, 30, 30, 30);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
  
    
    // Do any additional setup after loading the view from its nib.
}
-(void)changeText
{
    self.label.text = @"设置一";
    self.label.backgroundColor = [UIColor yellowColor];
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
