//
//  MyTableViewController.m
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyTableViewController.h"
#import "News.h"
#import "NewsTableViewCell.h"
#import "DetailNewViewController.h"
#import "FootView.h"
@interface MyTableViewController ()<FootViewDelegate>
@property(nonatomic,strong)NSMutableArray *allNews;
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.rowHeight = 60;
    self.tableView.tableHeaderView  = [[NSBundle mainBundle]loadNibNamed:@"CellHeardView" owner:nil options:nil].lastObject;
//    创建表尾视图实例
    FootView *footv = [[NSBundle mainBundle]loadNibNamed:@"FootView" owner:nil options:nil].lastObject;
//    添加表位视图
    self.tableView.tableFooterView  = footv;
    footv.degelate = self;
}
-(void)loadData:(FootView *)footView
{
//    模拟加载时间
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        等待一定时间，会执行blck中的代码
//        创建新的新闻对象
        News *new = [[News alloc]init];
//        new.title = @"";
//        new.newsImage = @"";
//        new.commentCount = 200;
        NSDictionary *newDic = @{@"title":@"斗鱼tv阿怡大小姐微博回应代打事件 不服solo",
                                 @"newsImage":@"n11",
                                 @"commentCount":@"3231"};
//        使用KVC用一个字典给对象的所用属性赋值
        [new setValuesForKeysWithDictionary:newDic];
//        将新闻对象那个加到数组中
        [self.allNews addObject:new];
        
//      刷新tableview
        [self.tableView reloadData];
        
//加载完成，调动footView中的加载完成方法
        [footView loadFinish];
    });
}

-(NSMutableArray *)allNews
{
    if (!_allNews) {
        _allNews = [[News allNews]mutableCopy];
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
//    获取当前行的新闻数据对像
    News *news = self.allNews[indexPath.row];
//    通过NewsCell工厂方法创建cell实例
    NewsTableViewCell *cell = [NewsTableViewCell cellForTableView:tableView];
//    设置Cell中的新闻数据
    cell.news = news;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  66;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        DetailNewViewController *dvc = [[DetailNewViewController alloc]init];
        [self.navigationController pushViewController:dvc animated:YES];
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 15;
    }else
        return 5;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
