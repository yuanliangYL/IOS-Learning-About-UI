//
//  MyViewController.m
//  24文本框代理
//
//  Created by YuanLiang on 4/21/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITextFieldDelegate>
//协议名：委托方名加delegate
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// 如果想实现控制器对文本框与用户的交互动作，提供响应
    self.textField.delegate = self;
//    关键在于这里让当前控制器成为了文本框的代理
}
#pragma mark - 这里是UITextField协议
//当文本框捕获到用户点了Return按键时，自动发动此消息，即此方法被调用
-(BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    NSLog(@"textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;//返回值bool其实决定该次触摸是否向下传递
}

//文本框时间响应时机
//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
//{
//    NSLog(@"textFieldShouldBeginEditing");
//    return YES;
//}
//- (void)textFieldDidBeginEditing:(UITextField *)textField;
//{
//    NSLog(@"textFieldDidBeginEditing");
//}
//- (BOOL)textFieldShouldEndEditing:(UITextField *)textField;        {
//    NSLog(@"textFieldShouldEndEditing");
//    return YES;
//}
//- (void)textFieldDidEndEditing:(UITextField *)textField;             {
//    NSLog(@"textFieldDidEndEditing");
//}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;  {
    NSLog(@"textField shouldChangeCharactersInRange:");
    return  YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField;
{
    NSLog(@"textFieldShouldClear");
    return YES;
}
//编译标注技巧
#pragma mark - XXXX
-(void)fun {
    
}
#pragma mark - YYYY
-(void)fun2{
    
}
@end
