//
//  ViewController.m
//  故事板下的跳转设置
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//跳转方式1：有明确跳转源头
//跳转方式2：无明确跳转源头，有连线
//跳转方式3：向独立Viewcontroller跳转
//跳转方式4：跳转到通过XIB创建的VC
//跳转方式5：跳转到另一个故事板

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//方式2
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//无明确跳转源头的跳转方式
//    点击空白处跳转到另一个VC
//    通过表示为goGreenVC的 segue进行跳转
//    第一个参数是已经设置的segue连线的表示名，第二个参数是跳转过程中可能传递的数据信息
    [self performSegueWithIdentifier:@"goGreenVC" sender:nil];
    
}
//方式3
- (IBAction)segueTocClaret:(UIButton *)sender {
//    通过claretVC在故事板中的storyboard ID标识把该标识对应的控制器实例创建出来(这种创建控制器实例的方法注意一下)
//    UIViewController中有一个storyboard 属性，通过该属性实现instantiateViewControllerWithIdentifier方法，实现控制器实例的创建
    UIViewController *claretVC = [self.storyboard instantiateViewControllerWithIdentifier:@"claretVC"];
//    用代码present或push跳转到故事板中独立的场景中
    [self presentViewController:claretVC animated:YES completion:nil];
    
}
//方式4
- (IBAction)segueToXib:(UIButton *)sender {
    MyViewController *myVC  = [[MyViewController alloc]initWithNibName:@"MyViewController" bundle:nil];
    [self presentViewController:myVC animated:YES completion:nil];
    
}

//方式5
- (IBAction)segueToStoryboard:(UIButton *)sender {
//    通过storyboard名称来创建目标故事板实例
    UIStoryboard *loginStoryboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
//    修改window的rootViewcontroller为新的storyboard的初始视图控制器
    self.view.window.rootViewController = loginStoryboard.instantiateInitialViewController;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
