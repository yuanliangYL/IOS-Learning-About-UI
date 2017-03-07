//
//  Line.m
//  面向对象绘制多条指向
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Line.h"

@implementation Line
//创建line对象是初始化point属性来创建点数组
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.points = [NSMutableArray array];
    }
    return self;
}
@end
