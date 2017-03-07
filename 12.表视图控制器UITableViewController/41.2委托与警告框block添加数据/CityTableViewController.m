//
//  CityTableViewController.m
//  委托添加数据
//
//  Created by YuanLiang on 5/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CityTableViewController.h"
#import "Data.h"
#import "City.h"
#import "AddViewController.h"
@interface CityTableViewController ()//<AddViewControllerDelegate>
@property(nonatomic,strong)NSMutableArray *allCities;
@end

@implementation CityTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"城市列表";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(clickButtonAddCity:)];
//    self.view.backgroundColor = [UIColor blueColor];
}

- (NSArray *)allCities{
    if (!_allCities) {
        _allCities = [[Data allCities]mutableCopy];
    }
    return _allCities;
}
//-(void)clickButtonAddCity:(UIBarButtonItem *)sender
//{
//    //    跳转添加城市
//    AddViewController  *avc = [[AddViewController alloc]init];
////    avc.delegate  = self;
//    [self.navigationController pushViewController:avc animated:YES];
//}
//-(void)AddViewController:(AddViewController *)avc didInputCityName:(NSString *)name andPopulation:(NSString *)population{
//    City *city = [[City alloc]init];
//    city.name = name;
//    city.population = population;
//    [self.allCities addObject:city];
////    [self.tableView reloadData];
//    NSIndexPath *newCity = [NSIndexPath indexPathForRow:self.allCities.count - 1 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[newCity] withRowAnimation: UITableViewRowAnimationTop];
//}


//本页面添加，警告框与block添加数据
-(void)clickButtonAddCity:(UIBarButtonItem *)sender
{
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"添加城市" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //参数 textField  就是警告框中 的  textField 实例
        textField.placeholder = @"请输入城市名称";
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"请输入人口数";
        textField.textColor = [UIColor redColor];
    }];
    UIAlertAction *aa = [UIAlertAction actionWithTitle:@"保存" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        NSArray *textFieldArr = alertController.textFields;
        UITextField *nameField = textFieldArr[0];
        UITextField *populationField = textFieldArr[1];
        City *city = [[City alloc]init];
            city.name = nameField.text;
            city.population = populationField.text;
            [self.allCities addObject:city];
            NSIndexPath *newCity = [NSIndexPath indexPathForRow:self.allCities.count - 1 inSection:0];
            [self.tableView insertRowsAtIndexPaths:@[newCity] withRowAnimation: UITableViewRowAnimationTop];
    }];
    
    [alertController addAction: aa];
    [self presentViewController:alertController animated:YES completion:nil];
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.allCities.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    City *city = self.allCities[indexPath.row];
    cell.textLabel.text = city.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"人口数量是%@",city.population];
    
//    cell.backgroundColor = [UIColor clearColor];
    return cell;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
