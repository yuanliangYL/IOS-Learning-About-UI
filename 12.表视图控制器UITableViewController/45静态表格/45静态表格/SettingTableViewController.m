//
//  SettingTableViewController.m
//  45静态表格
//
//  Created by YuanLiang on 5/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SettingTableViewController.h"
#import "UserInfo.h"
@interface SettingTableViewController ()
@property(nonatomic,strong)UserInfo *currentUser;
//用于保存当前界面显示的数据
@end

@implementation SettingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.navigationItem.title = @"账号与安全";
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];//背景色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;//间接修改状态栏文字颜色
    
}
-(UserInfo *)currentUser
{
    if (!_currentUser) {
        _currentUser = [[UserInfo alloc]init];
        _currentUser.weChat = @"marvelous-YL";
        _currentUser.QQ = @"2280590912";
        _currentUser.phoneNumber = 18256970599;
        _currentUser.email =  @"124232535@qq.com";
        _currentUser.protectAccount = YES;
    }
    return _currentUser;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 1;
        case 1:
            return 3;
        default:
            return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;//设置辅助视图
    
    
    switch (indexPath.section) {
        case 0://第一个分区
            cell.textLabel.text = @"微信号";
            cell.detailTextLabel.text = self.currentUser.weChat;
            cell.accessoryType = UITableViewCellAccessoryNone;
            break;
            
        case 1://第二个分区
            if (indexPath.row == 0) {
            //第一行
                cell.textLabel.text = @"QQ号";
                cell.detailTextLabel.text =self.currentUser.QQ;
            }
            else if(indexPath.row == 1){
            //第二行
                cell.textLabel.text = @"手机号";
                cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu" ,self.currentUser.phoneNumber];
            }
            else{
            //第三行
                cell.textLabel.text = @"邮箱地址";
                cell.detailTextLabel.text = self.currentUser.email;
            }
            break;
            
        default://第三个分区
            if (indexPath.row == 0) {
                //第一行
                cell.textLabel.text = @"微信密码";
            }
            else if(indexPath.row == 1){
                //第二行
                cell.textLabel.text = @"账号保护";
                cell.detailTextLabel.text = self.currentUser.protectAccount ? @"已保护" : @"未保护";
//                添加子视图(重点）
                
                UIImageView *iv = [[UIImageView alloc]init];
                iv.frame = CGRectMake(215, 11, 20, 20);
                iv.image = [UIImage imageNamed:self.currentUser.isProtecedAccount ? @"ProfileLockOn" : @"ProfileLockOff"];
                [cell.contentView addSubview:iv];
            }
            else{
                //第三行
                cell.textLabel.text = @"微信安全中心";
            }
            break;
    }
    return cell;
}


@end
