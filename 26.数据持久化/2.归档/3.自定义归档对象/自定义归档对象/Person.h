//
//  Person.h
//  自定义归档对象
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>
@property(nonatomic,strong)NSString * name;
@property(nonatomic,strong)NSString * location;
@property(nonatomic,assign)NSInteger age;
-(instancetype)initWithName:(NSString *)name andlocation:(NSString *)location andAge:(NSInteger)age;
+(id)personWithName:(NSString *)name andlocation:(NSString *)location andAge:(NSInteger)age;
@end
