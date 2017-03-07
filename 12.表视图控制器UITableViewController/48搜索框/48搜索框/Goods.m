//
//  Goods.m
//  48搜索框
//
//  Created by YuanLiang on 5/10/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Goods.h"

@implementation Goods
+(NSArray *)demoData
{
    Goods *g1 = [[Goods alloc]init];
    g1.name = @"iphone6s";
    g1.type = GoodsTypeDive;
    
    Goods *g2 = [[Goods alloc]init];
    g2.name = @"iphone5s";
    g2.type = GoodsTypeDive;
    
    Goods *g3 = [[Goods alloc]init];
    g3.name = @"iphoneSE";
    g3.type = GoodsTypeDive;
    
    Goods *g4 = [[Goods alloc]init];
    g4.name = @"MacBook Pro";
    g4.type = GoodsTypeDive;
    
    Goods *g5 = [[Goods alloc]init];
    g5.name = @"OS X EI Captain";
    g5.type = GoodsTypeSoftWare;
    
    Goods *g6 = [[Goods alloc]init];
    g6.name = @"AirPort Time Capsule";
    g6.type = GoodsTypeOther;
    return @[g1,g2,g3,g4,g5,g6];
}
@end
