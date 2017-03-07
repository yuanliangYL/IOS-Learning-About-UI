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
        self.allLines = [NSMutableArray array];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
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
    for (NSMutableArray *line in self.allLines){
        
        for (int i = 0; i < line.count; i++)
        {
            CGPoint p = [line[i] CGPointValue];
            if (i == 0) {
                CGContextMoveToPoint(ctr,p.x,p.y);
            }
            else{
                CGContextAddLineToPoint(ctr, p.x, p.y);
            }
        }
    }
    CGContextDrawPath(ctr, kCGPathStroke);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p  = [t locationInView: self];
    
//    每次触摸屏幕是一条新的线的开始 所以初始化线的数组
    self.points = [NSMutableArray array];
 
//    虽然此时line数组为空，但移动过程中会不断添加元素
    [self.allLines addObject:self.points];
    
    [self.points addObject:[NSValue valueWithCGPoint:p]];
    
//刷新一下
    [self setNeedsDisplay];
}


-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p  = [t locationInView: self];
    
    [self.points addObject:[NSValue valueWithCGPoint:p]];
    
    //刷新一下
    [self setNeedsDisplay];
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
  
}
@end
