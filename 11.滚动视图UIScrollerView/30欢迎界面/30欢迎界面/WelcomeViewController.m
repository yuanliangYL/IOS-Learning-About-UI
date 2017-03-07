//
//  WelcomeViewController.m
//  30欢迎界面
//
//  Created by YuanLiang on 4/25/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "WelcomeViewController.h"
#import "APPViewController.h"
@interface WelcomeViewController ()<UIScrollViewDelegate>
@property (nonatomic ,weak)UIPageControl * pageController;
@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupScrollView];//这里视图存在添加顺序
    
    [self setupPageController];
}

-(void)setupScrollView
{
//    创建滚动视图实例
    UIScrollView * sv = [[UIScrollView alloc]init];
    
    sv.delegate = self;

//设置滚动视图的可视区域frame
    sv.frame = self.view.frame;
//设置内容大小   sv.contentSize = CGSizeMake(sv.frame.size.width * 4, sv.frame.size.height);
    sv.contentSize = CGSizeMake(sv.frame.size.width , sv.frame.size.height * 4);
    
    //滚动视图的相关属性设置
    sv.bounces = NO;//禁止弹跳，页面边界不可滑动
    sv.pagingEnabled = YES;//A Boolean value that determines whether paging is enabled for the scroll view.If the value of this property is YES, the scroll view stops on multiples of the scroll view’s bounds when the user scrolls. The default value is NO.
    
    //    sv.showsHorizontalScrollIndicator = NO;
    sv.showsVerticalScrollIndicator = YES;//滚动显示器
    //    sv.scrollEnabled = YES;
    //    sv.alwaysBounceVertical = YES;
    
//    像滚动视图中添加图片实例
    for (NSInteger i = 0; i < 4; i++)
    {
//     用图片视图创建图片实例
        UIImageView * iv = [[UIImageView alloc]init];
//        iv.frame = CGRectMake(i * sv.frame.size.width, 0, sv.frame.size.width, sv.frame.size.height);
        
//      设置图片的frame
        iv.frame = CGRectMake(0,i * sv.frame.size.height, sv.frame.size.width, sv.frame.size.height);
        
//      创建图片名称实例
        NSString *imageName = [NSString stringWithFormat:@"welcome%ld",i+1];
        
//      对图片对象的image属性进行赋值，使实例具象化
        iv.image = [UIImage imageNamed:imageName];
//iv.image = [UIImage imageNamed:[NSString stringWithFormat:@"welcome%ld",i+1]];

//      添加图片到滚动视图中
        [sv addSubview:iv];
        
//       在指定的图片视图实例中添加应用按钮
        if (i == 3)
        {
            [self addAPPButton:iv];
        }
    }
    
//   添加滚动视图到根视图中
    [self.view addSubview:sv];
    
}


//配置底部圆点：UIpageController控键
-(void)setupPageController
{
//    创建页面控制的实例
    UIPageControl * pageController = [[UIPageControl alloc]init];
    self.pageController = pageController;
   
//    设置相关属性：frame/numberOfpage/pageIndicatorTintColor/currentPageIndicatorTintColor/currentPage(该属性重点记忆）
    pageController.frame = CGRectMake(0, self.view.frame.size.height - 60, self.view.frame.size.width, 40);
    pageController.numberOfPages = 4;
    pageController.pageIndicatorTintColor = [UIColor brownColor];
    pageController.currentPageIndicatorTintColor = [UIColor redColor];
 
//    添加页面控制实例到跟视图中
    [self.view addSubview:pageController];
    
//    哪一个圆点被选中
//    pageController.currentPage = 2;
    
//    设置pagecontroller不能与用户交互
    pageController.userInteractionEnabled = NO;
//userInteractionEnabled重要属性！！！！
}


-(void)addAPPButton:(UIImageView *)iv
{
    iv.userInteractionEnabled = YES;
//    开启用户交互
    
    UIButton * button = [[UIButton alloc]init];
    button.frame = CGRectMake((iv.frame.size.width - 120) * 0.5 , iv.frame.size.height * 0.6, 120, 30);
    [button setTitle:@"点此进入" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor orangeColor];
    
    [iv addSubview:button];
    
    [button addTarget:self action:@selector(enterApp:) forControlEvents:UIControlEventTouchUpInside];
//    可设置全屏透明按钮，实现任意位置点击
}

-(void)enterApp:(UIButton *)btn
{
    
//    NSLog(@"=======");
//    图片框默认不与用户交互
    APPViewController *avc = [[APPViewController alloc]init];
    
//    [self presentViewController:avc animated:YES completion:nil];

//    将avc作为window的根视图控制器
//    self.view.window.rootViewController = avc;
//    获取启动时创建的那个应用程序对象
    UIApplication * app = [UIApplication sharedApplication];//获取而不是去创建
    app.keyWindow.rootViewController = avc;
//  该方法切换后回不来该界面了
    
    
//    文件管理
    /*
     if(是否为第一次加载)
     创建welcomeVC，设置Window根视图
     else
      创建mainVC，设置Window根视图
     */
}


#pragma mark - UIScrollViewDelegate协议

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint point = scrollView.contentOffset;
    
     self.pageController.currentPage = round(point.y / scrollView.frame.size.height);
//point.y / scrollView.frame.size.height会自动取整
//  round()：四舍五入函数
    
}


@end
