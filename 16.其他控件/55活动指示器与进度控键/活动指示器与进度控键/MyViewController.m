//
//  MyViewController.m
//  活动指示器与进度控键
//
//  Created by YuanLiang on 5/25/16.
//  Copyright © 2016 Tarena. All rights reserved.
//UIActivityIndicatorView实例的关键属性-isAnimating;和方法- startAnimating;(void)stopAnimating;


#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property(nonatomic,strong)NSTimer *timer;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.progressView.progress = 0;
   
    
}
- (IBAction)clickToChangeActivityIndicator:(UIButton *)sender {
//    根据活动指示器的状态来判断点击事件
    if (self.activityIndicator.isAnimating) {
        [self.activityIndicator stopAnimating];
    }else{
        [self.activityIndicator startAnimating];
    }
//创建定时器实例
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(loading:) userInfo:nil repeats:YES];
    
}

//float f = 0.0;
-(void)loading:(NSTimer*)sender {
//    f += 0.1;
//浮点数 不能使用 == 进行比较，因为浮点数的精度问题, 指定判断f是否非常接近1，如果两个数差值<0.00001, 我们就认为他俩是相等
    //    if (1 - f < 0.00001) {
    NSLog(@"f == 1");
//    }
    
//    进度视图每隔一段时间加0.05
    self.progressView.progress += 0.05;
//    当进度视图达到最大值时
    if (self.progressView.progress == 1)//zhe
    {
//        活动指示器停止动画
        [self.activityIndicator stopAnimating];
//        手动停止定时器，同时会销毁定时器实例
        [self.timer invalidate];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
