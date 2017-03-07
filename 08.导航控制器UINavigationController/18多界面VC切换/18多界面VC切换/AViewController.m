//
//  AViewController.m
//  18多界面VC切换
//
//  Created by YuanLiang on 4/18/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (IBAction)clickButtonToBVC:(UIButton *)sender {
    //创建要推出 的VC的实例
    BViewController * bvc = [[BViewController alloc]initWithNibName:@"BViewController" bundle:nil];
   //    推出
    [self presentViewController:bvc animated:YES completion:nil];
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
