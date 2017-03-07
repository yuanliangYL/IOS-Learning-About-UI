//
//  AViewController.m
//  28反向作业
//
//  Created by YuanLiang on 4/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()<BViewControllerDeleate>
@property (nonatomic,weak)UILabel *label;
//@property (nonatomic,weak)UIButton *button; ////why make this mistake?
@end

@implementation AViewController

- (void)viewDidLoad {//only once time
    [super viewDidLoad];
    UIButton * button = [[UIButton alloc]init];
    button.frame = CGRectMake(150, 500, 100, 100);
    button.backgroundColor = [UIColor blueColor];

    [button setTitle:@"跳转下一页" forState:UIControlStateNormal];
    [button setTintColor:[UIColor blueColor]];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(didClickGotoNextPage:) forControlEvents:UIControlEventTouchUpInside];
    
    
}
-(void)didClickGotoNextPage:(UIButton *)btn
{
    BViewController *bvc = [[BViewController alloc]init];
    bvc.delegate = self;
    
    [self presentViewController:bvc animated:YES completion:nil];
}

-(void)BViewController:(BViewController *)bvc didPostbackLocation:(CGRect)postbackData andContentFromBVC:(NSString *)str;
{
    UILabel * label = [[UILabel alloc]init];
    label.frame = postbackData;
    label.text = str;
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];

}


@end
