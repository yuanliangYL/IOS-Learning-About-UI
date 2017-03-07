//
//  AppDelegate.m
//  53UITabbarController详解
//
//  Created by YuanLiang on 5/24/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "RedViewController.h"
#import "YellowViewController.h"
#import "GreenViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
//    UINavigationController *nrvc = [[UINavigationController alloc]initWithRootViewController:[[RedViewController alloc]init] ];
//    UINavigationController *nyvc = [[UINavigationController alloc]initWithRootViewController:[[YellowViewController alloc]init]];
    RedViewController *rvc = [[RedViewController alloc]init];
//    RedViewController *rvc = [[RedViewController alloc]initWithNibName:@"RedViewController" bundle:nil];
    YellowViewController *yvc = [[YellowViewController alloc]initWithNibName:@"YellowViewController" bundle:nil];
    GreenViewController *gvc = [[GreenViewController alloc]initWithNibName:@"GreenViewController" bundle:nil];
    
    tabBarController.viewControllers = @[rvc,yvc,gvc];
    
    
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.rootViewController = tabBarController ;
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
