//
//  BViewController.m
//  07反向传值
//
//  Created by YuanLiang on 4/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//协议，约束采纳者的方法名

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)clickGoBackToAVC:(UIButton *)sender {
//    self.backReference.backValue = self.textField.text;
//    重点理解这句代码的内容
    
//    返回前，通过给A发消息实现值得回传
//    [self.backReference didReceiveBackValue:self.textField.text];
    
//    合适的时机给代理发消息，告诉他回传的数据是什么
    [self.delegate bViewController:self didInputstr:self.textField.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (IBAction)closeKeyboarf:(UITextField *)sender {
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
