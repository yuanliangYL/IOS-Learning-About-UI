//
//  EatMeatFlower.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "EatMeatFlower.h"

@implementation EatMeatFlower

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_11";
        self.imageCount =  8;
    }
    return self;
}

@end
