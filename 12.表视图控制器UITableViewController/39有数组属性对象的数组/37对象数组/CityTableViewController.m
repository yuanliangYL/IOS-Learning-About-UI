//
//  CityTableViewController.m
//  37对象数组
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CityTableViewController.h"
#import "CitiesInfo.h"
#import "DetaliTableViewController.h"
@interface CityTableViewController ()
//准备属性用来存储表格背后的数组数据
@property(nonatomic,strong)NSArray *allCities;
@end

@implementation CityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(NSArray *)allCities{
    if (!_allCities) {
        _allCities = [CitiesInfo demoData];
    }
    return _allCities;
}//get方法的重写格式要注意

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.allCities.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cityCell"];
    }
//    按照当前行号做下标，拿到该行对应的城市对象
    CitiesInfo *city = self.allCities[indexPath.row];//右侧返回的是一个id类型，与存入的数据不同了，这是oc中自带的，这里相当于进行了类型转换
//    显示
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"人口：%ld万",city.population];
    
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    UITableViewCellAccessoryDisclosureIndicator  '>'显示格式

    return cell;
}

#pragma mark - UIScrollViewDelegate协议
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CitiesInfo * city = self.allCities[indexPath.row];//该步骤重点理解记忆
    
    DetaliTableViewController *dvc = [[DetaliTableViewController alloc]init];
    
    dvc.city = city;
    
    [self.navigationController pushViewController:dvc animated:YES];
   
}


@end
