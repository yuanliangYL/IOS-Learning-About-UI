//
//  MyViewController.m
//  zuoye
//
//  Created by YuanLiang on 5/9/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property(nonatomic,assign)CGFloat x;
@property(nonatomic,assign)CGFloat y;
//@property(nonatomic,assign)NSInteger count;
@property(nonatomic,assign)BOOL isRight;
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.x = 0;
     self.y = 90;
//    self.count = 0;
    self.isRight = NO;
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50,30, 200, 50);
    [button setTitle:@"Add Label" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(clickToAddlabel:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)clickToAddlabel:(UIButton *)btn
{
//    self.count ++;
//    if (self.count % 2 != 0){
//                self.x = 0;
//            }else if(self.count % 2 == 0)
//            {
//                self.x += 170;
//            }
    self.isRight = !self.isRight;
    if (self.isRight == YES) {
        self.x = 0;
    }
     else
     {
         self.x += 170;
     }
    
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(self.x, self.y, 150, 50);
    label.text =@"hello ios world";
    label.backgroundColor = [UIColor whiteColor];
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:label];
    self.y += 60;
}

@end
