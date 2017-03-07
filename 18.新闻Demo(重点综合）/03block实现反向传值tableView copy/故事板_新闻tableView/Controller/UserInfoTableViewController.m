//
//  UserInfoTableViewController.m
//  故事板_新闻tableView
//
//  Created by YuanLiang on 6/1/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "UserInfoTableViewController.h"
#import "UserDetailInfo.h"
@interface UserInfoTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UILabel *nickName;
@property (weak, nonatomic) IBOutlet UILabel *photo;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *QQnumber;
@property(nonatomic,strong)UITableViewCell *selectedCell;
@end

@implementation UserInfoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)loadUserData{
//     self.nickName.text = getUser.userName;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickButtonToResign:(UIButton *)sender {
}



@end
