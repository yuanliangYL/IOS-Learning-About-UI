//
//  DrawView.m
//  网格绘制
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView


//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        self.backgroundColor = [UIColor whiteColor];
//    }
//    return self;
//}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"%@",coder);
//        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
//方法①：用矩形画网格
//    CGContextRef c = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(c, 1);
//    CGContextSetStrokeColorWithColor(c, [UIColor lightGrayColor].CGColor);
//    CGContextSetFillColorWithColor(c, [UIColor whiteColor].CGColor);
//    for (int i = 0; i < self.frame.size.width; i += 5) {
//        for (int j = 0; j < self.frame.size.height; j += 5) {
//            CGContextAddRect(c, CGRectMake(i, j, 5, 5));
//        }
//        CGContextDrawPath(c, kCGPathFillStroke);
//    }
    
    
//方法②：用直线画网格
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(c, [UIColor lightGrayColor].CGColor);
    
//    画线
    for (int i = 0; i < 200; i++) {
        CGContextMoveToPoint(c, i * 5, 0);
        CGContextAddLineToPoint(c, i * 5, 667);
        CGContextDrawPath(c, kCGPathStroke);
    }
    for (int i = 0; i < 200; i++) {
        CGContextMoveToPoint(c, 0, i * 5);
        CGContextAddLineToPoint(c, 375, i * 5);
        CGContextDrawPath(c, kCGPathStroke);
    }
    
}

@end
