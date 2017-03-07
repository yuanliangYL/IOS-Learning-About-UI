//
//  CustomCollectionViewFlowLayout.m
//  代码设置集合视图
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CustomCollectionViewFlowLayout.h"
@interface CustomCollectionViewFlowLayout()

@end
@implementation CustomCollectionViewFlowLayout
+(instancetype)customLayout{
    CustomCollectionViewFlowLayout *layout = [[CustomCollectionViewFlowLayout alloc]initWithDirection:Vertical];
    return layout;
}

//设置方向
+(instancetype)customLayoutWithDirection:(Direction)dir{
    CustomCollectionViewFlowLayout *layout = [[CustomCollectionViewFlowLayout alloc]initWithDirection:dir];
    return layout;
}

-(instancetype)initWithDirection:(Direction)dir{
    if (self = [super init]) {
//初始化布局工作
        //    设置item大小
        self.itemSize = CGSizeMake(80, 80);
        //    设置最先行间隔
        self.minimumLineSpacing = 10;
        //    设置项与相之间的最小间隔
        self.minimumInteritemSpacing = 10;
        //    设置边距四个方向的间隔
        self.sectionInset = UIEdgeInsetsMake(154, 30, 154, 30);
        
        //    设置方向为水平方向滑动
        switch (dir) {
//             设置方向为水平滑动
            case Horizontal:
                self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
                break;
//             设置方向为垂直滑动
           case Vertical:
                self.scrollDirection = UICollectionViewScrollDirectionVertical;
                break;
        }
        
    }
    return self;
}
@end
