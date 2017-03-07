//
//  BigPea.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "BigPea.h"

@implementation BigPea

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_2";
        self.imageCount  = 8;
        self.bulletName = @"bullet_3";
        self.HP = 4;
        self.costCount = 150;
    }
    return self;
}

@end
