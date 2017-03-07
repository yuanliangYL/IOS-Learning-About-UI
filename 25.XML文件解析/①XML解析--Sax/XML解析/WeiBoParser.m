//
//  WeiBoParser.m
//  XML解析
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "WeiBoParser.h"

@implementation WeiBoParser
-(NSArray *)parserWeiboWithData:(NSData *)data{
//    创建空数组备用
    self.allWeibo = [NSMutableArray array];
  
//    创建iOS系统解析对象
    NSXMLParser *parser = [[NSXMLParser alloc]initWithData:data];
//    设置解析协议，设置解析的代理为当前类
    parser.delegate = self;
//    开始解析
    [parser parse];
    
    
    return self.allWeibo;
}


#pragma mark - NSXMLParserDelegate三个时间节点方法
//开始标签时执行该方法
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName attributes:(NSDictionary<NSString *, NSString *> *)attributeDict{
//    如果元素名为微博对象名，创建微博对象
    if ([elementName isEqualToString:@"weibo"]) {
        self.currentWeiBo = [WeiBo new];
        self.currentWeiBo.weiboID = attributeDict[@"weiboid"];
    }
}

//发现文本时执行
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
//    将解析到的文本赋值给属性
    self.string = string;
}


//结束标签时执行该方法
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName{
//    判断解析的元素名，并根据解析名得到对应的文本
    if ([elementName isEqualToString:@"name"]) {
        self.currentWeiBo.name = self.string;
    }
    else if ([elementName isEqualToString:@"text"]){
        self.currentWeiBo.text = self.string;
    }
    else if ([elementName isEqualToString:@"img"]){
        self.currentWeiBo.img = self.string;
    }
    else if ([elementName isEqualToString:@"time"]){
        self.currentWeiBo.time = self.string;
    }
    else if ([elementName isEqualToString:@"weibo"]){
        [self.allWeibo addObject:self.currentWeiBo];
    }
}


@end
