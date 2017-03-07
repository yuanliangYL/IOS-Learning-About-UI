//
//  AViewController.m
//  19navigationController
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
    

}
- (IBAction)clickButtonGotoBVC:(UIButton *)sender {
    BViewController * bvc = [[BViewController alloc]init];
    
    [self.navigationController pushViewController:bvc animated:YES];
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
