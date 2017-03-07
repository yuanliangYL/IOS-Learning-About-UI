//
//  YellowViewController.m
//  53UITabbarController详解
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "YellowViewController.h"

@interface YellowViewController ()

@end

@implementation YellowViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:@"YellowViewController" bundle:nil]) {
        self.tabBarItem.title = @"Friend";
        self.tabBarItem.badgeValue = @"10";
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.tabBarItem.title  = @"Friend";
//    self.tabBarItem.title  = @"Friend";
    self.tabBarItem.badgeValue = nil;
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
