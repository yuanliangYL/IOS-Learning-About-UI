//
//  ViewController.m
//  1.2利用归档更换视图显示板式
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,assign)int circulationCount;
@property (weak, nonatomic) IBOutlet UIView *myView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//   用NSBundle获取文件的动态全路径
    NSString *path = [[NSBundle mainBundle]pathForResource:@"views_4_0" ofType:@""];
    NSLog(@"%@",path);
    
// 通过路径找到归档文件
    NSData *data = [NSData dataWithContentsOfFile:path];
    
//    反归档之前保存的Views数组
//    这里反归档出视图数组，只是希望得到视图的位置frame参数，利用这个参数来设置图片的位置
    NSArray *views = [NSKeyedUnarchiver unarchiveObjectWithData:data];
  
//    遍历数组中的每一个视图
    for (int i = 0; i < views.count; i++) {
//        获取数组中第i个视图
        UIView *v = views[i];
//        创建于对应视图同等位置大小的ImageView
        UIImageView *iv = [[UIImageView alloc]initWithFrame:v.frame];
        iv.image = [UIImage imageNamed:[NSString stringWithFormat:@"0%d.jpg",i + 1]];
        
//设置图片显示模式
       iv .contentMode = UIViewContentModeScaleAspectFill ;
        
//图片边缘裁剪
        iv.clipsToBounds = YES;
//将ImageView添加到当前控制器的View中
        [self.myView addSubview:iv];
    }
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(imageMoveAction) userInfo:nil repeats:YES];
    
}

-(void)imageMoveAction{
//    设置一个数记录循环次数
    self.circulationCount++;
//   取余反复得到指定的文件名 得到文件名
    NSString *viewsName = [NSString stringWithFormat:@"views_4_%d",self.circulationCount%5];
//    得到指定文件名的路径
    NSString *path = [[NSBundle mainBundle]pathForResource:viewsName ofType:@""];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    
//    反归档
    NSArray *views = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
//    得到当前界面显示的四个固定的图片(前面在myView添加的是UIImageView视图)
    NSArray *imageView = self.myView.subviews;
    
//   循环遍历：根据每一个View的位置来设置图片的位置（✨重点理解这个逻辑✨）
    for (int i = 0; i < views.count; i++) {
//        视图中第i个图片
        UIImageView *iv = imageView[i];
        
        UIView *view = views[i];
        [UIView animateWithDuration:.7 animations:^{
            iv.frame = view.frame;
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
