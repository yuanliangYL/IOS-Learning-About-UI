//
//  DrawView.m
//  Day26DrawLine
//
//  Created by Ivan on 15/9/28.
//  Copyright (c) 2015年 Ivan. All rights reserved.
//

#import "DrawView.h"
#import "Line.h"
@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
          self.lines = [NSMutableArray array];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
    
    for (Line *l in self.lines) {
        
        CGContextSetStrokeColorWithColor(c, l.color.CGColor);
        CGContextSetLineWidth(c, l.width);
        
        for (int i=0; i<l.points.count; i++) {
            CGPoint p = [l.points[i] CGPointValue];
            if (i==0) {
                
                CGContextMoveToPoint(c, p.x, p.y);
                
            }else{
                CGContextAddLineToPoint(c, p.x, p.y);
            }
        }
        CGContextDrawPath(c, kCGPathStroke);
        
    }
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self];
    self.l = [[Line alloc]init];
    self.l.color = [UIColor blackColor];
    self.l.width = 1;
    
    [self.l.points addObject:[NSValue valueWithCGPoint:p]];
    [self.lines addObject:self.l];
    
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint p = [t locationInView:self];
    
     [self.l.points addObject:[NSValue valueWithCGPoint:p]];
    
    [self setNeedsDisplay];
}


@end
