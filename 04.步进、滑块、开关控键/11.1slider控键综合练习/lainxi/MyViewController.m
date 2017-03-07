//
//  MyViewController.m
//  lainxi
//
//  Created by YuanLiang on 5/11/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *MInButton;
@property (weak, nonatomic) IBOutlet UIButton *MaxButton;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.Label.text = [NSString stringWithFormat:@"%.2f",self.slider.value];
}
- (IBAction)changeValue:(UISlider *)sender {
    self.Label.text = [NSString stringWithFormat:@"%.2f",sender.value];
    self.Label.font = [UIFont systemFontOfSize:sender.value];
}

- (IBAction)ClickToChangeSlideValue:(UIButton *)sender {
    if (sender == self.MaxButton) {
        self.slider.value = self.slider.maximumValue;
    }else
    {
       self.slider.value = self.slider.minimumValue;
    }
    [self changeValue:self.slider];
    //这里的两个self是不同的
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
