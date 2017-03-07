//
//  ContactS.h
//  4.归档综合（结合tableView）
//
//  Created by YuanLiang on 6/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactS : NSObject<NSCoding>
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)NSInteger number;
@end
