//
//  BViewController.h
//  07反向传值
//
//  Created by YuanLiang on 4/20/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AViewController.h"
@interface BViewController : UIViewController
//公开一个属性,用于保存A的引用，应放在.h文件中
//只要持有对方的应用，就能发消息
@property(nonatomic,weak) AViewController * backReference;

@end
