//
//  ScreenEdgePanViewController.m
//  IB-touches手势操作
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//滑边手势

#import "ScreenEdgePanViewController.h"

@interface ScreenEdgePanViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ScreenEdgePanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
//滑边菜单原理
- (IBAction)screenEdgePan:(UIScreenEdgePanGestureRecognizer *)sender {
    CGPoint p = [sender locationInView:self.view];
    self.imageView.center = CGPointMake(- 240 +p.x, p.y);
    
}
- (IBAction)longPressToMoveImage:(UILongPressGestureRecognizer *)sender {
//     CGPoint p = [sender locationInView:self.view];
    switch ((int)sender.state) {
        case UIGestureRecognizerStateBegan:
            NSLog(@"开始按下");
            break;
            
        case UIGestureRecognizerStateChanged:
            NSLog(@"移动了");
//            self.imageView.center = p;
            break;
        case UIGestureRecognizerStateEnded:
            NSLog(@"松手了");
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
