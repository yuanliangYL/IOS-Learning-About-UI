//
//  UserDetailInfo.m
//  故事板_新闻tableView
//
//  Created by YuanLiang on 5/26/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "UserDetailInfo.h"


@implementation UserDetailInfo
//懒汉模式下的单例模式，在多线程是会不安全（会出现非单例状况）
//恶汉模式（浪费内存）    懒汉模式（多线程不安全，解决: 使用 GCD 多线程技术，来写单利）
+(instancetype)sharedUserDetailInfo{
    static UserDetailInfo *userDetailInfo = nil;
    if (userDetailInfo == nil) {
        userDetailInfo = [[UserDetailInfo alloc]init];
    }
    
    return userDetailInfo;
}
//NSUserDefaults存储几个比较简单的数据 ，真正大的数据存储要使用数据库
-(void)saveData{
//    将当用户的实例的所有数据保存到沙盒中:
//    用户数据存储类：NSUserDefaults
//    工厂方法，方法名前面出现shared、default、standard这些单词，百分之98以上是单例模式的类
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];//程序启动该对象即被创建，程序结束即被销毁（在要应用程序不被卸载，沙盒内存储的数据不会被删除）
    [defaults setObject:self.userName forKey:@"userName"];
    [defaults setObject:self.userPwd forKey:@"userPwd"];
    [defaults setObject:self.userphone forKey:@"userphone"];
    [defaults setObject:self.email forKey:@"email"];
    [defaults setObject:self.nickName forKey:@"nickName"];
//     上面的代码并不是真正将数据存储在沙盒中，而是将数据存储到 NSUserDefaults的实例中，如果不做任何处理，那么程序结束， NSUserDefaults对象就会被销毁，它里面保存的数据也会丢失，所以我们需要把 NSUserDefaults对象的保存数据同步到沙盒中
    [defaults synchronize];
}

-(void)loadData{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
   self.userName = [defaults objectForKey:@"userName"];
    self.userPwd = [defaults objectForKey:@"userPwd"];
    self.userphone =[defaults objectForKey:@"userphone" ];
    self.email =[defaults objectForKey:@"email"];
    self.nickName =[defaults objectForKey:@"nickName"];
    
}
@end
