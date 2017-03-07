//
//  ZombC.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/31/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ZombC.h"

@implementation ZombC

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombName = @"zomb_1";
        self.speed = 3;
                self.oldSpeed = self.speed;
        self.life = 14;
    }
    return self;
}

@end
