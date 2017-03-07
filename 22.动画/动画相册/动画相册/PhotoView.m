//
//  PhotoView.m
//  动画相册
//
//  Created by YuanLiang on 6/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "PhotoView.h"

@implementation PhotoView

- (instancetype)initWithI:(int)i
{
    self = [super init];
    if (self) {
        float flag = i / 12.0;
        self.alpha  = flag;
        self.speed = flag * 3;
        float w = 45 + (150 * flag);
        float h = 30 + (100 *flag);
        self.frame = CGRectMake(-w, arc4random() %(int)(667 - h),w, h);
        
        self.dv = [[DrawView alloc]initWithFrame:self.bounds];
//        初始化时关闭交互
         self.dv.userInteractionEnabled = NO;
        [self addSubview:self.dv];
        
//创建图片 要显示在绘制控件的上面
        self.iv = [[UIImageView alloc]initWithFrame:self.bounds];
        [self addSubview:self.iv];
        
//        加白边
        self.layer.borderColor   = [UIColor whiteColor].CGColor;
        self.layer.borderWidth = 2;
        
//        添加单击事件
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
        [self addGestureRecognizer:tap];
        
        
//       添加双指点击事件
        UITapGestureRecognizer *twoTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(twoTapAction)];
//设置2个手指点击
        twoTap.numberOfTouchesRequired = 2;
        [self addGestureRecognizer:twoTap];
    }
    return self;
}



- (void)tapAction{
//    判断photo状态，点击恢复移动
    if (self.pvState == PhotoViewStatesBig) {
        [UIView animateWithDuration:1 animations:^{
            self.frame = self.oldFrame;
            self.iv.frame = self.bounds;
            self.dv.frame = self.bounds;
            
            self.speed = self.oldSpeed;
            self.alpha = self.oldAlpha;
        }];
        //从放大状态变成流动normal
        self.pvState = PhotoViewStatesNormal;
    }
    
    else if(self.pvState == PhotoViewStatesNormal){
//        保存原始移动状态参数
        self.oldFrame = self.frame;
        self.oldSpeed = self.speed;
        self.oldAlpha = self.alpha;
//    点击放大
        [UIView animateWithDuration:1 animations:^{
        self.bounds = CGRectMake(0, 0, 300, 200);
        self.center = CGPointMake(375 * .5, 667 * .5);
       
        self.speed = 0;
        self.alpha = 1;
        self.iv.frame = self.bounds;
        self.dv.frame = self.bounds;
            
//    选中置于前端
        [self.superview bringSubviewToFront:self];
        }];
        self.pvState = PhotoViewStatesBig;
    }
}

-(void)twoTapAction{
//    随机动画方向
    NSArray *subtypes = @[@"fromLeft",@"fromTop",@"fromRight",@"fromBottom"];
    int i = arc4random() % 4;
    NSString *subType =subtypes[i];
    
    if (self.pvState == PhotoViewStatesBig) {
        [self exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
        
//        加动画
        CATransition *animation = [[CATransition alloc]init];
        animation.duration = 1;
        animation.type = @"cube";
        animation.subtype = subType;
        [self.layer addAnimation:animation forKey:nil];
        self.pvState = PhotoViewStatesDraw;
//        进入绘制，打开交互
       self.dv.userInteractionEnabled = YES;
    }
    else if (self.pvState == PhotoViewStatesDraw){
        [self exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
        CATransition *animation = [[CATransition alloc]init];
        animation.duration = 1;
        animation.type = @"cube";
        animation.subtype = subType;
        [self.layer addAnimation:animation forKey:nil];
        self.pvState = PhotoViewStatesBig;
//        推出绘制，关闭绘制交互
        self.dv.userInteractionEnabled = NO;
    }
}
@end
