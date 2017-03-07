//
//  TRFriend.h
//  代理（委托）模式
//
//  Created by YuanLiang on 5/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrivingLicense.h"
@class TRMe;

@interface TRFriend : NSObject<DrivingLicense>
@property(nonatomic,copy)NSString *name;

-(instancetype)initWithName:(NSString *)name;
@end
