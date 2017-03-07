//
//  ViewController.m
//  pickView
//
//  Created by YuanLiang on 5/16/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UIPickerView *pickView;
@property(nonatomic,strong)NSArray * allfood;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pickView.dataSource = self;
    self.pickView.delegate = self;
   
}
-(NSArray *)allfood{
    if (!_allfood ) {
        NSString *filePath = [[NSBundle mainBundle]pathForResource:@"foodInfo.plist" ofType:nil];
        _allfood = [NSArray arrayWithContentsOfFile:filePath];
    }
    return _allfood;
}
#pragma mark - UIPickerViewDataSource
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return self.allfood.count;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray *arr = self.allfood[component];
    return arr.count;
}
//每行的文字
- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{//哪一列？
    NSArray *arr = self.allfood[component];
//    哪一行？
    return arr[row];
}
#pragma mark -  UIPickerViewDelegate
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSArray *arr = self.allfood[component];
    switch (component) {
        case 0:
            self.label1.text = arr[row];
            break;
        case 1:
            self.label.text = arr[row];
            break;
        case 2:
            self.label3.text = arr[row];
            break;
    }
}
@end
