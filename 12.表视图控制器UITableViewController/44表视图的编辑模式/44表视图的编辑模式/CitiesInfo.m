//
//  CitiesInfo.m
//  37对象数组
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "CitiesInfo.h"

@implementation CitiesInfo
+(NSArray *)demoData{
    CitiesInfo *c1 = [[CitiesInfo alloc]init];
    c1.name = @"北京";
    c1.population = 2000;
    
    CitiesInfo *c2 = [[CitiesInfo alloc]init];
    c2.name = @"广州";
    c2.population = 3450;
    
    CitiesInfo *c3 = [[CitiesInfo alloc]init];
    c3.name = @"天津";
    c3.population = 5000;
    
    CitiesInfo *c4 = [[CitiesInfo alloc]init];
    c4.name = @"上海";
    c4.population = 6000;
    
    CitiesInfo *c5 = [[CitiesInfo alloc]init];
    c5.name = @"杭州";
    c5.population = 7000;
    
    
    return @[c1,c2,c3,c4,c5];
    
}
@end
