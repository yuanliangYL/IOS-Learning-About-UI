//
//  MyViewController.m
//  作业点击登录响应
//
//  Created by YuanLiang on 16/4/14.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *loginLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passTextFiled;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}
- (IBAction)clickTextFieldToNext:(UITextField *)sender {
    [self.passTextFiled becomeFirstResponder];
}
- (IBAction)clickPassTextFieldToLogin:(UITextField *)sender {
    [sender endEditing:YES];
    [self login];
    
}

- (IBAction)clickButtonToLogin:(UIButton *)sender {
    [self login];
    }

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}//点击界面收起键盘方法

-(void)login
{
    NSString * name = self.nameTextField.text;
    NSString * pass = self.passTextFiled.text;
    
    if (name.length == 0 || pass.length == 0)
    {
        self.loginLabel.text = @"用户名或密码不能为空";
        return;
    }
    
    if ([name isEqualToString:@"aaa"] && [pass isEqualToString:@"sss"])
    {
        self.loginLabel.text = @"登录成功";
    }
    else{
        self.loginLabel.text = @"用户名或密码错误";
    }

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
