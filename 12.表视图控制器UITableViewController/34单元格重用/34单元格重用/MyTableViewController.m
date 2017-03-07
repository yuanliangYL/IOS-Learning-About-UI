//
//  MyTableViewController.m
//  34单元格重用
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
    self.tableView.rowHeight = 80;
    

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 100;
}
//重点✨(一屏加一个单元格思维）：数据展示中的队列结构：单元格重用机制
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    产生一个cell对象：先尝试去队列中取，看有没有已经回收的可重用的单元格对象
      UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
//    如果没有取到就新建
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyCell"];
    }
//    配置cell中显示的内容
    cell.textLabel.text  = [NSString stringWithFormat:@"%lujessica",indexPath.row] ;
//    返回配置好的cell对象
    return cell;
}



@end
