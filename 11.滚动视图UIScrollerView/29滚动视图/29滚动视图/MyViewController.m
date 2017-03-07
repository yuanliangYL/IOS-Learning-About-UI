//
//  MyViewController.m
//  29滚动视图
//
//  Created by YuanLiang on 4/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UIScrollViewDelegate>
@property(nonatomic,weak) UIScrollView *scrollView;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"MOVE" style:UIBarButtonItemStylePlain target:self action:@selector(move:)];
//    UIBarButtonItemStylePlain字体为普通样式
    
//创建图片实例
    UIImageView *iv= [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.jpg"]];

   
//   ①创建滚动视图实例
    UIScrollView * sc = [[UIScrollView alloc]init];
    self.scrollView= sc;
    
//    为了让控制器捕获用户与滚动视图的交互，可以设置滚动器的代理为当前控制器
    sc.delegate = self;
    
//   ②设置frame可视化区域
//    sc.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);//与下句代码等价
    sc.frame = self.view.bounds;//bounds的X和Y都是0，width和height就是视图的宽高

//   ③content全部视图内容大小
//    sc.contentSize = CGSizeMake(2894, 1770);
    sc.contentSize = iv.frame.size;//全部视图内容大小等同于图片大小
    
//    ④显示图片与滚动视图
    [sc addSubview:iv];
    [self.view addSubview:sc];
}

-(void)move:(UIBarButtonItem *)item
{
//    修改滚动视图的contentOffset(视图偏移）
//    实现显示内容的变化
    self.scrollView.contentOffset = CGPointMake(1300, 300);
//    contentOffset当前正在查看的区域的左顶点距离全部内容的左顶点的偏移量（记录当前正在显示的位置）
}

#pragma mark - UIScrollViewDelegate
//任何滚动事件发生时，都会自动调用该方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
//    NSLog(@"%@",self.scrollView.contentOffset);
    NSLog(@"%@",NSStringFromCGPoint(scrollView.contentOffset));
//    NSStringFromCGPoint将结构体转成字符串输出
}
@end
