//
//  ViewController.m
//  雪花动画
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(addSnow:) userInfo:nil repeats:YES];
}

-(void)addSnow:(NSTimer *)sender{
//    随机雪花大小
    int size = arc4random() %11 + 5;
    UIImageView *snow = [[UIImageView alloc]initWithFrame:CGRectMake(arc4random() %(375- size), -size, size, size)];
//随机雪花种类
    int type = arc4random() %2 + 1;
    snow.image   = [UIImage imageNamed:[NSString stringWithFormat:@"%d",type]];
    [self.view addSubview:snow];
    
//  随机雪花落下时间
    int time = arc4random() % 5+ 2;
    [UIView animateWithDuration:time delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        
        snow.center = CGPointMake(snow.center.x, 667);
        
//加上旋转
        int angle = arc4random()%360;
        snow.transform = CGAffineTransformRotate(snow.transform, M_PI/180.0*angle);
        
    } completion:^(BOOL finished) {
//        逐渐消淡
        [UIView animateWithDuration:2 animations:^{
            snow.alpha = 0;
            
            
        }completion:^(BOOL finished) {
//            移除雪花
            [snow removeFromSuperview];
        }];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
