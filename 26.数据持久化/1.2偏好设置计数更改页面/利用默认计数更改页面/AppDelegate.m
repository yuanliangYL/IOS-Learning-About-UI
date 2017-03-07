//
//  AppDelegate.m
//  利用默认计数更改页面
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    创建偏好设置实例
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    //    把原来存的取出来（第一次是为0）
    NSInteger runCount = [ud integerForKey:@"runCount"];
    //   运行次数先加上1并保存起来
    [ud setInteger:++runCount forKey:@"runCount"];
    
//    直接显示绿色页面
//   记住这种在同一个故事板创建控制器的模式
    if (runCount %2 == 0) {
//        熟悉这种通过window的rootViewcontroller来创建storyBoard的方法
        UIStoryboard *story = self.window.rootViewController.storyboard;
//      利用storyboard  通过storyboard ID 创建视图控制器secVC
        UIViewController *secVC = [story instantiateViewControllerWithIdentifier:@"secVC"];
        
        self.window.rootViewController = secVC;
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
