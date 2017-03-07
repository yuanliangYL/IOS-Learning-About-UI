//
//  ModifyViewController.m
//  正反向传值综合2
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ModifyViewController.h"

@interface ModifyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *modifiedInfo;

@end

@implementation ModifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = self.name;
    self.modifiedInfo.text = self.textFieldContent;
    self.modifiedInfo.clearButtonMode = UITextFieldViewModeAlways;
    
}

- (IBAction)clickToSaveData:(UIButton *)sender {
    [self.delegate modifyViewController:self clickToSaveData:self.modifiedInfo.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



@end
