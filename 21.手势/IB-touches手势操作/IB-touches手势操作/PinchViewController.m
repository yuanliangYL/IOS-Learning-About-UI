//
//  PinchViewController.m
//  IB-touches手势操作
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

//缩放手势：两种方法
- (IBAction)pinchTheImage:(UIPinchGestureRecognizer *)sender {
//    方法一：通过更改bounds缩放
//    UIView *view = sender.view;
//    view.bounds = CGRectMake(0, 0, view.frame.size.width*sender.scale, view.frame.size.height*sender.scale);
//    sender.scale = 1;
//    
    
//    方法二：通过通过transform对控件大小缩放
        UIView *view = sender.view;
    view.transform = CGAffineTransformScale(view.transform, sender.scale,sender.scale);
//    重置缩放参数
    sender.scale = 1;
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
