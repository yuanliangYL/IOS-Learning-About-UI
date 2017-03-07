//
//  InputViewController.m
//  41增加数据
//
//  Created by YuanLiang on 5/5/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *populationTextField;

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Add Cities";
}
- (IBAction)clickButtonToSaveDataButton:(UIButton *)sender {
    CitiesInfo *city = [[CitiesInfo alloc]init];
    city.name = self.nameTextField.text;
    city.population = [self.populationTextField.text integerValue];
    [self.delegate inputViewController:self didInpitNewCity:city];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}



@end
