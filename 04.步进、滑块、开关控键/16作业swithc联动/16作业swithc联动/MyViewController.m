//
//  MyViewController.m
//  16作业swithc联动
//
//  Created by YuanLiang on 4/15/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)clickSwitch1ToChangeSwitch2:(UISwitch *)sender {
    [self.switch2 setOn:self.switch1.on animated:YES];

//   方法一、
//    if (!self.switch1.isOn) {
//        self.switch2.enabled = NO;
//    }//enabled     adj. 激活的；可行的
//    else
//    {
//        self.switch2.enabled = YES;
//    }
    
//    方法二、
    self.switch2.enabled = self.switch1.on;//善于寻找bool变量间的关系
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
