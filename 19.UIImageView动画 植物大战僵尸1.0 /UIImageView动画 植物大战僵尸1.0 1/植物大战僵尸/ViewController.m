//
//  ViewController.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//6S:375 *667

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    设置ImageView实例
    UIImageView *zombIV = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width, 200, 60, 90)];
//    加载图片
    UIImage *zombImage = [UIImage imageNamed:@"zomb_7"];
//    将视图添加当前视图
    [self.view addSubview:zombIV];
    
    
    float w = zombImage.size.width / 9;
    NSMutableArray *allImages =[NSMutableArray array];
    
//    利用for循环取出大图片中不同动作的小图片
    for (int i = 0; i < 9; i++) {
//    图片截取方法：获取CGImage图片
        CGImageRef subImage = CGImageCreateWithImageInRect(zombImage.CGImage, CGRectMake(w * i, 0, w, zombImage.size.height));
        
//        将截取的图片转换成UIImage图片
        UIImage *image = [UIImage imageWithCGImage:subImage];
        
//        将获取的图片放到数组中
        [allImages addObject:image];
        
//        释放CGImage图片（非OC要自己释放）
        CGImageRelease(subImage);
    }
    
//    动画相关设置
    [zombIV setAnimationImages:allImages];
    [zombIV setAnimationDuration:.5];
    [zombIV setAnimationRepeatCount:100];
    [zombIV startAnimating];
    
    
//    移动设置
    [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(moveAction:) userInfo:zombIV repeats:YES];
}


-(void)moveAction:(NSTimer *)timer
{
//    更改中心点的X轴
    UIImageView *zombIV = timer.userInfo;
    zombIV.center = CGPointMake(zombIV.center.x - 10, zombIV.center.y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
