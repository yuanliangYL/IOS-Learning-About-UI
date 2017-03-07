//
//  MyViewController.m
//  demo连线
//
//  Created by YuanLiang on 16/4/12.
//  Copyright © 2016年 Tarena. All rights reserved.
//1.控键按钮连成属性 2.控键按钮连接事件响应方法（可以省略AddTarget）

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
//@property (weak, nonatomic) IBOutlet UIButton *nameButton;
@property (weak, nonatomic) IBOutlet UILabel *pwdLabel;
//@property (weak, nonatomic) IBOutlet UIButton *pwdButton;//连线生成属性后，不能自己在改写属性名后重新手动连接，这样会导致程序崩溃

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.backgroundColor = [UIColor brownColor];
    self.nameLabel.textColor = [UIColor blueColor];
    self.pwdLabel.text = @"2222222";
    self.pwdLabel.textColor = [UIColor yellowColor];
    self.pwdLabel.backgroundColor = [UIColor blueColor];
//    [self.nameButton addTarget:self action:@selector(changeLabel:) forControlEvents:UIControlEventTouchUpInside];
//    [self.pwdButton addTarget:self action:@selector(changeLabel:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)changeLabel:(UIButton *)sender//IBAction相当于void，但多了可以连线的效果，表示响应界面上某个行为：UIControlEventTouchUpInside
{
//  方案一：将两个按钮连线成两个属性
//    if(sender == self.nameButton)
//    {
//     self.nameLabel.text = @"new text content";
//     self.nameLabel.textColor = [UIColor redColor];
//    }
//    else
//    {
//     self.pwdLabel.text = @"123456";
//     self.pwdLabel.textColor = [UIColor redColor];
//    }
    
// 方案二：读取本次点击的事件源按钮上的标题
    NSString *title = [sender titleForState:UIControlStateNormal];//getter方法的应用
    if([title isEqualToString:@"事件监听"] == YES)
    {
//             self.nameLabel.text = @"new text content";
        [self.nameLabel setText:@"new text content"];
         self.nameLabel.textColor = [UIColor redColor];
    }
    else{
//             self.pwdLabel.text = @"123456";
        [self.pwdLabel setText:@"123456"];
         self.pwdLabel.textColor = [UIColor redColor];
    }
    
}






//- (IBAction)changePwdLabel:(UIButton *)sender {
//    self.pwdLabel.text = @"123456";
//    self.pwdLabel.textColor = [UIColor redColor];
//}
//-(void)changeText
//{
//    self.nameLabel.text = @"new text content";
//    self.nameLabel.textColor = [UIColor redColor];
//    self.nameLabel.numberOfLines = 0;
//}





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
