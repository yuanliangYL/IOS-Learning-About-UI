//
//  BViewController.m
//  20.多VC传值
//
//  Created by YuanLiang on 4/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label.text = self.str;//通过一道中间媒介完成传值（赋值与访问）
}
- (IBAction)clickGoBack:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
