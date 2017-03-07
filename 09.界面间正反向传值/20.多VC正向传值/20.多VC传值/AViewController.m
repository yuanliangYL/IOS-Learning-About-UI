//
//  AViewController.m
//  20.多VC传值
//
//  Created by YuanLiang on 4/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)inputText:(UITextField *)sender {
}
- (IBAction)clickButtonGotoBVC:(UIButton *)sender {
   
    BViewController *bvc = [[BViewController alloc]init];//init已经默认查找initwithnibname方法，熟练可以省略
    
    bvc.str = self.textField.text;//重点理解这句代码含义
    
    [self.navigationController pushViewController:bvc animated:YES];
    
//    [self presentViewController:bvc animated:YES completion:nil];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
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
