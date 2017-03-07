//
//  MainTableViewController.m
//  48搜索框
//
//  Created by YuanLiang on 5/10/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MainTableViewController.h"
#import "Goods.h"
#import "ShowResultTableViewController.h"
@interface MainTableViewController ()
//存储全部数据
@property(nonatomic,strong)NSArray *allGoods;
//记录搜索控制器
@property(nonatomic,strong)UISearchController *searchController;
//记录显示搜索结果控制器
@property(nonatomic,strong)ShowResultTableViewController * showResuletVC;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}
@end
