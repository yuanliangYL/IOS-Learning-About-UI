//
//  ViewController.m
//  过场动画
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UIScrollView *sv;
@property(nonatomic,assign)int index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //    创建滚动视图实例
    self.sv = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //    将视图添加到当前视图下
    [self.view addSubview:self.sv];
    //    利用for循环给滚动视图添加图片
    for ( int i = 0; i < 9; i++) {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(i * 375, 0, 375, 667)];
        iv.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d",i + 1]];
        [self.sv addSubview: iv];
        
        if (i%2==1) {
            iv.layer.cornerRadius = 40;
            iv.layer.masksToBounds = YES;
        }
   }
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(changeImage:) userInfo:nil repeats:YES];
    
}
-(void)changeImage:(NSTimer *)sender{
//    定时实现滚动视图偏移量
    [self.sv setContentOffset:CGPointMake(++self.index%9*375, 0)];
//    创建动画实例
    CATransition *animation = [CATransition new];
    animation.duration = 1;
    
//    设置动画类型fade', `moveIn', `push' ,`reveal'
    
/*    特效动画类型
 @"pageUnCurl",：页面平铺
 @"pageCurl",：边角翻页
 @"rippleEffect",：波纹效果
 @"suckEffect",：左上角收缩
 @"cube",:立体翻滚
 @"oglFilip"：原地渐变替代
*/
    
    NSArray *types = @[@"fade",@"moveIn",@"push",@"reveal", @"pageUnCurl", @"pageCurl",@"rippleEffect",@"suckEffect",@"cube",@"oglFilip"];
    animation.type =  types[arc4random() % types.count];
    
//    设置动画方向 fromLeft', `fromRight', `fromTop',`fromBottom'
    NSArray *subtypes = @[@"fromLeft",@"fromRight",@"fromTop",@"fromBottom"];
    animation.subtype  = subtypes[arc4random() %subtypes.count];
    
//    把动画添加到 做动画的两个控键的父视图上
    [self.sv.layer addAnimation:animation forKey:nil];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
