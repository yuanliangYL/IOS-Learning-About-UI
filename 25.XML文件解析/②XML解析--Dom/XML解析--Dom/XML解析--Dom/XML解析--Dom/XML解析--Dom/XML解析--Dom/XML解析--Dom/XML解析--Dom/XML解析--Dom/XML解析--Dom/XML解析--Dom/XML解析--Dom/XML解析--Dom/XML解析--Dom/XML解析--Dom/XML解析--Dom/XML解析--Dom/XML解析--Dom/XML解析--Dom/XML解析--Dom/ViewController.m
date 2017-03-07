//
//  ViewController.m
//  XML解析--Dom
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//1.Sax解析：系统提供的解析方式，逐行解析，节省资源
//2.Dom解析：三方框架实现，把数据加载到内存中在内存中构建树状结构进行解析，操作简单，但是如果解析文件大的话 占内存

#import "ViewController.h"
#import "WeiboParser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle]pathForResource:@"books" ofType:@"xml"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *weibos = [WeiboParser parserWeiboWithData:data];
    NSLog(@"%@",weibos);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
