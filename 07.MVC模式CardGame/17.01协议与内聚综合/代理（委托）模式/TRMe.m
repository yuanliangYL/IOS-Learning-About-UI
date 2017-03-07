//
//  TRMe.m
//  代理（委托）模式
//
//  Created by YuanLiang on 5/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "TRMe.h"
#import "TRFriend.h"
@implementation TRMe
-(instancetype)init
{//if判断是确保在父类初始化成功的基础上，在初始化子类的内容，如果父类初始化失败，子类也不用进行初始化，直接返回nil,表示创建对象失败
    if (self = [super init]) {
//  初始化子类的内容
        self.name = @"Jessica";
        self.homeAddress = @"NewYork City";
    }
    return self;
}

-(void)drink
{
    NSString *destination = @"合肥";
    [self.myFriend myFriend:self.myFriend.name drive:self toDestination:destination];
}
@end
