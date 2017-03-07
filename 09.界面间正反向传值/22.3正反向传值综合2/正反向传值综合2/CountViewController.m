//
//  CountViewController.m
//  正反向传值综合2
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CountViewController.h"
#import "ModifyViewController.h"
@interface CountViewController ()<ModifyViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *count;

@end

@implementation CountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.countLabel.text = @"marvelous-YL";
}
- (IBAction)clickToChangeCount:(UIButton *)sender {
    ModifyViewController *mvc = [[ModifyViewController alloc]init];
    mvc.name = self.count.text;
    mvc.delegate = self;
    mvc.textFieldContent = self.countLabel.text;
    [self presentViewController:mvc animated:YES completion:nil];
}
-(void)modifyViewController:(ModifyViewController *)mvc clickToSaveData:(NSString *)backValue
{
    self.countLabel.text = backValue;
}

- (IBAction)clickToBack:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
