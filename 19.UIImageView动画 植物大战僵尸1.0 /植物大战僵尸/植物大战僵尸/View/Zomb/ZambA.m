//
//  ZambA.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ZambA.h"

@implementation ZambA

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombName = @"zomb_4";
        self.speed = 1;
        self.oldSpeed = self.speed;
        self.life = 10;
    }
    return self;
}
@end
