//
//  BViewController.m
//  19navigationController
//
//  Created by YuanLiang on 4/18/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"
@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)clickGotoCVC:(UIButton *)sender {
    CViewController * cvc = [[CViewController alloc]init];
    
    [self.navigationController pushViewController:cvc animated:nil];
}
- (IBAction)clickGobackToAVC:(UIButton *)sender {
//    从哪来回哪里去
    [self.navigationController popViewControllerAnimated:YES];
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
