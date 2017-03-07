//
//  City.m
//  39多分区显示数组数据表视图
//
//  Created by YuanLiang on 5/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "City.h"

@implementation City
+(NSArray *)demoData{
    City *c3 = [[City alloc]init];
    c3.name = @"天津";
    c3.allSubareas =@[@"滨海新区",@"和平区",@"河北区",@"河东区",@"河西区",@"南开区",@"红桥区",@"东丽区"];
    c3.population = 2000;
    
    City *c4 = [[City alloc]init];
    c4.name = @"上海";
    c4.allSubareas =@[@"黄浦",@"卢湾",@"静安",@"徐汇",@"长宁",@"虹口",@"静安",@"徐汇",@"长宁",@"虹口"];
    c4.population = 3000;
    
    City *c5 = [[City alloc]init];
    c5.name = @"杭州";
    c5.allSubareas =@[@"上城区",@"下城区",@"江干区",@"拱墅区",@"西湖",@"滨江区"];
    c5.population = 4232;
    
    return @[c3,c4,c5];
}
@end
