//
//  AddViewController.m
//  委托添加数据
//
//  Created by YuanLiang on 5/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cityName;
@property (weak, nonatomic) IBOutlet UITextField *population;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.navigationItem.title = @"添加新城市";
}
- (IBAction)SaveData:(UIButton *)sender {
    [self.delegate AddViewController:self didInputCityName:self.cityName.text andPopulation:self.population.text];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
