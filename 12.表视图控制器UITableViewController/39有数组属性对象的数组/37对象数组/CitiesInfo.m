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
    c1.allSubareas =@[@"东城",@"西城",@"朝阳",@"海淀",@"中南海"];
    
    CitiesInfo *c2 = [[CitiesInfo alloc]init];
    c2.name = @"广州";
    c2.population = 3450;
    c2.allSubareas =@[@"珠海市",@"汕头市",@"佛山",@"韶关市",@"湛江市",@"肇庆市",@"江门市"];
    
    CitiesInfo *c3 = [[CitiesInfo alloc]init];
    c3.name = @"天津";
    c3.population = 5000;
    c3.allSubareas =@[@"滨海新区",@"和平区",@"河北区",@"河东区",@"河西区",@"南开区",@"红桥区",@"东丽区"];
    
    CitiesInfo *c4 = [[CitiesInfo alloc]init];
    c4.name = @"上海";
    c4.population = 6000;
    c4.allSubareas =@[@"黄浦",@"卢湾",@"静安",@"徐汇",@"长宁",@"虹口"];
    
    CitiesInfo *c5 = [[CitiesInfo alloc]init];
    c5.name = @"杭州";
    c5.population = 7000;
    c5.allSubareas =@[@"上城区",@"下城区",@"江干区",@"拱墅区",@"西湖",@"滨江区"];
    
    return @[c1,c2,c3,c4,c5];
    
}
@end
