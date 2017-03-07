//
//  BViewController.m
//  反向传值
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *changedName;


@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.nickname;
    self.changedName.text  = self.name;
    self.changedName.clearButtonMode = UITextFieldViewModeAlways;
}
- (IBAction)clickToSaveData:(UIButton *)sender {
   
    [self dismissViewControllerAnimated:YES completion:^{
         [self.delegate bViewController:self clickbuttonToBackValue:self.changedName.text];
    }];
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
