
//
//  SefmentedViewController.m
//  分段控键Segmented Control
//
//  Created by YuanLiang on 5/25/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SefmentedViewController.h"

@interface SefmentedViewController ()
@property (weak, nonatomic) IBOutlet UIView *v;
@property(nonatomic,strong)NSMutableArray<UIColor *>* allColor;
@end

@implementation SefmentedViewController
-(NSMutableArray<UIColor *> *)allColor{//数组泛型的应用
    if (!_allColor) {
        _allColor = [@[[UIColor redColor],[UIColor yellowColor],[UIColor blackColor],[UIColor greenColor]]mutableCopy];
    }
    return _allColor;
}

- (IBAction)changeBackground:(UISegmentedControl *)sender {
//    switch (sender.selectedSegmentIndex) {
//        case 0:
//            self.v.backgroundColor = [UIColor redColor];
//            break;
//        case 1:
//            self.v.backgroundColor = [UIColor yellowColor];
//            break;
//        case 2:
//            self.v.backgroundColor = [UIColor blackColor];
//            break;
//        case 3:
//            self.v.backgroundColor = [UIColor greenColor];
//            break;
//    }
    self.v.backgroundColor = self.allColor[ sender.selectedSegmentIndex];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.v.backgroundColor = [UIColor redColor];
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
