//
//  DetaliTableViewController.m
//  37对象数组
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DetaliTableViewController.h"

@interface DetaliTableViewController ()

@end

@implementation DetaliTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.city.name;

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.city.allSubareas.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SubareaCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SubareaCell"];
    }
    cell.textLabel.text = self.city.allSubareas[indexPath.row];
    
    return cell;
}

@end
