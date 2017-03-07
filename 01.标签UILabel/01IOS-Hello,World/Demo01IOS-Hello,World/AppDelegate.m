//
//  AppDelegate.m
//  Demo01IOS-Hello,World
//
//  Created by YuanLiang on 16/4/9.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
//应用程序的各种有效状态，不需要调用，在合适的时候系统会自动调用
//应用程序声明周期方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
/*  _window与self.window的区别：_window是实例变量本身；self.window是通过setter、getter方法来赋值和获取_window，会使引用计数加1*/
    
    
// 1、创建显示界面的基础对象----window对象
    self.window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];//创建一个和当前屏幕一样大的窗口；
// 2、创建一个控制器实例
    UIViewController * vc = [[UIViewController alloc]init];
// 3、设置控制器自带的那个视图的背景色
    vc.view.backgroundColor = [UIColor yellowColor];
//    添加显示helloworld文字的视图
//    创建能够显示文字的标签对象
    UILabel * label = [[UILabel alloc]init];
//    设置要显示的文本信息
    label.text = @"Hello,IOS world!Hello,IOS world!Hello,IOS world!";
//    设置label的边框：边框用于决定这个标签在父式图坐标系的位置；
//    以及决定这个标签在父视图中占据多大空间
    label.frame = CGRectMake(100, 100, 200, 200);
//    (100,100)标签的做顶点在父视图中的位置
//   （width，height）宽高参数
//    4寸屏320*568
    label.lineBreakMode = NSLineBreakByTruncatingTail;
    /* NSLineBreakByWordWrapping = 0,// Wrap at word boundaries, default
     NSLineBreakByCharWrapping,		// Wrap at character boundaries
     NSLineBreakByClipping,		    // Simply clip
     NSLineBreakByTruncatingHead,	// Truncate at head of line: "...wxyz"
     NSLineBreakByTruncatingTail,	// Truncate at tail of line: "abcd..."
     NSLineBreakByTruncatingMiddle	// Truncate middle of line:  "ab...yz"*/
    [vc.view addSubview:label];
    
// 4、设置VC为window的根视图控制器
//    根：第一个控制器
//    window中加载了哪个控制器，window就会自动显示该控制器的那个view
    self.window.rootViewController = vc;
// 5、设置window显示
    [self.window makeKeyAndVisible];
   
    
    
    
    return YES;
}/*此方法代表应用程序启动后要做的事，并且在准备工作做完以后，由系统自动调用该方法；所以，设置程序运行后到底要显示哪个界面，显示什么界面的代码就写在这个方法中*/


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
