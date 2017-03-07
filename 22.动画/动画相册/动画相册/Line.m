//
//  Line.m
//  绘制多条线面向对象
//
//  Created by tarena on 16/6/6.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "Line.h"

@implementation Line
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.points = [NSMutableArray array];
    }
    return self;
}




@end
