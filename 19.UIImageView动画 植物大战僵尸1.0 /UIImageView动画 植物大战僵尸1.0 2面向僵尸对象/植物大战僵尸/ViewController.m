//
//  ViewController.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//6S:375 *667

#import "ViewController.h"
#import "ZombImageVIew.h"
#import "ZombImageViewB.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(addzomb) userInfo:nil repeats:YES];
    
}

-(void)addzomb{
    int type = arc4random() %2;
    if (type == 0) {
        ZombImageVIew *zombA = [[ZombImageVIew alloc]initWithFrame:CGRectMake(375, arc4random() % (667 - 90), 60, 90)];
        [zombA beginAnimation];
        //    将视图添加当前视图
        [self.view addSubview:zombA];
    }
    else{
        ZombImageViewB *zombB = [[ZombImageViewB alloc]initWithFrame:CGRectMake(375, arc4random() % (667 - 90), 60, 90)];
        [zombB beginAnimation];
        //    将视图添加当前视图
        [self.view addSubview:zombB];
    }
}

@end
