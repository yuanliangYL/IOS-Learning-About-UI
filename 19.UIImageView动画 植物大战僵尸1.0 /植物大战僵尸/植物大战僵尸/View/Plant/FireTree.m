//
//  FireTree.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "FireTree.h"

@implementation FireTree

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageName = @"plant_10";
        self.imageCount = 4;
    }
    return self;
}


@end
