//
//  MyTableViewController.m
//  35UITableCell单元格结构
//
//  Created by YuanLiang on 4/29/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}
//第一个参数一定是要传委托方自己，并且方法名要尽量体现发消息的时机
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"MyCell"];
//系统布局style：
//        UITableViewCellStyleDefault:默认图片与textView
//        UITableViewCellStyleValue1：左对齐全部显示
//        UITableViewCellStyleValue2:无图片
//        UITableViewCellStyleSubtitle
    }
//    为cell的内容视图三个属性赋值
    cell.textLabel.text = @"this is textLabel";
    cell.detailTextLabel.text = @"this is detailTextLabel";
    cell.imageView.image = [UIImage imageNamed:@"icon1024"];
//    辅助视图accessoryType
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    return cell;
}


@end
