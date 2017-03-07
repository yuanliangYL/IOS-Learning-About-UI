//
//  MyViewController.m
//  定时器NSTimer
//
//  Created by YuanLiang on 5/25/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"
#define SPEED 10;
@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// 方式1：   scheduledTimerWithTimeInterval创建并自动执行定时器
    [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(move1:) userInfo:nil repeats:YES];
 
// 方式2：   timerWithTimeInterval如果定时器通过timer工厂方法创建的，我们必须手动将该定时器添加到程序的主循环
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.03 target:self selector:@selector(move2:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
    
}
-(void)move1:(NSTimer *)sender{
   [self moveImage:self.imageView1 withSpeed:3];
}
-(void)move2:(NSTimer *)sender{
    [self moveImage:self.imageView2 withSpeed:5];
}
//封装移动方法
-(void)moveImage:(UIImageView *)imageView withSpeed:(CGFloat)speed
{
    CGRect frame = imageView.frame;
    frame.origin.y += speed;
    imageView.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
