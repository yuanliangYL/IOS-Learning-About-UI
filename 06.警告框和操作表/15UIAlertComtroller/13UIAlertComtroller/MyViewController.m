//
//  MyViewController.m
//  13UIAlertComtroller
//
//  Created by YuanLiang on 16/4/14.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}





//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    创建AlertController实例
//    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"title" message:@"message" preferredStyle:(UIAlertControllerStyleAlert)];
////    创建AlertAction实例
//    UIAlertAction * yesAction = [UIAlertAction actionWithTitle:@"YES" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction * _Nonnull action) {
////        NSLog(@"点击了YES按钮");
////        获取文本框输入
//        NSLog(@"%@", alert.textFields[0].text);
//    }];
//    
//    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"NO" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"点击了NO按钮");
//    }];
//    
////    将AlertAction实例添加到AlertController实例
//    [alert addAction:yesAction];
//    [alert addAction:noAction];
//    
////   在AlertController实例中添加文本框(操作表没有文本）
//    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//        textField.textColor = [UIColor redColor];
//    }];
//
////推出显示
//    [self presentViewController:alert animated:YES completion :nil];
//    
//    
//    
//    
//}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIAlertController * actionSheet = [UIAlertController alertControllerWithTitle:@"TITLE" message:@"MESSAGE" preferredStyle:(UIAlertControllerStyleActionSheet)];
    
    UIAlertAction * alertAction1 = [UIAlertAction actionWithTitle:@"cancel" style:(UIAlertActionStyleCancel) handler:nil];
    UIAlertAction * alertAction2 = [UIAlertAction actionWithTitle:@"share to Wechat" style:(UIAlertActionStyleDefault) handler:nil];
    UIAlertAction * alertAction3 = [UIAlertAction actionWithTitle:@"dangeous" style:(UIAlertActionStyleDestructive) handler:nil];
    
    [actionSheet addAction:alertAction3];
    [actionSheet addAction:alertAction1];
    [actionSheet addAction:alertAction2];
    
    
    [self presentViewController:actionSheet animated:YES completion:nil];
    
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
