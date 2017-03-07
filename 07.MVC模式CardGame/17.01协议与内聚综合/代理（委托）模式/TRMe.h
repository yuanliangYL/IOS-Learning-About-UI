//
//  TRMe.h
//  代理（委托）模式
//
//  Created by YuanLiang on 5/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRFriend.h"
//创建我类：姓名，地址，喝酒方法
@interface TRMe : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *homeAddress;
@property(nonatomic,strong)TRFriend *myFriend;

-(void)drink;
@end
