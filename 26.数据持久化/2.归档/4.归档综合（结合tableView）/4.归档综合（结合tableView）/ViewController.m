//
//  ViewController.m
//  4.归档综合（结合tableView）
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "ContactsTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickButton:(UIButton *)sender {
    ContactsTableViewController *cv = [[ContactsTableViewController alloc]init];
    UINavigationController *nvc = [[UINavigationController alloc]initWithRootViewController:cv];
    [self presentViewController:nvc animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
