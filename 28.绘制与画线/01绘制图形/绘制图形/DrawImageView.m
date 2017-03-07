//
//  DrawImageView.m
//  绘制图形
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//
 
#import "DrawImageView.h"

@implementation DrawImageView

//代码创建
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

//绘制图片
- (void)drawRect:(CGRect)rect {

    UIImage *image = [UIImage imageNamed:@"002"];
    [image drawInRect:CGRectMake(100, 100, 100, 100)];
}

@end
