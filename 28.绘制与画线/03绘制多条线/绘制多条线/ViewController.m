//
//  ViewController.m
//  绘制多条线
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "DrawLineView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DrawLineView *dv = [[DrawLineView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:dv];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
