//
//  SwipeViewController.m
//  IB-touches手势操作
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


//滑动手势
- (IBAction)SwipeTheImage:(UISwipeGestureRecognizer *)sender {
    
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionUp:
            sender.view.center = CGPointMake(sender.view.center.x, sender.view.center.y-10);
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
            sender.view.center = CGPointMake(sender.view.center.x, sender.view.center.y+10);
            break;
        case UISwipeGestureRecognizerDirectionLeft:
            sender.view.center = CGPointMake(sender.view.center.x-10, sender.view.center.y);
            break;
        case UISwipeGestureRecognizerDirectionRight:
            sender.view.center = CGPointMake(sender.view.center.x+10, sender.view.center.y);
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
