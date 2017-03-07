//
//  ViewController.m
//  Bundle练习
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

//    得到文件路径
    NSString *iamgePath = [[NSBundle mainBundle]pathForResource:@"0" ofType:@"jpg"];
//   把文件数据加载进来
    NSData *data = [NSData dataWithContentsOfFile:iamgePath];
//    准备新路径
    NSString *newImagePath =[NSHomeDirectory() stringByAppendingPathComponent:@"Documents/0.jpg"];
//    注意这里的保存格式
      NSLog(@"%@",newImagePath);
//    保存到新路径
    [data writeToFile:newImagePath atomically:YES];
    
    
    
//将文件存到沙箱的临时文件夹中
//    得到文本在bundle中的路径
    NSString *textPath= [[NSBundle mainBundle]pathForResource:@"hehe" ofType:@"txt"];
    NSLog(@"%@",textPath);
    
//    把文本路径加载到内存中
    NSString *textString = [NSString stringWithContentsOfFile:textPath encoding:NSUTF8StringEncoding error:nil];
    
//    准备新路径
    NSString *newTextPath = [NSHomeDirectory() stringByAppendingPathComponent:@"tmp/hehe.txt"];
    NSLog(@"%@",newTextPath);
    
//    保存到沙箱中的新路径中
    [textString writeToFile:newTextPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
//
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
