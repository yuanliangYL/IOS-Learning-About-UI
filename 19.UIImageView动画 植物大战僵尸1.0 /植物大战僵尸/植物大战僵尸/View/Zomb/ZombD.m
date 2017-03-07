//
//  ZombD.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/31/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ZombD.h"

@implementation ZombD

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombName = @"zomb_2";
        self.speed = 4;
                self.oldSpeed = self.speed;
        self.life = 16;
    }
    return self;
}

@end
