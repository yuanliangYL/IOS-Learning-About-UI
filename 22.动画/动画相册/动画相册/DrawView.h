//
//  DrawView.h
//  Day26DrawLine
//
//  Created by Ivan on 15/9/28.
//  Copyright (c) 2015年 Ivan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"
@interface DrawView : UIView

@property (nonatomic, strong)NSMutableArray *lines;
@property (nonatomic, strong)Line *l;

@end
