//
//  main.m
//  Demo01IOS-Hello,World
//
//  Created by YuanLiang on 16/4/9.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//AppDelegate应用程序代理类
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
//main函数中的UIApplicationMain做了三件事：
//一、根据第三个参数创建了应用程序对象（写nil,创建的是UIApplication类型的实例）
//二、根据第四个参数创建了应用程序代理类??????
//三、启动事件循环




//[AppDelegate class]是访问appDelegate这个类的类型秒数信息（类名，属性，方法）
//NSStringFromClass以字符串的形式把这个类的类名返回