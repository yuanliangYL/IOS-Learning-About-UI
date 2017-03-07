//
//  AddCityViewController.m
//  44表视图的编辑模式
//
//  Created by YuanLiang on 5/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AddCityViewController.h"
#include "CitiesInfo.h"
@interface AddCityViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation AddCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)ClickToSaveCity:(UIButton *)sender {
    CitiesInfo *city = [[CitiesInfo alloc]init];
    city.name = self.nameTextField.text;
    [self.delegate addCityViewController:self didInputCityInfo:city];
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
