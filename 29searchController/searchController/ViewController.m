//
//  ViewController.m
//  searchController
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "SearchTableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[SearchTableViewController new] animated:YES];
}

@end
