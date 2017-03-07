//
//  RegisterViewController.m
//  故事板_新闻tableView
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "RegisterViewController.h"
#import "UserRegister.h"
@interface RegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *registerNameField;
@property (weak, nonatomic) IBOutlet UITextField *registerPwdField;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//正真的逻辑 是把 注册用户名 和 注册密码 发送给服务器进行注册， 服务器会返回 注册结果
- (IBAction)SaveRegisterData:(UIButton *)sender {
//把一个用户注册数据模型对象传到进行注册的界面,将注册后的信息赋值给注册类实例
   UserRegister * userRegister = [[UserRegister alloc]init];
    userRegister.registerName = self.registerNameField.text;
    userRegister.registerPwd = self.registerPwdField.text;
 
//    合适的时机实现代理方法,把注册的数据对象  通过参数 交给代理人
    [self.delegate registerViewController:self didfinishRegisteUserInfo:userRegister];
    
//    返回跳转过来的界面
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancleRegister:(UIBarButtonItem *)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)closeKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
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
