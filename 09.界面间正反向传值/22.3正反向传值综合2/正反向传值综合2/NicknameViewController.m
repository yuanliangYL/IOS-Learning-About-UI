//
//  NicknameViewController.m
//  正反向传值综合2
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "NicknameViewController.h"
#import "ModifyViewController.h"
@interface NicknameViewController ()<ModifyViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nicknameLabel;
@property (weak, nonatomic) IBOutlet UILabel *nickname;

@end

@implementation NicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nicknameLabel.text  = @"daisy jessica";
}
- (IBAction)clickToChangeNickname:(UIButton *)sender {
    ModifyViewController *mvc = [[ModifyViewController alloc]init];
    mvc.name = self.nickname.text;
    mvc.delegate = self;
    mvc.textFieldContent = self.nicknameLabel.text;
    [self presentViewController:mvc animated:YES completion:nil];
    
}
-(void)modifyViewController:(ModifyViewController *)mvc clickToSaveData:(NSString *)backValue
{
    self.nicknameLabel.text = backValue;
}

- (IBAction)clickToBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}


@end
