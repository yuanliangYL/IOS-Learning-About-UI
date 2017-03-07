
//
//  LoginViewController.m
//  故事板_新闻tableView
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "UserRegister.h"
#import "UserDetailInfo.h"
@interface LoginViewController ()<RegisterDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameFIeld;
@property (weak, nonatomic) IBOutlet UITextField *passField;
@property(nonatomic,strong)NSString *tempPwd;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clcikToLogin:(UIButton *)sender {
    if([self.passField.text isEqualToString:self.tempPwd]){
//登录成功 把用户名和密码 保存到用户对象中？？？

        
//认为登录成功 跳转界面  (会跳转到Main.storboard)
//创建 StoryBoard 实例
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//将要推出的故事板实例的初始页面作为window的根视图
        self.view.window.rootViewController = mainStoryboard.instantiateInitialViewController;
    }
    else{
        UIAlertController *ac =[UIAlertController alertControllerWithTitle:@"提示" message:@"用户名或密码错误请重新输入" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [ac addAction:alertAction];
        [self presentViewController:ac animated:YES completion:nil];
    }
    
}



//如何设置当前控制器为注册VC的代理？
//需要在跳转之前将自己设为代理并传到下一个界面
//这里通过连线segue跳转，如何实现代理设置
//可以用prepareForsegue方法
//该方法在 通过 segue 进行界面跳转时会自动调用
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    现在需要思考：因为当前界面肯能存在多条连线，通向任意的 下一个VC，
//    每条跳转到下个VC都会触发该方法
//    如何得到想要的连线的目标控制器的实例？？
    
////    复杂方式①：类对象判断法
////    1.获取目标控制器（不知道具体类型，但肯定是UIVieController）
    UIViewController *vc = segue.destinationViewController;
// segue有目标控制器destinationViewController和源控制器sourceViewController两个属性
    
//    2.判断指向的VC是不是一个导航控制器（可能有多种VC类型，这里我们要找得跳转对象VC是在导航控制器下）
    if ([vc isKindOfClass:[UINavigationController class]]){
        
//    3.取出导航控制器下的根视图控制器（注意，这里要将UIViewController类型的 vc 转换为 UINavigationController):类型转换原因 父类的指针 不能使用 子类自有 的属性
        UINavigationController *navc = (UINavigationController *)vc;
//这里要注意viewControllers属性（结合选项卡UITableBarController思考）
        UIViewController *rootViewController = navc.viewControllers[0];
        
//        4.判断取出的rootViewController 是不是 注册VC
        if ([rootViewController isKindOfClass:[RegisterViewController class]]) {
//      5.如果是注册VC 将rootViewContoller 转换为 RegisterViewController
            RegisterViewController *registerVC = (RegisterViewController *)rootViewController;
//      6.设置委托方的代理为当前控制器
            registerVC.delegate  = self;
        }
    }
    
    
//    简便方式②：通过storyboard中注册的segue的Identifier来判断跳转界面方向
//    if ([segue.identifier isEqualToString: @"registerSegue"]) {
//        RegisterViewController *registerVC = segue.destinationViewController;
//        registerVC.delegate  = self;
//    }
//    if ([segue.identifier isEqualToString: @"userAllowedProtocal"]) {
//        NSLog(@"进入委托协议界面");
//    }
}


#pragma mark - RegisterDelegate
-(void)registerViewController:(RegisterViewController *)registerVC didfinishRegisteUserInfo:(UserRegister *)userRegister
{
    self.nameFIeld.text = userRegister.registerName;
    self.tempPwd = userRegister.registerPwd;
}



- (IBAction)closeKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
