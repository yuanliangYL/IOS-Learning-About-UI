//
//  SignViewController.m
//  25星座运程Demo
//
//  Created by YuanLiang on 4/21/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SignViewController.h"
#import "ChoseSignViewController.h"

@interface SignViewController ()<ChoseSignViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *luckyLabel;

@end

@implementation SignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)choseSignViewController:(ChoseSignViewController *)vc didFinishChoseSignWithInfo:(NSString *)info
{
    self.luckyLabel.text = info;
}
- (IBAction)clickToChoseSignButton:(UIButton *)sender {
    ChoseSignViewController *csv = [[ChoseSignViewController alloc]init];
    csv.delegate = self;
    
    [self.navigationController pushViewController:csv animated:YES];
}


@end
