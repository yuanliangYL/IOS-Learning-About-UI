//
//  ShowResultTableViewController.m
//  48搜索框
//
//  Created by YuanLiang on 5/10/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ShowResultTableViewController.h"
#import "Goods.h"
@interface ShowResultTableViewController ()

@end

@implementation ShowResultTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"My Cell"];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.resultData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"My Cell" forIndexPath:indexPath];
    Goods  * good = self.resultData[indexPath.row];
    cell.textLabel.text  = good.name;
    
    return cell;
}

@end
