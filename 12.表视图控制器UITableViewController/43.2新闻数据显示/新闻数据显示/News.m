//
//  News.m
//  新闻数据显示
//
//  Created by YuanLiang on 5/23/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "News.h"

@implementation News

//数据解析重点理解一番
+(NSArray *)allNews{
//声明一个可变数组来接收解析的新闻数据
    NSMutableArray *array = [NSMutableArray array];
//    获取plist在APP中（沙盒）路径：以[NSBundle mainBundle]当前APP的主文件为起点获取plist文件路径
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"news" ofType:@"plist"];
//  从plist文件中吧root数组接收过来（从文件中读取字典）
    NSArray *plistArray = [NSArray arrayWithContentsOfFile:filePath];
//   数组中存的是一个个item字典，而每个字典中都是一个个数据对象的属性
    for (NSDictionary *dic in plistArray) {
        News *news = [[News alloc]init];
        
//        news.title = dic[@"title"];//通过key查找value
//        news.newsImage = dic[@"newsImage"];
//        news.commentCount = [dic[@"commentCount"] integerValue];
        
        
//        KVC用字典中的Value给对象的属性赋值， 要求字典中的key和对象中的属性名必须一致
        [news setValuesForKeysWithDictionary:dic];
        [array addObject:news];
    }
    return array;
}
@end
