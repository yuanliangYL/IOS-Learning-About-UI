//
//  MyViewController.m
//  Demo2_滚动视图练习
//
//  Created by tarena on 16/5/18.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController () <UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIPageControl *pageControl;
@end

@implementation MyViewController

//scrollView 的 代理方法， 该方法在scrollView 滑动时 会 调用
-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    //round 计算 四舍五入后的值
    //计算 scroView 当前显示的是第几个界面
    NSInteger pageNum = round(self.scrollView.contentOffset.x / self.scrollView.frame.size.width);
    //设置 pageControl 当前是第几个点被 选中
    self.pageControl.currentPage = pageNum;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建 滚动视图
    [self configScrollView];
    //设置 pageControl
    [self configPageControl];
}
-(void)configPageControl {
    self.pageControl = [[UIPageControl alloc]init];
    self.pageControl.frame = CGRectMake(0, self.view.frame.size.height - 20 - 40, self.view.frame.size.width, 40);
    //设置一共有几个点
    self.pageControl.numberOfPages = 4;
    //设置当前选中的 是 第几个点
    self.pageControl.currentPage = 0;
    //设置没有选中点 的颜色
    self.pageControl.pageIndicatorTintColor = [UIColor redColor];
    //设置当前选中的 点 的颜色
    self.pageControl.currentPageIndicatorTintColor = [UIColor greenColor];
    //关闭 pageControl 的交互
    self.pageControl.userInteractionEnabled = NO;
    
    [self.view addSubview:self.pageControl];
}

-(void)configScrollView{
    //创建 滚动视图
    self.scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    //设置 scrollView 的代理人 为 当前控制器
    self.scrollView.delegate = self;
    //大小 4个 屏幕宽
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, self.view.frame.size.height);
    
    //循环创建4个 imageView 并添加到 scrollView中
    for (int i = 0; i < 4; i++) {
        UIImageView *imageView = [[UIImageView alloc]init];
        //获取当次 循环 所需的图片名称
        NSString *imageName = [NSString stringWithFormat:@"welcome%d",i+1];
        imageView.image = [UIImage imageNamed:imageName];
        //设置 imageView 的 frame
        imageView.frame = CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
        //将创建好的 imageView 添加到 scrollview 上
        [self.scrollView addSubview:imageView];
        
        //在创建 最后一个 imageView 时，创建一个Button加到imageView上
        if (i == 3) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
            button.frame = CGRectMake((imageView.frame.size.width - 60) / 2, (imageView.frame.size.height - 30) / 2, 60, 30);
            [button setTitle:@"进入程序" forState:UIControlStateNormal];
//            button.backgroundColor = [UIColor orangeColor];
            //给button 添加点击 事件
            [button addTarget:self action:@selector(goLogin:) forControlEvents:UIControlEventTouchUpInside];
            //把最后一个imageView 的 交互打开
            imageView.userInteractionEnabled = YES;
            
            [imageView addSubview:button];
        }
    }
    //去掉水平方向 和 垂直方向滑动条
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    //关闭弹性
    self.scrollView.bounces = NO;
    
    //设置 scrollView 整页滑动
    self.scrollView.pagingEnabled = YES;
    
    //将 scrollView 添加到 self.view 上
    [self.view addSubview:self.scrollView];
}

-(void)goLogin:(UIButton*)sender {
    
    //该界面 有一个没有 源头的 segue 但是可以调转到 loginVC ，所以我们可以通过 segue 进行跳转
    [self performSegueWithIdentifier:@"goLoginVC" sender:nil];
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
