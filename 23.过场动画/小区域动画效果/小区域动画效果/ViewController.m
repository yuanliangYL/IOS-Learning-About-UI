//
//  ViewController.m
//  小区域动画效果
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIView *customView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customView = [[UIView alloc]initWithFrame:CGRectMake(50, 100, 200, 300)];
    [self.view addSubview:self.customView];
    
    UIImageView *iv1 = [[UIImageView alloc]initWithFrame:CGRectMake(50, 100, 200, 300)];
    
    iv1.backgroundColor = [UIColor redColor];
    
    [self.customView addSubview:iv1];
    
    
    UIImageView *iv2 = [[UIImageView  alloc]initWithFrame:CGRectMake(50, 100, 200, 300)];
    
    iv2.backgroundColor = [UIColor blueColor];
    
    [self.customView addSubview:iv2];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSLog(@"%@",self.view.subviews);
    
//    *  @"cube"                     立方体翻滚效果
//    *  @"moveIn"                   新视图移到旧视图上面
//    *  @"reveal"                   显露效果(将旧视图移开,显示下面的新视图)
//    *  @"fade"                     交叉淡化过渡(不支持过渡方向)             (默认为此效果)
//    *  @"pageCurl"                 向上翻一页
//    *  @"pageUnCurl"               向下翻一页
//    *  @"suckEffect"               收缩效果，类似系统最小化窗口时的神奇效果(不支持过渡方向)
//    *  @"rippleEffect"             滴水效果,(不支持过渡方向)
//    *  @"oglFlip"                  上下左右翻转效果
//    *  @"rotate"                   旋转效果
//    *  @"push"
//    *  @"cameraIrisHollowOpen"     相机镜头打开效果(不支持过渡方向)
//    *  @"cameraIrisHollowClose"    相机镜头关上效果(不支持过渡方向)
    CATransition *animation = [CATransition new];
    animation.duration = 5;
    animation.type = @"cameraIrisHollowOpen";

    [self.customView.layer addAnimation:animation forKey:nil];
    
    
    [self.customView exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    
}

@end
