//
//  GunPea.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "GunPea.h"

@implementation GunPea

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_4";
        self.imageCount  = 8;
        self.bulletName = @"bullet_4";
        self.HP = 5;
        self.costCount = 250;
    }
    return self;
}

@end
