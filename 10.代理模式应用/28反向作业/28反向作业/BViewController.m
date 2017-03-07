//
//  BViewController.m
//  28反向作业
//
//  Created by YuanLiang on 4/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;

@property (weak, nonatomic) IBOutlet UITextField *widthTF;
@property (weak, nonatomic) IBOutlet UITextField *heightTF;
@property (weak, nonatomic) IBOutlet UITextField *backValueTF;

@end

@implementation BViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    UIButton * button = [[UIButton alloc]init];
    button.frame = CGRectMake(150, 300, 100, 100);
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"返回上一页" forState:UIControlStateNormal];
    [button setTintColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(didClickBackToAVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)didClickBackToAVC:(UIButton *)btn
{
/*    CGRect rect = CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)*/
    CGRect rect = CGRectZero;
    rect.origin.x = [self.xTextField.text floatValue];
    rect.origin.y = [self.yTextField.text floatValue];
    rect.size.width = [self.widthTF.text floatValue];
    rect.size.height = [self.heightTF.text floatValue];
    
    [self.delegate BViewController:self didPostbackLocation:rect  andContentFromBVC:self.backValueTF.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

@end
