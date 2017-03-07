//
//  TableViewController.m
//  32UITableView表视图
//
//  Created by YuanLiang on 4/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
//    创建tabelView的实例
    UITableView *tabelView = [[UITableView alloc]init];
//    设置frame、背景色
    tabelView.frame = self.view.bounds;
    tabelView.backgroundColor = [UIColor redColor];
    tabelView.bounces = NO;
//   添加到view视图中
    [self.view addSubview:tabelView];
    
//    设置表格数据源代理为当前控制器,表视图就会给控制器发消息，询问数据(分区，行数，行内容等)什么样：
    tabelView.dataSource = self;
    
//    设置表格代理，此代理负责用户交互，及自定义表格外观
    tabelView.delegate = self;
//（三问一答）//
}//放大镜：alt+command+8

#pragma mark - UITableViewDataSource协议
//几个分区
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return  1;
}

//每个分区有几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

//每一行是什么样的
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [[UITableViewCell alloc]init];
    cell.textLabel.text = @"hello  world";
    
//The UITableViewCell class defines the attributes and behavior of the cells that appear in UITableView objects. This class includes properties and methods for setting and managing cell content and background (including text, images, and custom views), managing the cell selection and highlight state, managing accessory views, and initiating the editing of the cell contents.
    return cell;
}

#pragma mark - UITableViewDelegate协议
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"========");
}

@end
