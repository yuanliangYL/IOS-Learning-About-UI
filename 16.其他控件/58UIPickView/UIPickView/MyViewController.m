//
//  MyViewController.m
//  UIPickView
//
//  Created by YuanLiang on 5/25/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"
//这里遵守协议的同时，也不能忘了在XIB中通过连线将当前控制器设置为PIckView的代理人
@interface MyViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>
 @end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//pickView有几列
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}
//每一列个有多少行
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return 5;
    }
    else if (component == 1){
        return 6;
    }
    else
        return 9;
}
//每一行什么样文字
//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    if(component == 0){
//        return @"5";
//    }
//    else if (component == 1){
//        return @"6";
//    }
//    else
//        return @"9";
//}

//每一行是什么样的视图
-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
//    用该方法进行复用
    if (view == nil) {
       view = [[UIView alloc]init];
        view.frame = CGRectMake(0, 0, 50, 20);
    }
        if(component == 0){
            view.backgroundColor = [UIColor redColor];        }
        else if (component == 1){
         view.backgroundColor = [UIColor blackColor];
        }
        else{
            view.backgroundColor = [UIColor yellowColor];
       }
    return view;
}

@end
