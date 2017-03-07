//
//  ContactS.m
//  4.归档综合（结合tableView）
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ContactS.h"

@implementation ContactS
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.name forKey:@"number"];
    
}
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        [aDecoder decodeObjectForKey:@"name"];
        [aDecoder decodeObjectForKey:@"number"];
    }
    
    return self;
}
@end
