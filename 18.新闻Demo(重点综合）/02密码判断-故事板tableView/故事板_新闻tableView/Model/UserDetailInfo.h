//
//  UserDetailInfo.h
//  故事板_新闻tableView
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
//将单例获取对象设置为宏，方便调用
#define getUser [UserDetailInfo sharedUserDetailInfo];

@interface UserDetailInfo : NSObject
//设置用户对象的详细属性
@property(nonatomic,strong)NSString * userName;
@property(nonatomic,strong)NSString * userPwd;
@property(nonatomic,strong)NSString *userphone;
@property(nonatomic,strong)NSString *email;
@property(nonatomic,strong)NSString *nickName;

//用单例模式来获取对象信息shared
+(instancetype)sharedUserDetailInfo;
@end
