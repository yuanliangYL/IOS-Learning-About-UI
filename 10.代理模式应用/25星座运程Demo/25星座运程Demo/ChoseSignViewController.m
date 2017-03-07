//
//  ChoseSignViewController.m
//  25星座运程Demo
//
//  Created by YuanLiang on 4/21/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ChoseSignViewController.h"

@interface ChoseSignViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *allSignButton;
//增加数组存储运程
@property(nonatomic,strong)NSArray *allLuckyInfo;
@end

@implementation ChoseSignViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)clickSignButton:(UIButton *)sender {
    NSInteger index = [self.allSignButton indexOfObject:sender];
    [self.delegate choseSignViewController:self didFinishChoseSignWithInfo:self.allLuckyInfo[index]];
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

//lazy loading
-(NSArray *)allLuckyInfo
{
    if (!_allLuckyInfo) {
        _allLuckyInfo = @[@"升值加薪",@"出任CEO",@"迎娶白富美",@"走向人生巅峰",@"2016年中头奖",@"收个大红包"];
    }
    return _allLuckyInfo;
}
@end
