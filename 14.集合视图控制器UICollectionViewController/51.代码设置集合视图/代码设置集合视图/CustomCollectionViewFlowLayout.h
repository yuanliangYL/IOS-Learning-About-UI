//
//  CustomCollectionViewFlowLayout.h
//  代码设置集合视图
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  enum {
    Horizontal,
    Vertical,
}Direction;

@interface CustomCollectionViewFlowLayout : UICollectionViewFlowLayout
//默认垂直方向滚动:通过其他的工厂方法间接的创建对象
+(instancetype)customLayout;
//参数设置滚动方向：通过工厂方法传入方向参数，创建对象
+(instancetype)customLayoutWithDirection:(Direction)dir;

-(instancetype)initWithDirection:(Direction)dir;

@end
