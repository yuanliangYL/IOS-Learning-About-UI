//
//  AViewController.m
//  07反向传值
//
//  Created by YuanLiang on 4/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()<BViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation AViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor brownColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
//此方法等待着被调用，什么时候调用了，再来将接收的str显示到标签上
//-(void)didReceiveBackValue:(NSString *)str
//{
//    self.label.text = str;
//}
-(void)bViewController:(BViewController *)bvc didInputstr:(NSString *)str
{
    self.label.text = str;
}

- (IBAction)clickGotoBVC:(UIButton *)sender {
    BViewController * bvc = [[BViewController alloc]init];
    
//    bvc.backReference = self;
    bvc.delegate = self;
    
    [self presentViewController:bvc animated:YES completion:nil];
    
}

//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:YES];
//    self.label.text = self.backValue;
//}//这两种方法在显示的差异在于显示时差！！！！
//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:YES];
//    self.label.text = self.backValue;
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
