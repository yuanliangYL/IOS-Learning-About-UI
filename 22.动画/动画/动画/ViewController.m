//
//  ViewController.m
//  动画:bounds frame center alpha backgroundColor transform
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIImageView *myIV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myIV = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.myIV.image = [UIImage imageNamed:@"a.jpg"];
    [self.view addSubview:self.myIV];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    动画方法一：
//    [UIView animateWithDuration:5 animations:^{
//        self.myIV.center = CGPointMake(300, 500);
//        self.myIV.transform = CGAffineTransformScale(self.myIV.transform, 2, 2);
//        self.myIV.transform = CGAffineTransformRotate(self.myIV.transform, M_PI/2);
//    }];
    
//    在方式一下的连续动画
//        [UIView animateWithDuration:15 animations:^{
//            self.myIV.center = CGPointMake(300, 500);
//            self.myIV.transform = CGAffineTransformScale(self.myIV.transform, 2, 2);
//            self.myIV.transform = CGAffineTransformRotate(self.myIV.transform, M_PI/2);
//        }completion:^(BOOL finished) {
////            这里要重新开始新的动画设置
//            [UIView animateWithDuration:2 animations:^{
//                self.myIV.center = CGPointMake(100, 500);
//                self.myIV.transform = CGAffineTransformScale(self.myIV.transform, .5, .5);
//                self.myIV.transform = CGAffineTransformRotate(self.myIV.transform, M_PI/2);
//                  self.myIV.alpha = .5;
//            } completion:^(BOOL finished) {
//                [self.myIV removeFromSuperview];
//            }];
//        }];
    
    
//    动画方法二
/*   参数：delay： 延迟多久执行 
     参数：options: 图片移动速度
     UIViewAnimationOptionCurveEaseInOut--慢进慢出
      UIViewAnimationOptionCurveEaseIn——渐渐快
      UIViewAnimationOptionCurveEaseOut——渐渐慢
      UIViewAnimationOptionCurveLinear*/
    [UIView animateWithDuration:4 delay:2 options:UIViewAnimationOptionCurveEaseOut  animations:^{
        self.myIV.center = CGPointMake(300, 500);
        self.myIV.transform = CGAffineTransformScale(self.myIV.transform, 2, 2);
        self.myIV.transform = CGAffineTransformRotate(self.myIV.transform, M_PI/2);
        self.myIV.alpha = .5;
    } completion:^(BOOL finished) {
        [self.myIV removeFromSuperview];
        NSLog(@"动画做完了");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
