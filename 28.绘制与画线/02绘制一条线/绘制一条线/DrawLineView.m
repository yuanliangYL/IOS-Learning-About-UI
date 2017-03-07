//
//  DrawLineView.m
//  30.绘制与画线
//
//  Created by YuanLiang on 6/4/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawLineView.h"

@implementation DrawLineView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.points = [NSMutableArray array];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

//界面载入时会自动调用，且只会自动调用一次
- (void)drawRect:(CGRect)rect {
    // Drawing code
//    获取绘图环境
    CGContextRef ctr = UIGraphicsGetCurrentContext();
//    设置字体颜色
    CGContextSetRGBStrokeColor(ctr, 223 / 255.0, 233/ 255.0, 28/ 255.0, 1);
//    设置画笔粗细
    CGContextSetLineWidth(ctr, 2);
    
////    绘制画笔移动的起始点:就是相当于你的笔的下笔处
//    CGContextMoveToPoint(ctr, 100, 100);
////    设置绘制直线要到达的终点:就是你的笔离开纸的那一点，然后就在这两个点之间画了一条线段
//    CGContextAddLineToPoint(ctr, 300, 400);
//// 实现绘制路径与模式，开始绘图
        
        for (int j = 0; j < self.points.count; j++)
        {
//            将数组元素拆包回CGPoint类型
            CGPoint p = [self.points[j] CGPointValue];
            if (j == 0) {
                CGContextMoveToPoint(ctr,p.x,p.y);
            }
            else{
                CGContextAddLineToPoint(ctr, p.x, p.y);
            }
        }

    CGContextDrawPath(ctr, kCGPathStroke);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p  = [t locationInView: self];
    
    [self.points addObject:[NSValue valueWithCGPoint:p]];
    
//刷新一下，手动调用绘图方法，实现绘制
    [self setNeedsDisplay];
}


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p  = [t locationInView: self];
    [self.points addObject:[NSValue valueWithCGPoint:p]];
    //刷新一下
    [self setNeedsDisplay];
}

//这里之所以只能绘制一条直线，是因为下次开始时，会将上次结束的那个点作为起始点，线段始终连续不断
@end
