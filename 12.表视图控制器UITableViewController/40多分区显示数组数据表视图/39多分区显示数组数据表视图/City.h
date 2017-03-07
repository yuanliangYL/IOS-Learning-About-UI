//
//  City.h
//  39多分区显示数组数据表视图
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSArray *allSubareas;
@property(nonatomic,assign)NSInteger population;

+(NSArray *)demoData;

@end
