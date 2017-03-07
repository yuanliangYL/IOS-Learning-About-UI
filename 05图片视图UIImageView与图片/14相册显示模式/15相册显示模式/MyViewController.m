//
//  MyViewController.m
//  15相册显示模式
//
//  Created by YuanLiang on 16/4/14.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pickImages;
@property (weak, nonatomic) IBOutlet UIButton *lastButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property(nonatomic) NSInteger number;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.number = 1;
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)changeToLast:(UIButton *)sender {
    self.number --;
    if (self.number == 0) {
        self.number = 7;
    }
    
    self.pickImages.image = [UIImage imageNamed:[NSString stringWithFormat:@"0%ld.jpg",self.number]];
}

- (IBAction)changeToNext:(UIButton *)sender {
    self.number ++;
    if (self.number == 8) {
        self.number = 1;
    }
    self.pickImages.image = [UIImage imageNamed:[NSString stringWithFormat:@"0%ld.jpg",self.number]];
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
