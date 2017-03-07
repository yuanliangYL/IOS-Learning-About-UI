//
//  MyViewController.m
//  11UIStepper
//
//  Created by YuanLiang on 16/4/14.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *switchLabel;

@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

@property(nonatomic,getter=isOn) BOOL isOn;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.stepper.maximumValue = 100;
    self.stepper.minimumValue = 0;
    self.stepper.stepValue = 2;
    self.stepper.value = 56;
    self.label.text = [NSString stringWithFormat:@"%.0f",self.stepper.value];
    self.label.font = [UIFont systemFontOfSize:self.stepper.value];
    
    
    self.slider.maximumValue = 1;
    self.slider.minimumValue = 0;
    self.slider.value = 0.7;
    self.sliderLabel.text = [NSString stringWithFormat:@"%f",self.slider.value];
    self.sliderLabel.backgroundColor = [UIColor colorWithRed:self.slider.value green:230 / 255.0 blue:123 / 255.0 alpha:1];
    
    self.switchLabel.backgroundColor = [UIColor yellowColor];

}
- (IBAction)clickStepperToChangeValue:(id)sender {
    UIStepper *sender1 = sender;
    self.label.text = [NSString stringWithFormat:@"%.0f",sender1.value];
    self.label.font = [UIFont systemFontOfSize:sender1.value];
    }



- (IBAction)touchSliderToChangeValue:(UISlider *)sender {
    self.sliderLabel.text = [NSString stringWithFormat:@"%f",sender.value];
    self.sliderLabel.backgroundColor = [UIColor colorWithRed:sender.value green:230 / 255.0 blue:123 / 255.0 alpha:1];
}



- (IBAction)clickSwitchToChangeValue:(UISwitch *)sender {
// 方法一、   if (sender.on == YES)
//    {
//        self.switchLabel.text = @"open";
//        self.switchLabel.backgroundColor = [UIColor yellowColor];
//    }
//    else
//    {
//        self.switchLabel.text = @"close";
//      self.switchLabel.backgroundColor = [UIColor whiteColor];
//    }
//    方法二、
    self.switchLabel.text = sender.on ? @"open" : @"close";
    self.switchLabel.backgroundColor = sender.isOn ? [UIColor yellowColor] : [UIColor whiteColor];
//    三目预算符与switch开关控件的联动使用
}

- (IBAction)changeSwitch:(UIButton *)sender {
//    self.mySwitch.on = !self.mySwitch.isOn;//左侧赋值，右侧读值（可改名）
    [self.mySwitch setOn:!self.mySwitch.isOn animated:YES];
    
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
