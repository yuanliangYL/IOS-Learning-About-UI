//
//  ViewController.m
//  sandBox沙盒
//
//  Created by YuanLiang on 6/3/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSHomeDirectory动态获取路径：输出沙盒跟路径
    NSLog(@"%@",NSHomeDirectory());

    
/**********************************************************/
//方法①：通过沙箱根目录，拼接字符串得到document路径
    NSString *documentsPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];

//方法②：search搜索路径
//    domain:n. 领域；域名；产业；地产
//    directory:n.目录；工商名录；姓名地址录
    
    NSString *documentsPath2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"%@,%@",documentsPath,documentsPath2);
    
//把字符串保存到Documents下面的名为a的TXT文件中

    NSString *s = @"asdfg";
    [s writeToFile:[documentsPath stringByAppendingPathComponent:@"a.txt"] atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    
/**********************************************************/
//  获取缓存路径
    NSString *cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    NSLog(@"缓存路径%@",cachesPath);
    
    
/**********************************************************/
    
//userDefault所管理的plist文件 在 沙箱的Library/Preferences路径下面
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    [ud setObject:@"hahahah" forKey:@"heehhe"];
    
//    同步更新偏好设置
    [ud synchronize];

/**********************************************************/
    
//  获取临时文件夹路径
    NSString *tmpPath = NSTemporaryDirectory();
    NSLog(@"临时文件夹路径%@",tmpPath);

}

@end
