//
//  MyScrollViewController.m
//  scrollView
//
//  Created by YuanLiang on 5/18/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyScrollViewController.h"
#import "LoginViewController.h"
@interface MyScrollViewController ()<UIScrollViewDelegate>
@property(nonatomic,weak)UIScrollView *scrollView;
//@property(nonatomic,assign)NSInteger index;//默认为0
@property(nonatomic,strong)UIPageControl *pagecontroller;
@end

@implementation MyScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self setUpNavigationItem];
    [self setUpScrollView];
    [self setUpPageController];
}

-(void)setUpScrollView
{
    UIScrollView *sc = [[UIScrollView alloc]init];
    sc.frame = self.view.frame;
    sc.contentSize = CGSizeMake(sc.frame.size.width * 4 ,sc.frame.size.height);
    sc.pagingEnabled = YES;
    sc.bounces = NO;
    sc.showsVerticalScrollIndicator = NO;
    sc.showsHorizontalScrollIndicator = NO;
//    修改导航与滚动的重合覆盖部分
//    way1:自动
    self.automaticallyAdjustsScrollViewInsets = NO;
//    way2:边距调整
//    sc.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
    self.scrollView = sc;
    sc.delegate = self;
    
    for (NSInteger i = 0; i < 4; i ++) {
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(i * sc.frame.size.width, 0, sc.frame.size.width, sc.frame.size.height)];
        NSString *imageStr =  [NSString stringWithFormat:@"welcome%ld",i+1];
        iv.image = [UIImage imageNamed:imageStr];
        [sc addSubview:iv];
        if (i == 3) {
            [self setUpEnterbtn:iv];
        }
    }
    [self.view addSubview:sc];
}

-(void)setUpEnterbtn:(UIImageView *)iv
{
    iv.userInteractionEnabled = YES;
    
    UIButton * btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(0.5 *(iv.frame.size.width - 100), iv.frame.size.height * 0.6, 100, 40);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"Enter APP" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(enterTheApp) forControlEvents:UIControlEventTouchUpInside];
    [iv addSubview:btn];
}

-(void)enterTheApp{
    LoginViewController *lvc = [[LoginViewController alloc]init];
//    [self presentViewController:lvc animated:YES completion:nil];
    UIApplication *app = [UIApplication sharedApplication];
    app.keyWindow.rootViewController = lvc;
}

-(void)setUpPageController
{
    self.pagecontroller = [[UIPageControl alloc]init];
    self.pagecontroller.frame = CGRectMake(0, self.view.frame.size.height - 20 - 40, self.view.frame.size.width, 40);
    self.pagecontroller.numberOfPages = 4;
    self.pagecontroller.currentPage = 0;
    self.pagecontroller.pageIndicatorTintColor = [UIColor redColor];
    self.pagecontroller.currentPageIndicatorTintColor = [UIColor greenColor];
    self.pagecontroller.userInteractionEnabled = YES;
    [self.view addSubview:self.pagecontroller];
}

#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSInteger pageNum = round(self.scrollView.contentOffset.x / self.scrollView.frame.size.width);
    
    self.pagecontroller.currentPage = pageNum;
}

//-(void)setUpNavigationItem
//{
//    self.navigationItem.title = @"Image";
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"上一张" style:UIBarButtonItemStylePlain target:self action:@selector(clickToLast:)];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"下一张" style:UIBarButtonItemStylePlain target:self action:@selector(clickToNext:)];
//}
//-(void)clickToNext:(UIBarButtonItem *)sender{
//    if (self.index == 3) {
//        return;
//    }
//    self.index ++;
//    [self setScrollViewOffset:self.index];
//}
//
//-(void)clickToLast:(UIBarButtonItem *)sender{
//    if (self.index == 0) {
//        return;
//    }
//    self.index --;
//    [self setScrollViewOffset:self.index];
//   
//}
//
//-(void)setScrollViewOffset:(NSInteger)index
//{
//    CGPoint svOffset = CGPointMake(index * self.scrollView.frame.size.width, 0);
//    [self.scrollView setContentOffset:svOffset animated:YES];
//}
//    为什么scrollView状态下点击屏幕导航栏隐藏失效：响应拦截机制
//    touchesBegan方法的运行机制
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self.navigationController setNavigationBarHidden:!self.navigationController.navigationBarHidden animated:YES];
//}
@end
