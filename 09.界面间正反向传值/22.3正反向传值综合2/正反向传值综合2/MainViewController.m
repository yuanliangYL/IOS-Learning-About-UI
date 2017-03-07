//
//  MainViewController.m
//  正反向传值综合2
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MainViewController.h"
#import "NicknameViewController.h"
#import "CountViewController.h"
@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIButton *nicknameButton;
@property (weak, nonatomic) IBOutlet UIButton *countButton;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)clickToChangeNickname:(UIButton *)sender {
    if (sender == self.nicknameButton){
    NicknameViewController *nvc = [[NicknameViewController alloc]init];
    [self presentViewController:nvc animated:YES completion:nil];
    }else
    {
        CountViewController  *cvc = [[CountViewController alloc]init];
        [self presentViewController:cvc animated:YES completion:nil];
    }
}

@end
