//
//  addLabelViewController.m
//  05作业
//
//  Created by YuanLiang on 16/4/12.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "addLabelViewController.h"

@interface addLabelViewController ()
@property (nonatomic)CGFloat y;
@property(nonatomic,strong) NSString * text;
@end

@implementation addLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.y = 70;
    self.text = @"hello";
    self.view.backgroundColor = [UIColor blueColor];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(20, 20, 280, 30);
    [button setTitle:@"ADD" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(addLabel:)forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    
    
    // Do any additional setup after loading the view.
}


-(void)addLabel:(UIButton * )btn
{
    
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(20, self.y, 280, 30);
    label.backgroundColor = [UIColor lightGrayColor];
    label.text = self.text;
    [self.view addSubview:label];
    
   self.y += 40;
   self.text = [self.text stringByAppendingString:@"  world"];
    

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
