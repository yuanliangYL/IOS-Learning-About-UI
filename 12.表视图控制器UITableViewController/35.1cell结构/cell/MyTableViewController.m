//
//  MyTableViewController.m
//  cell
//
//  Created by YuanLiang on 5/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"MyCell"];
    }
    cell.textLabel.text = @"i miss you";
    cell.detailTextLabel.text = @"My princess ";
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"7dd98d1001e93901e19403117aec54e736d1960f.jpg"]];
//    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
//UITableViewCellAccessoryNone
//UITableViewCellAccessoryDisclosureIndicator
//UITableViewCellAccessoryDetailDisclosureButton
//UITableViewCellAccessoryCheckmark                                                
//UITableViewCellAccessoryDetailButton
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    把选中cell取出来
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    给cell添加辅助视
    if (cell.accessoryType == UITableViewCellAccessoryNone) {
         cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
        cell.accessoryType = UITableViewCellAccessoryNone;
   
//    NSLog(@"点中%ld行的内容视图的cell",indexPath.row);
}
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"点中%ld行的辅助视图的cell",indexPath.row);
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
}

@end
