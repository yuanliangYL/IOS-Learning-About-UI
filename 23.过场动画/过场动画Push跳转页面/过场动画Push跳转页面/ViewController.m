//
//  ViewController.m
//  过场动画Push跳转页面
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

    self.view.backgroundColor = [UIColor lightGrayColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *secView = [[UIViewController alloc]init];
    secView.view.backgroundColor = [UIColor greenColor];
    
    [self.navigationController pushViewController:secView animated:NO];
    
    CATransition *transition = [[CATransition alloc]init];
    transition.duration = 5;
    transition.type = @"cube";
    
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
}


@end
