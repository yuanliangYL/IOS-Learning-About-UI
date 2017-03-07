//
//  Line.h
//  面向对象绘制多条指向
//
//  Created by YuanLiang on 6/6/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Line : NSObject
@property(nonatomic,strong)NSMutableArray *points;
@property(nonatomic,strong)UIColor *color;
@property(nonatomic,assign)float weith;

@end
