//
//  CViewController.m
//  19navigationController
//
//  Created by YuanLiang on 4/18/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CViewController.h"
#import "DViewController.h"
@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [ UIColor greenColor];
}
- (IBAction)clackGotoDVC:(UIButton *)sender {
    DViewController *dvc = [[DViewController alloc
                             ]init];
    [self presentViewController:dvc animated:YES completion:nil];
    
}
- (IBAction)clickGoBackBVC:(UIButton *)sender {
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
