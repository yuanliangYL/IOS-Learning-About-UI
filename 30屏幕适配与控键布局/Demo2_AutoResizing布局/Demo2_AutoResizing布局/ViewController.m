//
//  ViewController.m
//  Demo2_AutoResizing布局
//
//  Created by tarena on 16/6/28.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}





-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
//    控键宽度
    CGFloat buttonW = (self.view.bounds.size.width - 20 - 20 - 10) * 0.5;
    
    self.button1.frame = CGRectMake(20, 20, buttonW, 50);
    self.button2.frame = CGRectMake(CGRectGetMaxX(self.button1.frame) + 10, 20, buttonW, 50);
 
//    self.button2.frame = CGRectMake(self.button1.frame.origin.x + self.button1.bounds.size.width + 10, 20, buttonW, 50);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
