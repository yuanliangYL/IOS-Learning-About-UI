//
//  AViewController.m
//  21反向传值
//
//  Created by YuanLiang on 4/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
  
}
- (IBAction)clickGotoBVC:(UIButton *)sender {
    BViewController *bvc = [[BViewController alloc]init];
    
    bvc.backReference  = self;
//    推出bvc之前，将自己的引用给bvc持有
    
    [self presentViewController:bvc animated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated
{
//    NSLog(@"viewWillAppear");
    
    self.label.text = self.receiveValue;
}
//这两个有时差差异
-(void)viewDidAppear:(BOOL)animated
{
//    NSLog(@"viewDidAppear");
}
-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDisappear");
}

-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear");
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
