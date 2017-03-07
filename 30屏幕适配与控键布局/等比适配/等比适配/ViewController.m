//
//  ViewController.m
//  等比适配
//
//  Created by Ivan on 16/7/2.
//  Copyright © 2016年 Ivan. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i=0; i<100; i++) {
        
        UIView *v = [[UIView alloc]initWithFrame:CGRectMake1(i%8*40, i/8*40, 36, 36)];
        v.backgroundColor = [UIColor redColor];
        [self.view addSubview:v];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
