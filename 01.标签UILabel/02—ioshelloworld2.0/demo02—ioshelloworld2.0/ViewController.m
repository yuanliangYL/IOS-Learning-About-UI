//
//  ViewController.m
//  demo02—ioshelloworld2.0
//
//  Created by YuanLiang on 16/4/11.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{//控制器自带的view加载完毕
    [super viewDidLoad];//用super调用父类中该方法的版本，把父类要做的是做下去，然后思考新增加的事要做什么
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel * label = [[UILabel alloc ]init];
    label.text = @"Hello,Ios-World2.0";
    label.font = [UIFont systemFontOfSize:30];
    label.textColor = [UIColor redColor];
    label.backgroundColor = [UIColor yellowColor];

    
    label.frame = CGRectMake(100, 300, 250, 50);
    
    [self.view addSubview:label];
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
    
}




//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
