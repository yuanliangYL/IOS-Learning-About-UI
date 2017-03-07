//
//  DetailNewViewController.m
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DetailNewViewController.h"

@interface DetailNewViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detaliTitle;



@end

@implementation DetailNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detaliTitle.text = @"库里季后赛三分首次被盖掉 在场勇士狂输39分";
    
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
