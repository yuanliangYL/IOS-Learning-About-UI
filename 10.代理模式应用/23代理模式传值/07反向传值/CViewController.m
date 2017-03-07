//
//  CViewController.m
//  07反向传值
//
//  Created by YuanLiang on 4/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CViewController.h"
#import "BViewController.h"
@interface CViewController ()<BViewControllerDelegate>

@end

@implementation CViewController



- (void)bViewController:(BViewController *)bvc didInputStr:(NSString *)str
{
    NSLog(@"%@",str);
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    BViewController *bvc = [[BViewController alloc]init];
    
    bvc.delegate = self;
    
    
    [self presentViewController:bvc animated:YES completion:nil];
}




- (void)viewDidLoad {
    [super viewDidLoad];

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
