//
//  SnowView.m
//  定时器雪花
//
//  Created by YuanLiang on 5/25/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "SnowView.h"

@implementation SnowView
-(void)awakeFromNib{
//    添加定时器
//    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(update) userInfo:nil repeats:YES];

//定时器方法3：创建CADisplayLink（当每一屏幕刷新就会调用，每一秒刷新60次）
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(update)];
   [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    
}
-(void)update{
    SNOW_Y1 += 4;
    SNOW_Y2 += 5;
    SNOW_Y3 +=  3;
    SNOW_Y4 +=  4;
    if (SNOW_Y1 > self.bounds.size.height ) {
        SNOW_Y1 = 0;
        
    }else if (SNOW_Y2> self.bounds.size.height){
        SNOW_Y2 = 0;
    }else if (SNOW_Y3 > self.bounds.size.height){
         SNOW_Y3 = 0;
    }else if( SNOW_Y4 > self.bounds.size.height){
         SNOW_Y4 = 0;
    }
    
//   setNeedsDisplay 他会调用drawRect:方法，他不是立马调用，只是设一个标志，每当下一次屏幕刷新时调用
    [self setNeedsDisplay];//to notify the system that your view’s contents need to be redrawn.
}

static int SNOW_Y1 = 20;
static int SNOW_Y2 = 250;
static int SNOW_Y3 = 190;
static int SNOW_Y4 = 380;

- (void)drawRect:(CGRect)rect {
//    加载图片
    UIImage *image1 = [UIImage imageNamed:@"01"];
//    绘图
    [image1 drawInRect:CGRectMake(20, SNOW_Y1, 30, 30)];
    
    UIImage *image2 = [UIImage imageNamed:@"01"];
    [image2 drawInRect:CGRectMake(170, SNOW_Y2, 40, 50)];
    
    UIImage *image3 = [UIImage imageNamed:@"01"];
    [image3 drawInRect:CGRectMake(100,SNOW_Y3, 60, 60)];
    
    UIImage *image4 = [UIImage imageNamed:@"01"];
    [image4 drawInRect:CGRectMake(230, SNOW_Y4, 70, 75)];
    
    
}


@end
