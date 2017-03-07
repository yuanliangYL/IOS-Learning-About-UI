//
//  WeiboParser.m
//  XML解析--Dom
//
//  Created by YuanLiang on 6/2/16.
//  Copyright © 2016 Tarena. All rights reserved.
//

#import "WeiboParser.h"
#import "TBXML.h"
#import "<#header#>"
@implementation WeiboParser
+(NSArray *)parserWeiboWithData:(NSData *)data{
    NSMutableArray *allWeibo = [NSMutableArray array];
//    创建TBXML解析对象
    TBXML * tbXML = [TBXML newTBXMLWithXMLData:data error:nil];
//    获取解析数据中的根元素
    TBXMLElement *weibosElement = tbXML.rootXMLElement;
//    获取要解析的第一个微博对像元素
    TBXMLElement *weiboEle = [TBXML childElementNamed:@"weibo" parentElement:weibosElement];
//    遍历每一个微博元素对象
    while (weiboEle) {
        
        
//     获取兄弟元素
        weiboEle = [TBXML nextSiblingNamed:@"weibo" searchFromElement:weibosElement];
    }
}
@end
