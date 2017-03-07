//
//  PanViewController.m
//  IB-touches手势操作
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

//拖动手势
- (IBAction)PanTheImage:(UIPanGestureRecognizer *)sender {
    UIView *view = sender.view;
    CGPoint p = [sender locationInView:self.view];
    view.center = p;
    
//    拖动的三种状态
    switch ((int)sender.state) {
        case UIGestureRecognizerStateBegan:
            
            break;
            
            
        case UIGestureRecognizerStateChanged:
            
            break;
            
            
        case UIGestureRecognizerStateEnded:
//如果在屏幕下方松手 就删除控件
            if (view.center.y > 300) {
                [view removeFromSuperview];
            }
            break;
    }
    
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
