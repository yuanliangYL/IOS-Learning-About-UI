//
//  MyTableViewController.m
//  33.UITableViewController
//
//  Created by YuanLiang on 4/27/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   }



#pragma mark - Table view data source

//问1可以选问，不写此方法，默认返回1
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    NSLog(@"问================1");//这个不用解释
    return 3;
}
//问2是必须回答的
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    NSLog(@"问================2selection=%ld",section);//这个不用解释
    if (section == 0) {
        return 3;
    }
    else if (section == 1)
    {
        return 2;
    }
    else{
    return 6;
    }
//    switch (section) {
//        case 0:
//            return 3;
//            break;
//        case 1:
//            return 2;
//            break;
//        default:
//            return 6;
//            break;
//    }
}


//问3也是必须回答的
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    indexPath表视图的当前行（哪个分区哪一行）
//    indexPath.section
//    indexPath.row
    NSLog(@"问================3:indexPath:%ld:%ld",indexPath.section,indexPath.row);
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    
    
//     Configure the cell...配置单元格
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"hello";
        }
        else{
            cell.textLabel.text =@"world";
        }
        
    }
    else if (indexPath.section == 1){
        cell.textLabel.text = @"Kikty";
    }
    else{
        cell.textLabel.text = @"hello Kikty";}
    return cell;
}



@end
