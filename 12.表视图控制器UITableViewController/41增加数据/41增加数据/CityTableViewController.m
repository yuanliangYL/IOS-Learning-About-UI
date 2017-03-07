//
//  CityTableViewController.m
//  41增加数据
//
//  Created by YuanLiang on 5/5/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CityTableViewController.h"
#import "CitiesInfo.h"
#import "InputViewController.h"
@interface CityTableViewController ()<InputViewControllerDelegate>

@property(nonatomic,strong)NSMutableArray *allcities;

@end

@implementation CityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"城市列表";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(clickAddItem:)];
 
}
-(NSMutableArray *)allcities
{
    if (!_allcities) {
        _allcities = [[CitiesInfo demoData]mutableCopy];
    }
    return _allcities;
}//mutablecopy与copy的不同之处在于

-(void)clickAddItem:(UIBarButtonItem *)item
{
    InputViewController *ivc = [[InputViewController alloc]init];
    ivc .delegate = self;
    [self.navigationController pushViewController:ivc animated:YES];
}


-(void)inputViewController:(InputViewController *)vc didInpitNewCity:(CitiesInfo *)city{
    
    [self.allcities addObject:city];
    
//    [self.tableView reloadData];//这里理解不清晰,跟新界面（重第一行开始全部重新设置）,浪费资源
  
//    新增的最后一行的indexPath
    NSIndexPath *newIndexPath = [NSIndexPath indexPathForRow:self.allcities.count - 1 inSection:0];
//    最好只针对新增的一行，做tableview的刷新
    [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//    这个才是正确的添加行，刷新页面的方式，效率更高
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allcities.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CityCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"CityCell"];
    }
    CitiesInfo *city = self.allcities[indexPath.row];
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"人口为：%lu万",city.population];
    return cell;
}



@end
