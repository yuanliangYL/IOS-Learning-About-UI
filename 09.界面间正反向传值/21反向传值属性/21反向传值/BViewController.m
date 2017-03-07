 //
//  BViewController.m
//  21反向传值
//
//  Created by YuanLiang on 4/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)clickGoBackAVC:(UIButton *)sender {
//    返回前给A传值
    self.backReference.receiveValue = self.textField.text;
//    重点理解这句代码的内容   
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)destoryKeyBoard:(UITextField *)sender {
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
