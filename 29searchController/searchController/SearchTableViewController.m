//
//  SearchTableViewController.m
//  searchController
//
//  Created by tarena on 16/7/5.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "SearchTableViewController.h"

@interface SearchTableViewController ()<UISearchResultsUpdating>
@property (nonatomic, strong)NSMutableArray *numbers;
@property (nonatomic, strong)NSMutableArray *results;
@property (nonatomic, strong)UISearchController *searchController;
@end

@implementation SearchTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.numbers = [NSMutableArray array];
    
    for (int i=0; i<1000; i++) {
        [self.numbers addObject:[NSString stringWithFormat:@"%d",i]];
        
    }
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
//    搜索结果页面 如果是复用当前页面则给nil  如果有单独的页面 则赋值页面的对象
    self.searchController = [[UISearchController alloc]initWithSearchResultsController:nil];
    //把searchbar添加到tableview里面
    self.tableView.tableHeaderView = self.searchController.searchBar;
    
//    隐藏原来的页面,搜索结果可选择
    self.searchController.dimsBackgroundDuringPresentation = NO;
    
//    显示搜索结果代理
    self.searchController.searchResultsUpdater = self;

}

//当搜索栏内容改变时进入此方法
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    self.results = [NSMutableArray array];
    //获取用户输入的搜索内容
    NSString *text = searchController.searchBar.text;
    
    for (NSString *s in self.numbers) {
        if ([s containsString:text]) {
            [self.results addObject:s];
        }
    }
    
    //刷新
    [self.tableView reloadData];
    
    
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    if (self.searchController.isActive) {
        return self.results.count;
    }
    
    return self.numbers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    if (self.searchController.isActive) {//显示结果内容
        cell.textLabel.text = self.results[indexPath.row];
    }else{//显示原来内容
        cell.textLabel.text = self.numbers[indexPath.row];
    }
    return cell;
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
