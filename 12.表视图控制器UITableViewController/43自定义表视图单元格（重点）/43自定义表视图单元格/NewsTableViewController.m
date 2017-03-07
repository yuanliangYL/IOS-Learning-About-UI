//
//  NewsTableViewController.m
//  43自定义表视图单元格
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "NewsTableViewController.h"
#import "NEws.h"
#import "NewsCell.h"
@interface NewsTableViewController ()

@property(nonatomic ,strong)NSMutableArray *allNews;

@end

@implementation NewsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"News List";
    [self.tableView registerNib:[UINib nibWithNibName:@"NewsCell" bundle:nil] forCellReuseIdentifier:@"MyNewsCell"];
    
    
//    设置表头视图
    UIImageView *iv = [[UIImageView alloc]init];
    iv.frame = CGRectMake(0, 0, 0, 210);
    iv.image = [UIImage imageNamed:@"s1"];
    self.tableView.tableHeaderView = iv;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSMutableArray *)allNews
{
    if (!_allNews) {
        _allNews = [[NEws demoData]mutableCopy];
    }
    return _allNews;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allNews.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyNewsCell" forIndexPath:indexPath];
    
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyNewsCell"forIndexPath:indexPath];
//    if (!cell) {
//        cell = [[NSBundle mainBundle]loadNibNamed:@"NewsCell" owner:nil options:nil].lastObject;
//    }
//    
    NEws *new = self.allNews[indexPath.row];
    cell.news = new;//set方法在这里要重写

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 94;
}


@end
