//
//  EditTableViewController.m
//  44表视图的编辑模式
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "EditTableViewController.h"
#import "CitiesInfo.h"
#import "AddCityViewController.h"
@interface EditTableViewController ()<AddCityViewControllerDelegate>
@property(nonatomic,strong)NSMutableArray *allCities;
@end

@implementation EditTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"City List";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStyleDone target:self action:@selector(clickEidtButton:)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(clickToAddCities:)];
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"MyCell"];
}

-(NSMutableArray *)allCities
{
    if (!_allCities) {
        _allCities = [[CitiesInfo demoData]mutableCopy];
    }
    return _allCities;
}
-(void)clickEidtButton:(UIBarButtonItem *)btn
{
//    self.tableView.editing = YES;//开启编辑模式
    [self.tableView setEditing:!self.tableView.editing animated:YES];//综合动画

    btn.title = self.tableView.editing ? @"Done" : @"Edit";//    修改按钮文字显示
    
}
-(void)clickToAddCities:(UIBarButtonItem *)leftBtn
{
    AddCityViewController *addVC = [[AddCityViewController alloc]init];
    addVC.delegate = self;
    [self.navigationController pushViewController:addVC animated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allCities.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (!cell) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"MyCell"];
    }
    CitiesInfo *city = self.allCities[indexPath.row];
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"人口数为：%ld万", city.population];
    
    return cell;
}
//删增2问1答
//当前行是否可以编辑
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return NO;
    }
    else
        return YES;
}
//当前行是什么编辑样式绿加红减
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == self.allCities.count - 1) {
        return UITableViewCellEditingStyleInsert;
    }
    else{
        return UITableViewCellEditingStyleDelete;
    }
}

//点击编辑按钮后如何响应：返回值都是VOId
//真的要提交（commit）编辑动作
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
//删除动作
//        1根据行号移除数组中该 下标的数据
        [self.allCities removeObjectAtIndex:indexPath.row];
//        2跟新界面
        [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES];
    }
    else{
// 添加动作
//    1先修改数据模型
        CitiesInfo *newCity = [[CitiesInfo alloc]init];
        UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"添加" message:@"" preferredStyle:UIAlertControllerStyleAlert];
       UIAlertAction *aa = [UIAlertAction actionWithTitle:@"确认添加" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
           newCity.name = ac.textFields[0].text;
           
           [self.allCities addObject:newCity];

           NSIndexPath * newIndexpath = [NSIndexPath indexPathForRow:self.allCities.count - 1 inSection:0];
           [self.tableView insertRowsAtIndexPaths:@[newIndexpath] withRowAnimation:UITableViewRowAnimationAutomatic];
       }];
        [ac addAction:aa];
        [self presentViewController:ac animated:YES completion:nil];
    }
}

//行的移动1问1答
//问1：是否可以移动
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

//答1：移动后如何响应
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
//    不添加以下方法也可以移动，移动后底层数据数组的数据位置没有变动
    
//    以下方法会变换底层数据位置具体实现如下：（系统自己实现刷新）
//    按照移动前的位子先拿到该对象
      CitiesInfo *city = self.allCities[sourceIndexPath.row];
//    将就位置的数据从数组中移除掉
     [self.allCities removeObjectAtIndex:sourceIndexPath.row];
//    按照新位置将数组重新插入会数组
     [self.allCities insertObject:city atIndex:destinationIndexPath.row];
}
#pragma mark - AddCityViewControllerDelegate
-(void)addCityViewController:(AddCityViewController *)addvc didInputCityInfo:(CitiesInfo *)city{
    [self.allCities addObject:city];
    NSIndexPath *newIndexpath = [NSIndexPath indexPathForRow:self.allCities.count - 1  inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[newIndexpath] withRowAnimation:UITableViewRowAnimationAutomatic];
}
@end
