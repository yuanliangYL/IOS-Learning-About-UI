//
//  ViewController.m
//  Demo1_纯代码布局
//
//  Created by tarena on 16/6/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//重新父类的方法  该方法在程序开始时 和 屏幕尺寸发生变化时会自动调用
-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"方法调用");
    CGFloat buttonW = (self.view.bounds.size.width - 20 - 20 - 10) * 0.5;
    self.button1.frame = CGRectMake(20, 20, buttonW, 50);
    self.button2.frame = CGRectMake(self.button1.frame.origin.x + self.button1.bounds.size.width + 10, 20, buttonW, 50);
    self.imageView.frame = CGRectMake(20, 90, self.view.bounds.size.width - 40, self.view.bounds.size.height - 90 - 20);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
