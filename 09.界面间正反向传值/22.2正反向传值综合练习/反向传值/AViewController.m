//
//  AViewController.m
//  反向传值
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()<BViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *nicknameLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)clickButtonToChange:(UIButton *)sender {
    BViewController *bvc = [[BViewController alloc]init];
    bvc.nickname = self.nameLabel.text;
    bvc.name = self.nameLabel.text;
    bvc.delegate = self;
    
    [self presentViewController:bvc animated:YES completion:nil];
    
}

#pragma mark - BViewControllerDelegate
-(void)bViewController:(BViewController *)bvc clickbuttonToBackValue:(NSString *)backName
{
    self.nameLabel.text = backName;
}

@end
