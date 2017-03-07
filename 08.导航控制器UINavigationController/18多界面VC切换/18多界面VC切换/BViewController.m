//
//  BViewController.m
//  18多界面VC切换
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
    self.view.backgroundColor = [UIColor blueColor];
}
- (IBAction)clickBackToAVC:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
    CViewController *cvc = [[CViewController alloc]initWithNibName:@"CViewController" bundle:nil];
    [self presentViewController:cvc animated:YES completion:nil];
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
