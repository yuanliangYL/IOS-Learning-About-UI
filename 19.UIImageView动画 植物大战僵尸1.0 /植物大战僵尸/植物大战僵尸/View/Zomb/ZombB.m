//
//  ZombB.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ZombB.h"

@implementation ZombB

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombName = @"zomb_3";
         self.speed = 2;
                self.oldSpeed = self.speed;
        self.life = 12;
    }
    return self;
}

@end
