//
//  DrawView.m
//  绘制图形
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView
//代码创建
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

//通过storyboard关联创建执行该代码
//- (instancetype)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//        NSLog(@"coder");
//    }
//    return self;
//}

//绘制矩形
- (void)drawRect:(CGRect)rect {
    CGContextRef c = UIGraphicsGetCurrentContext();
 
//    设置边宽与颜色
    CGContextSetLineWidth(c, 2);
    CGContextSetStrokeColorWithColor(c, [UIColor redColor].CGColor);
    CGContextSetFillColorWithColor(c, [UIColor greenColor].CGColor);
//    矩形范围
    CGContextAddRect(c, CGRectMake(100, 100, 200, 200));
//    绘制模式
    CGContextDrawPath(c,   kCGPathFillStroke);
}

@end
