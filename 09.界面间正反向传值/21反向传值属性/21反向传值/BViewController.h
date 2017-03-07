//
//  BViewController.h
//  21反向传值
//
//  Created by YuanLiang on 4/19/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AViewController.h"
@interface BViewController : UIViewController
//公开属性存储A的引用
@property (nonatomic,weak)AViewController *backReference;
//Reference引用
@end
