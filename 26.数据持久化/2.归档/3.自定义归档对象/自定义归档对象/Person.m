//
//  Person.m
//  自定义归档对象
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "Person.h"

@implementation Person

//设置编码
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.location forKey:@"location"];
    [aCoder encodeInteger:self.age forKey:@"age"];
    
}

//设置解码
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name" ];
        self.location =[aDecoder decodeObjectForKey:@"location"];
        self.age = [aDecoder decodeIntegerForKey:@"age"];
    }
    return self;
}
//遵守NSCoding协议，实现编码和解码方法后，自定义的类满足归档的条件，就可以进行归档。

-(instancetype)initWithName:(NSString *)name andlocation:(NSString *)location andAge:(NSInteger)age{
    if (self = [super init]) {
        self.name = name;
        self.location = location;
        self.age = age;
    }
    return self;
}

+(id)personWithName:(NSString *)name andlocation:(NSString *)location andAge:(NSInteger)age{
    __autoreleasing Person *p = [[Person alloc]initWithName:name andlocation:location andAge:age];
    return p;
}
@end
