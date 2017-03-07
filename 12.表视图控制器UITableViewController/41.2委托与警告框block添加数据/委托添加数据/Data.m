//
//  Data.m
//  Demo1_数组数据
//
//  Created by tarena on 16/5/20.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "Data.h"
#import "City.h"
@implementation Data

+(NSArray *)allCities {
    City *beijing = [[City alloc]init];
    beijing.name = @"北京";
    beijing.population = @"1000";
   
    
    City *shanghai = [[City alloc]init];
    shanghai.name = @"上海";
    shanghai.population = @"2000";
  
    
    
    City *guangdong = [[City alloc]init];
    guangdong.name = @"广东";
    guangdong.population = @"4334";
   
    
    City *hubei = [[City alloc]init];
    hubei.name = @"湖北";
    hubei.population = @"4342";
    
    return @[beijing, shanghai, guangdong, hubei];
}

@end











