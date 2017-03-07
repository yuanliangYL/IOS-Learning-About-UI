//
//  ZombImageVIew.m
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ZombImageVIew.h"

@implementation ZombImageVIew

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.zombName = @"zomb_7";
        self.imageCount = 9;
    }
    return self;
}



-(void)beginAnimation{

//    加载图片
UIImage *zombImage = [UIImage imageNamed:self.zombName];

float w = zombImage.size.width / self.imageCount;
NSMutableArray *allImages =[NSMutableArray array];

//    利用for循环取出大图片中不同动作的小图片
for (int i = 0; i < self.imageCount; i++) {
    //    图片截取方法：获取CGImage图片
    CGImageRef subImage = CGImageCreateWithImageInRect(zombImage.CGImage, CGRectMake(w * i, 0, w, zombImage.size.height));
    
    //        将截取的图片转换成UIImage图片
    UIImage *image = [UIImage imageWithCGImage:subImage];
    
    //        将获取的图片放到数组中
    [allImages addObject:image];
    
    //        释放CGImage图片（非OC要自己释放）
    CGImageRelease(subImage);
}

//    动画相关设置
[self setAnimationImages:allImages];
[self setAnimationDuration:.5];
[self setAnimationRepeatCount:100];
[self startAnimating];


//    移动设置
[NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(moveAction:) userInfo:nil repeats:YES];
}


-(void)moveAction:(NSTimer *)timer
{
    //    更改中心点的X轴
   self.center = CGPointMake(self.center.x - 10, self.center.y);
}

@end
