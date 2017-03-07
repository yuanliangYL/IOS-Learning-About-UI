//
//  WelcomeViewController.m
//  滚动视图搭配导航栏
//
//  Created by YuanLiang on 4/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView * iv = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.png"]];
//    UIImageView * iv = [[UIImageView alloc]init];
//    iv.image = [UIImage imageNamed:@"1.png"];为什么这样不可以
    
    UIScrollView * sv = [[UIScrollView alloc]init];
    sv.frame = CGRectMake(0, 74, self.view.frame.size.width, self.view.frame.size.height-74);
    sv.contentSize =iv.frame.size;
    
    [sv addSubview:iv];
    [self.view addSubview:sv];
    
//    self.automaticallyAdjustsScrollViewInsets = NO;
//inset:n. 插图，插页；插入物vt. 嵌入；插入
    
    sv.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
//contentInset(内边距）:Use this property to add to the scrolling area around the content. The unit of size is points. The default value is UIEdgeInsetsZero.
    
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
