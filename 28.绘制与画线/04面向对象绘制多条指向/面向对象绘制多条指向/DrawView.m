//
//  DrawView.m
//  面向对象绘制多条指向
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.lines = [NSMutableArray array];
        self.backgroundColor = [UIColor whiteColor];
        self.deletedLine = [NSMutableArray array];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef c = UIGraphicsGetCurrentContext();

//        遍历线段上的多有的点
        for (Line *line in self.lines) {
//        设置线的颜色 和 画笔粗细
            CGContextSetStrokeColorWithColor(c, line.color.CGColor);
            CGContextSetLineWidth(c, line.weith);
//       遍历每一个点
            for (int i=0; i<line.points.count; i++) {
                
                CGPoint p = [line.points[i] CGPointValue];
                
                if (i==0) {
                    CGContextMoveToPoint(c, p.x, p.y);
                }else{
                    CGContextAddLineToPoint(c, p.x, p.y);
                }
            }
            //    绘制
            CGContextDrawPath(c,  kCGPathStroke);//此句位置与逻辑作用
        }
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//   获取触点
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self];
//    创建line实例
    Line *line = [[Line alloc]init];
//    设置颜色、宽度、点
    line.color = self.currentColor;
    line.weith = self.currentWeith;
    [line.points addObject:[NSValue valueWithCGPoint:p]];
//    将line实例添加到当前类的line属性中
    [self.lines addObject:line];
//   重绘视图
    [self setNeedsDisplay];
    [self.deletedLine removeAllObjects];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self];

// 移动过程中的line为当前最新创建添加的line，然后将移动中的点添加到该线段中
    Line *line = [self.lines lastObject];
    
    [line.points addObject:[NSValue valueWithCGPoint:p]];
    
    [self setNeedsDisplay];
}
@end
