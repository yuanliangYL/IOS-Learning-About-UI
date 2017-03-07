//
//  MyTableViewController.m
//  46静态表格Xib
//
//  Created by YuanLiang on 5/9/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *greenDiamondCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *freeDataCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *QPlayCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *tramslationCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *settingCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *onTimeCloseCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *aboutQQCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *exitCell;
//@property (strong, nonatomic) IBOutlet UIView *hearderView;
//注意这里的UI类使用的strong属性，因为没有父视图
@property (strong, nonatomic) IBOutlet UITableViewCell *headerViewCell;
//头像、昵称、粉丝、动态、关注
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;

@end


@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.tableHeaderView = self.hearderView;
    self.userNameLabel.text = @"jessica";
//    将图像该成内切圆的形式N
    self.userImageView.layer.cornerRadius = self.userImageView.frame.size.width * 0.5;
    self.userImageView.layer.masksToBounds = YES;
//    图片边框宽度即颜色,及大小
    self.userImageView.layer.borderColor = [UIColor blueColor].CGColor;
    self.userImageView.layer.borderWidth = 2;
  
    
//    获取程序实例
    UIApplication *app = [UIApplication sharedApplication];
//    设置图标显示数值
    app.applicationIconBadgeNumber = 15;
//    创建通知对象
    UIUserNotificationSettings *setting = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
//    注册用户通知
    [app registerUserNotificationSettings:setting];

    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 1;
        case 1:
            return 4;
        case 2:
            return 3;
        default:
            return 1;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.section) {
        case 0:
            return self.headerViewCell;
            
        case 1:
            if (indexPath.row == 0) {
                return self.greenDiamondCell;
            }
            else if(indexPath.row == 1){
                return self.freeDataCell;
            }
            else if (indexPath.row == 2){
                return self.QPlayCell;
            }
            else{
                return self.tramslationCell;
            }
            
            
        case 2:
            if (indexPath.row == 0) {
                return self.settingCell;
            }
            else if (indexPath.row == 1){
                return self.onTimeCloseCell;
            }
            else{
                return self.aboutQQCell;
            }
            break;
            
            
        default:
            return self.exitCell;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if(section == 0)
        return 5;
    else
        return 10;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return 1;
    }
    else if(section == 1 ){
        return 5;
    }
    else
        return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) 
        return 120;
    else
        {
            return 44;
        }
}


@end
