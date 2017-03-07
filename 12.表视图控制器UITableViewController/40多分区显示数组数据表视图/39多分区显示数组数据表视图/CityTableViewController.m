//
//  CityTableViewController.m
//  39多分区显示数组数据表视图
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CityTableViewController.h"
#import "City.h"
@interface CityTableViewController ()
@property(nonatomic,strong )NSArray *allCities;
@end

@implementation CityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"城市列表";
//    self.tableView.bounces = NO;

}
-(NSArray *)allCities
{
    if (!_allCities) {
        _allCities = [City demoData];
    }
    return _allCities;
}//这种思路方法很重要

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.allCities.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    City * city = self.allCities[section];
    return city.allSubareas.count;
}
//=========================普通的分区头和分区尾====================//
////如何设置每个分区的分区头：与datasource有关
//- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
////    根据分区号找到该跟去对应的city对象，
//    City *city = self.allCities[section];
////    返回city的名称作为头标题
//    return [NSString stringWithFormat:@"城市:%@",city.name];
//}
////在设置分区头之后将tableview的style该成plain样式，会出现分区头悬停模式
//
//- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    City *city = self.allCities[section];
//    return [NSString stringWithFormat:@"人口:%ld",city.population];
//}
//=========================复杂的分区头和分区尾====================//
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    City *city = self.allCities[section];
    UIView *headerView = [[UIView alloc]init];
//    headerView.frame = CGRectMake(0, 0, 0, 0)默认是固定不变的
//    headerView.backgroundColor = [UIColor redColor];
//    创建标签子视图，显示标签
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(0, 0, self.tableView.frame.size.width, 60);
    
//    label.backgroundColor = [UIColor blueColor];
    label.text = [NSString stringWithFormat:@"City:%@",city.name];
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:25];
    label.textAlignment = NSTextAlignmentCenter;
    [headerView addSubview:label];
    
//    添加按钮子视图
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(tableView.frame.size.width - 70, (60 - 30 )* 0.5, 60, 30);
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [headerView addSubview:button];
    
    return headerView;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
     City *city = self.allCities[section];
     UIView *footerView = [[UIView alloc]init];

//    创建标签子视图，显示标签
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(0, 0, self.tableView.frame.size.width, 50);
//    label.backgroundColor = [UIColor blueColor];
    label.text = [NSString stringWithFormat:@"人口:%ld万",city.population];
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:25];
    label.textAlignment = NSTextAlignmentCenter;
    [footerView addSubview:label];
    return footerView;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cityCell"];
    }
// 先根据section，分区找到该行子地区对应的city对象
    City *city = self.allCities[indexPath.section];
//    在根据行号找到该城市的某一个子地区
    cell.textLabel.text = city.allSubareas[indexPath.row];
//    
//    self.tableView.sectionHeaderHeight = 20;
    return cell;
}

#pragma mark - UITableViewDelegate
//设置分区头尾的高度，默认是固定的
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 60;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 50;
}
@end
