//
//  TableViewController.m
//  下拉刷新
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property(nonatomic,strong)NSMutableArray *allData;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    创建刷新控键对象
    UIRefreshControl *rc = [[UIRefreshControl alloc]init];
//    将控键实例赋值给表格控制器的refreshControl属性
    self.refreshControl = rc;
//    添加事件的监听
    [rc addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
}

-(void)refresh:(UIRefreshControl *)sender{
//    NSLog(@"数据加载中");
//    模拟加载时间2秒
//    模拟从网上下载了一个数据
    NSString *string = @"Skye";
//    在延迟多久后带一个参数执行停止刷新方法：（停止刷新是的数据更新，表格刷新添加要写在该方法中）
    [self performSelector:@selector(refreshOver:) withObject:string  afterDelay:2];
    //    参数1：2秒后要调用的方法
    //    参数2：要传给调用的方法的参数（数据即为网络发回的新数据）
    //    参数3：几秒后执行
}

-(void)refreshOver:(NSString *)str{
//    将接收的数据添加到数组中
//    [self.allData addObject:str];//添加到最后一行
    [self.allData insertObject:str atIndex:0];//添加到第一行
//    刷新tableView
//    [self.tableView reloadData];
    NSIndexPath *index = [NSIndexPath indexPathForRow:0 inSection:0];
    
//    获取表视图最后一行的位置
//    NSIndexPath *index = [NSIndexPath indexPathForRow:self.allData.count - 1 inSection:0];
//    在最后一行插入新的单元格
    [self.tableView insertRowsAtIndexPaths:@[index] withRowAnimation:UITableViewRowAnimationAutomatic];
//    停止刷新（只能调用endrefreshing方法，不能给属性直接复制self.endrefresh = NO不可行
    [self.refreshControl endRefreshing];
}

- (NSArray *)allData{
    if (!_allData) {
        _allData = [@[@"jessica",@"daisy",@"jonse",@"poul",@"kobe",@"mac",]mutableCopy];
    }
    return _allData;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.allData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.allData[indexPath.row];
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
