//
//  PickViewController.m
//  时间选择DatePickView
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "PickViewController.h"

@interface PickViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePick;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation PickViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *date = self.datePick.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"HH:mm:ss yyyy-MM-dd";
    NSString *dateString = [formatter stringFromDate:date];
    self.label.text = dateString;
    
}
- (IBAction)chooseTime:(UIButton *)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy年MM月dd日 HH:mm:ss";
    NSString *dateString = [formatter stringFromDate:self.datePick.date];
    self.label.text = [NSString stringWithFormat:@"%@",dateString];
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
