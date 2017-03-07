//
//  CitiesInfo.h
//  37对象数组
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
//数据模型类：城市类
//用于存储城市名和人口信息
@interface CitiesInfo : NSObject

@property (nonatomic,copy)NSString * name;
@property(nonatomic,assign)NSInteger population;

+(NSArray *)demoData;

@end
