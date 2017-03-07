//
//  Plant.h
//  植物大战僵尸
//
//  Created by YuanLiang on 5/30/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Plant : UIImageView
//植物总类：植物图片名称、植物动画帧数
@property(nonatomic,strong)NSString *paletName;
@property(nonatomic,assign)NSInteger plantCount;

//动画实现方法
-(void)beginAnimation;

@end
