//
//  main.m
//  代理（委托）模式
//
//  Created by YuanLiang on 5/12/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRMe.h"
#import "TRFriend.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRMe *me = [[TRMe alloc]init];
        TRFriend *fri = [[TRFriend alloc]initWithName:@"lisi"];
        me.myFriend = fri;
        [me drink];
    
    }
    return 0;
}
