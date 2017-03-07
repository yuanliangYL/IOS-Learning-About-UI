//
//  SunFlower.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SunFlower.h"

@implementation SunFlower

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_0";
        self.imageCount  = 8;
         //控件的交互开关
        self.userInteractionEnabled = YES;
        self.HP = 2;
        self.costCount = 50;
//        视图的交互式默认关闭的
    }
    return self;
}

-(void)beginFire{
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(addButton:) userInfo:nil repeats:YES];
}

//添加阳光按钮
-(void)addButton:(NSTimer *)timer
{
    UIButton *sunBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 25, 25, 25)];
    [sunBtn setImage:[UIImage imageNamed:@"sun"] forState:UIControlStateNormal];
     //    点击移除
    [sunBtn addTarget:self action:@selector(sunClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:sunBtn];//不要少了这一步

//    定时移除
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(autoRemove:) userInfo:sunBtn repeats:YES];
    
    
}
-(void)sunClicked:(UIButton *)sender{
    [sender removeFromSuperview];
    
//    搜集阳光添加金币
    [self.delegate addMoney:25];
    
}

-(void)autoRemove:(NSTimer *)timer{
    UIButton *btn = timer.userInfo;
    [btn removeFromSuperview];
}
@end
