//
//  AppDelegate.m
//  UITableBarController选项卡
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//如何管理多个控制器：①TabBarController控制器的viewControllers属性
//                ②addchildViewController方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    创建tabbarController实例
    UITabBarController *tbc = [[UITabBarController alloc]init];
//   创建viewController
    UIViewController *vc1= [[UIViewController alloc]init];
    vc1.view.backgroundColor = [UIColor redColor];
    vc1.tabBarItem.title = @"聊天";
//    默认状态图片
    vc1.tabBarItem.image = [[UIImage imageNamed:@"line_chat"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    选中状态图标
    vc1.tabBarItem.selectedImage = [[UIImage imageNamed:@"full_chat"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

//    设置徽章值
    vc1.tabBarItem.badgeValue = @"10";
    
    UIViewController *vc2 = [[UIViewController alloc]init];
    vc2.view.backgroundColor = [UIColor greenColor];
     vc2.tabBarItem.title = @"通讯录";
//     vc2.tabBarItem.image = [UIImage imageNamed:@"friend"];
    
    UIViewController *vc3 = [[UIViewController alloc]init];
    vc3.view.backgroundColor = [UIColor yellowColor];
     vc3.tabBarItem.title = @"设置";
//     vc3.tabBarItem.image = [UIImage imageNamed:@"setting"];
//    将3个VC交给TabBarController进行管理
//    tbc.viewControllers = @[vc1,vc2,vc3];
    
    [tbc addChildViewController:vc1];
    [tbc addChildViewController:vc2];
    [tbc addChildViewController:vc3];
    
    
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.rootViewController = tbc;
    [self.window makeKeyAndVisible];
    
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
