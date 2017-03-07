//
//  MyViewController.m
//  警告框
//
//  Created by YuanLiang on 5/11/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)clickButton:(UIButton *)sender {
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"流量警告" message:@"即将使用流量观看视频文件" preferredStyle:UIAlertControllerStyleAlert];
    
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {//参数textField是界面textField实例
        textField.placeholder = @"please enter the user's name";
    }];
    [ac addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"please enter the password";
        textField.secureTextEntry = YES;
        textField.textColor = [UIColor redColor];
    }];

    UIAlertAction *a1 = [UIAlertAction actionWithTitle:@"继续" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"继续播放");
        NSArray *field = ac.textFields;//得到所有输入内容数组
        self.label.text = [NSString stringWithFormat:@"输入的用户名和密码分别是：%@  %@",field[0],field[1]];
        
    }];
//    匿名函数、闭包函数的初级应用
    UIAlertAction *a2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"取消播放");
        self.label.text = @"取消播放";
    }];
    [ac addAction:a2];
    [ac addAction:a1];
    [self presentViewController:ac animated:YES completion:nil];
    
}//UIAlertAction警告框上的选择按键类

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
