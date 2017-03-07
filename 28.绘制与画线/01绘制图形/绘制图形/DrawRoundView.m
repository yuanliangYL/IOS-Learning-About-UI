//
//  DrawRoundView.m
//  绘制图形
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawRoundView.h"

@implementation DrawRoundView

//代码创建
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

//绘制圆形,椭圆形
- (void)drawRect:(CGRect)rect {
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    //    设置边宽与颜色
    CGContextSetLineWidth(c, 2);
    CGContextSetStrokeColorWithColor(c, [UIColor redColor].CGColor);
//    CGContextSetFillColorWithColor(c, [UIColor greenColor].CGColor);
    //    圆形范围(矩形内切）
//    ellipse：椭圆
    CGContextAddEllipseInRect(c, CGRectMake(100, 100, 100, 200));
    //    绘制模式
    CGContextDrawPath(c,   kCGPathStroke);
}

@end
