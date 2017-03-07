//
//  ViewController.m
//  XML解析
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "WeiBoParser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//获取文件路径，及类型
    NSString *path = [[NSBundle mainBundle]pathForResource:@"weibo" ofType:@"xml"];
//从路径中加载xml文件，转换成二进制储存到内存中
    NSData *data = [NSData dataWithContentsOfFile:path];
   
//    创建解析器实例
    WeiBoParser *parser  =[WeiBoParser new];
    
//开始解析 得到装着weibo对象的数组
    NSArray *weiBo = [parser parserWeiboWithData:data];
    NSLog(@"%@",weiBo);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
