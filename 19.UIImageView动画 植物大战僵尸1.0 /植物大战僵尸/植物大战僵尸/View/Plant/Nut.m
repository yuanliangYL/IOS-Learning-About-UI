//
//  Nut.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Nut.h"

@implementation Nut

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_5";
        self.imageCount  = 8;
        self.HP = 8;
        self.costCount = 300;
    }
    return self;
}
@end
