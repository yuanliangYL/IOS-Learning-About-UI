//
//  PhotoView.h
//  动画相册
//
//  Created by YuanLiang on 6/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawView.h"
//申明一个表示状态的联合体
typedef NS_ENUM(NSUInteger, PhotoViewStates) {
    PhotoViewStatesNormal,
    PhotoViewStatesBig,
    PhotoViewStatesDraw,
};


//设置photoView里面的图片，绘制和移动属性
@interface PhotoView : UIView
@property(nonatomic ,strong)UIImageView * iv;
@property(nonatomic,strong)DrawView *dv;
@property(nonatomic,assign)float speed;
//记录原始状态
@property(nonatomic,assign)float oldSpeed;
@property(nonatomic,assign)float oldAlpha;
@property(nonatomic,assign)CGRect oldFrame;

//声明状态属性
@property(nonatomic,assign)PhotoViewStates pvState;
//自定义初始化
-(instancetype)initWithI:(int)i;
@end
