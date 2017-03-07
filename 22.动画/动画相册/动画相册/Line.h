//
//  Line.h
//  绘制多条线面向对象
//
//  Created by tarena on 16/6/6.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Line : NSObject
@property (nonatomic, strong)UIColor *color;
@property (nonatomic)float width;
@property (nonatomic, strong)NSMutableArray *points;
@end
