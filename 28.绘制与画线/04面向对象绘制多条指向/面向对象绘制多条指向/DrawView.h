//
//  DrawView.h
//  面向对象绘制多条指向
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"
@interface DrawView : UIView
@property(nonatomic,strong)NSMutableArray *lines;
@property(nonatomic,strong)UIColor *currentColor;
@property(nonatomic,assign)float currentWeith;

@property(nonatomic,strong)NSMutableArray *deletedLine;
@end
