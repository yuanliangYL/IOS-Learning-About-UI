//
//  Goods.h
//  48搜索框
//
//  Created by YuanLiang on 5/10/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
//商品类：名称，类型
typedef NS_ENUM(NSInteger,GoodsType )
{
    GoodsTypeDive,  //default is 0
    GoodsTypeSoftWare,
    GoodsTypeOther,
};
@interface Goods : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)GoodsType type;

+(NSArray *)demoData;
@end
