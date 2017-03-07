//
//  RedViewController.m
//  53UITabbarController详解
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "RedViewController.h"

@interface RedViewController ()

@end

@implementation RedViewController
//索引初始页面会执行loaddidview方法，不需要再另行设置初始化方法设置title
//-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
//    if (self = [super initWithNibName:@"RedViewController" bundle:nil]) {
//        self.tabBarItem.title = @"Chat";
//    }
//    return self;
//}
- (IBAction)clickButtonToYellow:(UIButton *)sender {
//    设置选中的为第1个索引界面 ，索引从0开始
    self.tabBarController.selectedIndex = 1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    如果当前vc在导航控制器下，需要获取到所在的导航控制器对象，通过导航控制器的tabbarItem属性来设置title
//    self.navigationController.tabBarItem.title  = @"Chat";
     self.tabBarItem.title  = @"Chat";
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
