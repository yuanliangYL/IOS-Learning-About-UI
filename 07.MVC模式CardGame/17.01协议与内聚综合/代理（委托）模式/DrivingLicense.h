//
//  DrivingLicense.h
//  代理（委托）模式
//
//  Created by YuanLiang on 5/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TRMe;
@protocol DrivingLicense <NSObject>
-(void)myFriend:(NSString *)fri drive:(TRMe *)me toDestination:(NSString *)destination;
@end
