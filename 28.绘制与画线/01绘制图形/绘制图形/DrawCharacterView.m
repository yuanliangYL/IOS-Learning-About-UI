//
//  DrawCharacterView.m
//  绘制文字
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "DrawCharacterView.h"

@implementation DrawCharacterView
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
    [@"我是文字哈哈哈哈哈哈" drawInRect:CGRectMake(100, 200, 200, 50) withAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor],NSFontAttributeName:[UIFont systemFontOfSize:20]}];
}

@end
