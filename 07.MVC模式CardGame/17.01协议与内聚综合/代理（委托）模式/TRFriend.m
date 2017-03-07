//
//  TRFriend.m
//  代理（委托）模式
//
//  Created by YuanLiang on 5/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "TRFriend.h"
//#import "DrivingLicense.h"
#import "TRMe.h"
@interface TRFriend ()

@end

@implementation TRFriend

-(void)myFriend:(NSString *)fri drive:(TRMe *)me toDestination:(NSString *)destination{
    NSLog(@"朋友%@开车送%@回%@",fri,me.name,destination);
}

-(instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
@end
