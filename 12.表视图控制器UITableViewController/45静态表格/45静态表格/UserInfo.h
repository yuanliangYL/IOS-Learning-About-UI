//
//  UserInfo.h
//  45静态表格
//
//  Created by YuanLiang on 5/7/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject
@property(nonatomic,copy)NSString *weChat;
@property(nonatomic,copy)NSString *QQ;
@property(nonatomic,assign)NSInteger phoneNumber;
@property(nonatomic,copy)NSString *email;
@property(nonatomic,getter=isProtecedAccount)BOOL protectAccount;
@end
