//
//  MyViewController.m
//  14UIImageView
//
//  Created by YuanLiang on 16/4/14.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property(nonatomic) NSInteger number;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"backgroundImage.jpg"];
    
    UIImageView *IV =[[UIImageView alloc]init];
    IV.frame = CGRectMake(0, 0, 100, 100);
    IV.image = image;
    [self.view addSubview:IV];
    
    UIImageView * iv = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    iv.image = [UIImage imageNamed:@"01.jpg"];
    [self.view addSubview:iv];
    

    
    
//    IV.contentMode = UIViewContentModeScaleAspectFit;
    IV.contentMode = UIViewContentModeScaleAspectFill;
    IV.clipsToBounds = YES;
    self.number = 1;
}
- (IBAction)changeLastImage:(UIButton *)sender {
    self.number --;
    if (self.number == 1) {
        self.number = 8;
    }
    
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"0%ld.jpg",self.number]];
}
- (IBAction)changeImage:(UIButton *)sender {
    self.number ++;
    if (self.number == 8) {
        self.number = 1;
    }
    
    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"0%ld.jpg",self.number]];
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    self.number ++;
//    if (self.number == 8) {
//        self.number = 1;
//    }
//    
//    self.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"0%ld.jpg",self.number]];
//}

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
