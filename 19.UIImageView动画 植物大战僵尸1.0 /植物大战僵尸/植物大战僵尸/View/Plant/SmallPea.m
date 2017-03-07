//
//  SmallPea.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SmallPea.h"

@implementation SmallPea

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_2";
        self.imageCount  = 8;
        self.allBullet = [NSMutableArray array];
        self.bulletName = @"bullet_0";
        self.HP = 3;
        self.costCount = 100;
    }
    return self;
}
-(void)beginFire{
    [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(bulletAction) userInfo:nil repeats:YES];
}
-(void)bulletAction{
    UIImageView *bulletIV  = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 15, 15)];
    bulletIV.image = [UIImage imageNamed:self.bulletName];
    bulletIV.center =CGPointMake(self.superview.center.x+ 18, self.superview.center.y - 10);
    
//    添加到父视图中self.delegate.view = viewcontroller.view
    [self.delegate.view addSubview:bulletIV];
    
    [self.allBullet addObject:bulletIV];


}

@end
