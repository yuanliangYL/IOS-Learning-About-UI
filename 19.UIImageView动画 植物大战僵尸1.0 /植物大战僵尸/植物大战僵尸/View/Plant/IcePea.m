//
//  IcePea.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "IcePea.h"

@implementation IcePea

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_3";
        self.imageCount = 8;
        self.bulletName = @"bullet_1";
        self.HP = 5;
        self.costCount = 200;
    }
    return self;
}

@end
