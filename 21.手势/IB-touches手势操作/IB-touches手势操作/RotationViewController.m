//
//  RotationViewController.m
//  IB-touches手势操作
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}



//旋转手势
- (IBAction)RotationTheImage:(UIRotationGestureRecognizer *)sender {
    UIView *view = sender.view;
    //    第一个参数 一般写成 view.transform表示接下来的变换 以哪个状态为初始状态
    //    可以通过transform 对控件 大小 位置 角度 进行改变
    view.transform = CGAffineTransformRotate(view.transform, sender.rotation);
    
    //    重置旋转值
    sender.rotation = 0;
    
    
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
