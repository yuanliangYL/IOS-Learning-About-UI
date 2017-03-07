//
//  ViewController.m
//  过场动画跳转页面
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *vc = [[UIViewController alloc]init];
    vc.view.backgroundColor = [UIColor blueColor];
    [self presentViewController:vc animated:NO completion:nil];
    
//    CATransition类
    CATransition *animation = [CATransition new];
    animation .type = @"cube";
    animation.duration  = 5;
    
//    注意这里发生动画的父视图是window的layer
    [[UIApplication sharedApplication].keyWindow.layer addAnimation:animation forKey:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
