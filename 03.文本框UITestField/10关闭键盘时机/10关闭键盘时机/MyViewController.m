//
//  MyViewController.m
//  10关闭键盘时机
//
//  Created by YuanLiang on 16/4/13.
//  Copyright © 2016年 Tarena. All rights reserved.
//Bundle identifier：软件上架，后台推送
//Bundle versions string, short：软件版本号（迭代开发）
//Bundle version 编译版本

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFileld;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
 
//    获取软件版本号
    NSString *filePath =  [[NSBundle mainBundle] pathForResource:@"Info.plist" ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
//    NSLog(@"%@",dict);
    NSString *version = dict[@"CFBundleShortVersionString"];
    NSLog(@"version:%@",version);
    
//    way2
    version = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    NSLog(@"version:%@",version);
    
    
}
//代码下移，command+option+}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [self.textFileld resignFirstResponder];
    [self.view endEditing:YES];
}

- (IBAction)closeKeyboard:(id)sender {
    [self.textField2 becomeFirstResponder];
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
