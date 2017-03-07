//
//  DrawArcView.m
//  绘制图形
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawArcView.h"

@implementation DrawArcView

//代码创建
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

//绘制扇形
- (void)drawRect:(CGRect)rect {
    CGContextRef c = UIGraphicsGetCurrentContext();
    
//    设置边框及内部颜色
    
    CGContextSetStrokeColorWithColor(c, [UIColor clearColor].CGColor);
    CGContextSetFillColorWithColor(c, [UIColor yellowColor].CGColor);
    
//    弧形范围
//    添加扇形 需要先把画笔移动到中心点
    CGContextMoveToPoint(c, 100, 150);
//    100 150 代表中心点  80代表半径  后面是弧度开始结束角度  最后一个顺逆时针
//    弧度公式M_PI/180*角度
    CGContextAddArc(c, 100, 150, 60, M_PI/180*45, M_PI/180*90, 1);
    
//    绘制模式
    CGContextDrawPath(c,   kCGPathFillStroke);
}

@end
